#!/usr/bin/env python3
"""
Search for David Whittaker music format signatures in ADF files.

This searches for characteristic 68000 opcodes and patterns that indicate
DW music player code, rather than looking for the exact byte sequence.
"""

import sys
from pathlib import Path

def read_file(path):
    """Read a file and return its bytes."""
    with open(path, 'rb') as f:
        return f.read()

def find_all_occurrences(data, pattern):
    """Find all occurrences of a byte pattern."""
    positions = []
    pos = 0
    while True:
        pos = data.find(pattern, pos)
        if pos == -1:
            break
        positions.append(pos)
        pos += 1
    return positions

def search_dw_signatures(data, filename):
    """Search for David Whittaker format signatures."""
    
    print(f"\nSearching {filename}...")
    print(f"  File size: {len(data):,} bytes")
    
    results = {}
    
    # Signature 1: DW player entry pattern (common in many DW tunes)
    # 48E7 F1FE = MOVEM.L D0-D7/A0-A2/A4-A6,-(A7)
    sig1 = bytes.fromhex('48E7F1FE')
    matches1 = find_all_occurrences(data, sig1)
    if matches1:
        results['MOVEM.L pattern (48E7F1FE)'] = matches1
        print(f"  ✓ Found {len(matches1)} MOVEM.L D0-D7/A0-A2/A4-A6 pattern(s)")
        for pos in matches1[:5]:  # Show first 5
            context = data[pos:pos+16].hex(' ')
            print(f"    0x{pos:08x}: {context}")
        if len(matches1) > 5:
            print(f"    ... and {len(matches1)-5} more")
    
    # Signature 2: Common DW init pattern
    # 48E7 followed by 61 00 (BSR.W)
    sig2 = bytes.fromhex('48E76100')
    matches2 = find_all_occurrences(data, sig2)
    if matches2:
        results['MOVEM+BSR pattern (48E76100)'] = matches2
        print(f"  ✓ Found {len(matches2)} MOVEM + BSR.W pattern(s)")
        for pos in matches2[:5]:
            context = data[pos:pos+16].hex(' ')
            print(f"    0x{pos:08x}: {context}")
        if len(matches2) > 5:
            print(f"    ... and {len(matches2)-5} more")
    
    # Signature 3: NOP instructions (4E71) - DW tunes often end with NOPs
    sig3 = bytes.fromhex('4E71')
    matches3 = find_all_occurrences(data, sig3)
    if matches3:
        print(f"  ✓ Found {len(matches3)} NOP instruction(s) (potential end markers)")
        # Don't list all NOPs, too many
    
    # Signature 4: RTS instruction (4E75) - function returns
    sig4 = bytes.fromhex('4E75')
    matches4 = find_all_occurrences(data, sig4)
    if matches4:
        print(f"  ✓ Found {len(matches4)} RTS instruction(s)")
    
    # Signature 5: Common DW waveform pattern
    # ...3f3fc0c0... (square waveforms frequently used)
    sig5 = bytes.fromhex('3F3FC0C0')
    matches5 = find_all_occurrences(data, sig5)
    if matches5:
        results['Square waveform pattern (3F3FC0C0)'] = matches5
        print(f"  ✓ Found {len(matches5)} square waveform pattern(s)")
        for pos in matches5[:5]:
            context = data[pos:pos+16].hex(' ')
            print(f"    0x{pos:08x}: {context}")
    
    # Signature 6: Paula audio register writes (DFF0xx)
    # Look for LEA $DFFxxx patterns (41FA or similar)
    sig6 = bytes.fromhex('00DFF0')
    matches6 = find_all_occurrences(data, sig6)
    if matches6:
        results['Paula register reference ($DFF0xx)'] = matches6
        print(f"  ✓ Found {len(matches6)} Paula audio register reference(s)")
        for pos in matches6[:5]:
            context = data[pos-2:pos+14].hex(' ')
            print(f"    0x{pos:08x}: {context}")
        if len(matches6) > 5:
            print(f"    ... and {len(matches6)-5} more")
    
    # Signature 7: Search for 8-bit PCM sample data patterns
    # Look for regions with good 8-bit audio characteristics
    # (Values centered around 0x00/0x80, reasonable variance)
    sample_regions = []
    chunk_size = 1024
    for i in range(0, len(data) - chunk_size, chunk_size):
        chunk = data[i:i+chunk_size]
        # Check if this looks like 8-bit PCM
        # Good audio data has values distributed across the range
        # and reasonable variance
        if len(set(chunk)) > 100:  # At least 100 different byte values
            # Calculate simple variance approximation
            mean = sum(chunk) / len(chunk)
            if 50 < mean < 200:  # Reasonable center point
                sample_regions.append(i)
    
    if sample_regions:
        print(f"  ✓ Found {len(sample_regions)} potential PCM sample region(s)")
        for pos in sample_regions[:5]:
            print(f"    0x{pos:08x}: {len(sample_regions)} byte region with audio-like characteristics")
        if len(sample_regions) > 5:
            print(f"    ... and {len(sample_regions)-5} more")
    
    return results

def main():
    script_dir = Path(__file__).parent
    repo_dir = script_dir.parent
    adf_dir = repo_dir / "extracted"
    
    if not adf_dir.exists():
        print(f"Error: ADF directory not found: {adf_dir}")
        return 1
    
    print("=" * 80)
    print("DAVID WHITTAKER FORMAT SIGNATURE SEARCH")
    print("=" * 80)
    print("\nSearching for characteristic 68000 opcodes and DW format patterns...")
    
    adf_files = sorted(adf_dir.glob("*.adf"))
    
    if not adf_files:
        print(f"\nNo ADF files found in {adf_dir}")
        return 1
    
    all_results = {}
    for adf_file in adf_files:
        data = read_file(adf_file)
        results = search_dw_signatures(data, adf_file.name)
        if results:
            all_results[adf_file.name] = results
    
    # Summary
    print("\n" + "=" * 80)
    print("SUMMARY")
    print("=" * 80)
    
    if all_results:
        print("\n✓ DW-like signatures found. These could indicate:")
        print("  1. The music player code is present (possibly in a different form)")
        print("  2. Game code containing similar 68000 patterns")
        print("  3. Modified/packed music data")
        print("\nNext steps:")
        print("  - Extract regions around MOVEM+BSR patterns")
        print("  - Analyze the context of Paula register accesses")
        print("  - Try using Exotic Ripper on these files in WinUAE")
    else:
        print("\n✗ No characteristic DW signatures found.")
        print("\nThis suggests:")
        print("  - The cracked version may not include original music")
        print("  - Music might be in a completely different format")
        print("  - Need to obtain original uncracked ADF files")
    
    print("\n" + "=" * 80)
    
    return 0

if __name__ == "__main__":
    sys.exit(main())
