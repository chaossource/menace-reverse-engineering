#!/usr/bin/env python3
"""
Search for the David Whittaker music module in Menace ADF files.

This script searches for the known good menace.dw file (34,566 bytes)
within the ADF disk images to locate where the music is stored.
"""

import sys
import os
from pathlib import Path

def read_file(path):
    """Read a file and return its bytes."""
    with open(path, 'rb') as f:
        return f.read()

def search_pattern(haystack, needle, filename):
    """
    Search for needle bytes in haystack.
    Returns list of (offset, description) tuples.
    """
    results = []
    needle_len = len(needle)
    
    print(f"\nSearching {filename}...")
    print(f"  Haystack size: {len(haystack):,} bytes")
    print(f"  Needle size: {needle_len:,} bytes")
    
    # Search for the complete sequence
    offset = 0
    while True:
        pos = haystack.find(needle, offset)
        if pos == -1:
            break
        
        results.append((pos, "Complete music module found"))
        print(f"  ✓ FOUND at offset 0x{pos:08x} ({pos:,} bytes)")
        offset = pos + 1
    
    # If not found, search for the first 1KB as a signature
    if not results:
        print(f"  Complete module not found. Searching for signature (first 1024 bytes)...")
        signature = needle[:1024]
        offset = 0
        while True:
            pos = haystack.find(signature, offset)
            if pos == -1:
                break
            
            # Check if we have enough bytes remaining
            remaining = len(haystack) - pos
            if remaining >= needle_len:
                # Check if the full module matches
                if haystack[pos:pos+needle_len] == needle:
                    results.append((pos, "Complete module found (via signature)"))
                    print(f"  ✓ FOUND (full match) at offset 0x{pos:08x} ({pos:,} bytes)")
                else:
                    results.append((pos, "Signature match only (partial)"))
                    print(f"  ⚠ Partial match at offset 0x{pos:08x} ({pos:,} bytes) - {remaining:,} bytes remaining")
            else:
                results.append((pos, f"Signature match only ({remaining} bytes remaining)"))
                print(f"  ⚠ Signature at offset 0x{pos:08x} ({pos:,} bytes) - only {remaining:,} bytes remaining")
            
            offset = pos + 1
    
    # Also search for the first 256 bytes (stronger signature)
    if not results:
        print(f"  No signature matches. Searching for first 256 bytes...")
        mini_sig = needle[:256]
        offset = 0
        while True:
            pos = haystack.find(mini_sig, offset)
            if pos == -1:
                break
            
            results.append((pos, "Weak signature match (first 256 bytes)"))
            print(f"  ⚠ Weak match at offset 0x{pos:08x} ({pos:,} bytes)")
            offset = pos + 1
    
    if not results:
        print(f"  ✗ NOT FOUND")
    
    return results

def main():
    # Paths
    script_dir = Path(__file__).parent
    repo_dir = script_dir.parent
    music_file = repo_dir / "music" / "menace.dw"
    adf_dir = repo_dir / "extracted"
    
    if not music_file.exists():
        print(f"Error: Reference music file not found: {music_file}")
        return 1
    
    if not adf_dir.exists():
        print(f"Error: ADF directory not found: {adf_dir}")
        return 1
    
    # Read the reference music module
    print("=" * 80)
    print("DAVID WHITTAKER MUSIC MODULE SEARCH")
    print("=" * 80)
    print(f"\nReference file: {music_file}")
    
    needle = read_file(music_file)
    print(f"Module size: {len(needle):,} bytes (0x{len(needle):x})")
    print(f"First 16 bytes: {needle[:16].hex(' ')}")
    print(f"Last 16 bytes: {needle[-16:].hex(' ')}")
    
    # Find all ADF files
    adf_files = sorted(adf_dir.glob("*.adf"))
    
    if not adf_files:
        print(f"\nNo ADF files found in {adf_dir}")
        return 1
    
    print(f"\nFound {len(adf_files)} ADF file(s) to search:")
    for adf in adf_files:
        print(f"  - {adf.name}")
    
    # Search each ADF
    all_results = {}
    for adf_file in adf_files:
        haystack = read_file(adf_file)
        results = search_pattern(haystack, needle, adf_file.name)
        if results:
            all_results[adf_file.name] = results
    
    # Summary
    print("\n" + "=" * 80)
    print("SUMMARY")
    print("=" * 80)
    
    if all_results:
        print(f"\n✓ Music module found in {len(all_results)} file(s):\n")
        for filename, results in all_results.items():
            print(f"  {filename}:")
            for offset, desc in results:
                print(f"    - 0x{offset:08x} ({offset:,} bytes) - {desc}")
    else:
        print("\n✗ Music module not found in any ADF files.")
        print("\nThis could mean:")
        print("  1. The music is compressed/packed differently in the game")
        print("  2. The music is stored across multiple sectors/tracks")
        print("  3. The game uses a modified or embedded version")
        print("  4. The ADF files are different versions than the Modland rip")
    
    print("\n" + "=" * 80)
    
    return 0 if all_results else 1

if __name__ == "__main__":
    sys.exit(main())
