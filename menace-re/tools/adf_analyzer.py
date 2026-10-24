#!/usr/bin/env python3
"""
ADF Analyzer for Menace
Analyzes the structure of Amiga ADF disk images
"""

import struct
import sys
from pathlib import Path

def read_bootblock(data):
    """Analyze the bootblock (first 1024 bytes)"""
    print("=" * 60)
    print("BOOTBLOCK ANALYSIS (Sector 0-1)")
    print("=" * 60)
    
    # First 4 bytes should be disk type
    disk_type = data[0:4]
    print(f"Disk Type: {disk_type.hex()} ({disk_type})")
    
    # Checksum at offset 4
    checksum = struct.unpack('>I', data[4:8])[0]
    print(f"Checksum: 0x{checksum:08x}")
    
    # Root block location at offset 8
    rootblock = struct.unpack('>I', data[8:12])[0]
    print(f"Root Block: {rootblock}")
    
    # Look for executable code
    print("\nFirst 256 bytes (hex):")
    for i in range(0, 256, 16):
        hex_str = ' '.join(f'{b:02x}' for b in data[i:i+16])
        ascii_str = ''.join(chr(b) if 32 <= b < 127 else '.' for b in data[i:i+16])
        print(f"{i:04x}: {hex_str:48s} {ascii_str}")
    
    # Check for 68000 instructions
    print("\nPossible 68000 code patterns:")
    check_68k_code(data[0:512])
    
    return data[0:1024]

def check_68k_code(data):
    """Look for common 68000 instruction patterns"""
    patterns = {
        b'\x4e\xf9': 'JMP (absolute)',
        b'\x4e\xba': 'JSR (PC relative)',
        b'\x4e\x75': 'RTS',
        b'\x4e\xae': 'JSR (An indirect)',
        b'\x60': 'BRA',
        b'\x67': 'BEQ',
        b'\x6e': 'BGT',
        b'\x6f': 'BLE',
        b'\x20': 'MOVE.L',
        b'\x30': 'MOVE.W',
        b'\x10': 'MOVE.B',
    }
    
    found = []
    for i in range(len(data) - 2):
        for pattern, desc in patterns.items():
            if data[i:i+len(pattern)] == pattern:
                found.append((i, desc, data[i:i+4].hex()))
    
    if found:
        for offset, desc, hex_val in found[:10]:  # Show first 10
            print(f"  0x{offset:04x}: {desc:20s} [{hex_val}]")
    else:
        print("  No obvious 68000 patterns found")

def analyze_sectors(data, adf_size=901120):
    """Analyze sector usage"""
    print("\n" + "=" * 60)
    print("SECTOR ANALYSIS")
    print("=" * 60)
    
    sector_size = 512
    num_sectors = adf_size // sector_size
    print(f"Total sectors: {num_sectors} (880 KB / {sector_size} bytes per sector)")
    print(f"Standard Amiga floppy: 80 tracks × 11 sectors × 2 sides = {80*11*2} sectors")
    
    # Look for patterns in different sectors
    print("\nChecking various sectors for data patterns...")
    
    interesting_sectors = [0, 1, 2, 10, 20, 100, 500, 1000, 1500]
    for sector_num in interesting_sectors:
        if sector_num >= num_sectors:
            continue
        offset = sector_num * sector_size
        sector_data = data[offset:offset+sector_size]
        
        # Check if mostly zeros
        zero_count = sector_data.count(0)
        if zero_count < 100:  # Less than 100 zeros = likely has data
            non_zero = 512 - zero_count
            print(f"  Sector {sector_num:4d} @ 0x{offset:06x}: {non_zero:3d}/512 non-zero bytes")
            
            # Show first 32 bytes
            hex_preview = ' '.join(f'{b:02x}' for b in sector_data[0:32])
            print(f"               {hex_preview}")

def find_graphics_data(data):
    """Look for potential graphics data (planar bitmap patterns)"""
    print("\n" + "=" * 60)
    print("GRAPHICS DATA SEARCH")
    print("=" * 60)
    
    # Amiga graphics are typically planar (bitplanes)
    # Look for repeating patterns that suggest graphics
    
    chunk_size = 8192  # 8KB chunks
    for i in range(0, len(data) - chunk_size, chunk_size):
        chunk = data[i:i+chunk_size]
        
        # Check variance (graphics usually have medium variance)
        unique_bytes = len(set(chunk))
        zero_count = chunk.count(0)
        ff_count = chunk.count(0xff)
        
        # Graphics typically have decent variety but not too much
        if 50 < unique_bytes < 250 and zero_count < chunk_size * 0.9:
            entropy = unique_bytes / 256.0
            print(f"Possible graphics @ 0x{i:06x}-0x{(i+chunk_size):06x}: "
                  f"{unique_bytes} unique bytes, entropy: {entropy:.2f}")

def find_text_strings(data):
    """Extract ASCII strings from the disk"""
    print("\n" + "=" * 60)
    print("TEXT STRINGS")
    print("=" * 60)
    
    strings = []
    current_string = []
    min_length = 4
    
    for i, byte in enumerate(data):
        if 32 <= byte < 127:  # Printable ASCII
            current_string.append((i, chr(byte)))
        else:
            if len(current_string) >= min_length:
                offset = current_string[0][0]
                text = ''.join(c for _, c in current_string)
                strings.append((offset, text))
            current_string = []
    
    # Show interesting strings
    print(f"\nFound {len(strings)} strings (min length {min_length}):")
    for offset, text in strings[:50]:  # Show first 50
        if len(text) > 3:  # Only show decent length
            print(f"  0x{offset:06x}: {text[:60]}")

def compare_versions(files):
    """Compare multiple ADF versions"""
    print("\n" + "=" * 60)
    print("VERSION COMPARISON")
    print("=" * 60)
    
    if len(files) < 2:
        print("Only one file provided, skipping comparison")
        return
    
    data_list = []
    for f in files:
        with open(f, 'rb') as fp:
            data_list.append(fp.read())
    
    print(f"Comparing {len(data_list)} versions...")
    
    # Compare sizes
    for i, (f, data) in enumerate(zip(files, data_list)):
        print(f"  {Path(f).name}: {len(data)} bytes")
    
    # Find differences
    if len(set(len(d) for d in data_list)) == 1:
        # Same size, compare bytes
        diff_count = 0
        for i in range(len(data_list[0])):
            bytes_at_pos = [d[i] for d in data_list]
            if len(set(bytes_at_pos)) > 1:
                diff_count += 1
        
        print(f"\nBytes that differ: {diff_count} / {len(data_list[0])} ({diff_count*100/len(data_list[0]):.2f}%)")

def main():
    if len(sys.argv) < 2:
        print("Usage: adf_analyzer.py <adf_file> [additional_adf_files...]")
        sys.exit(1)
    
    adf_file = sys.argv[1]
    
    print(f"\nAnalyzing: {Path(adf_file).name}")
    print(f"Size: {Path(adf_file).stat().st_size} bytes")
    
    with open(adf_file, 'rb') as f:
        data = f.read()
    
    # Analyze bootblock
    bootblock = read_bootblock(data)
    
    # Analyze sectors
    analyze_sectors(data)
    
    # Look for graphics
    find_graphics_data(data)
    
    # Find strings
    find_text_strings(data)
    
    # Compare versions if multiple files provided
    if len(sys.argv) > 2:
        compare_versions(sys.argv[1:])
    
    print("\n" + "=" * 60)
    print("Analysis complete!")
    print("=" * 60)

if __name__ == '__main__':
    main()
