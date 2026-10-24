#!/usr/bin/env python3
"""
Extract audio samples from Menace ADF
Paula chip uses 8-bit signed PCM samples
"""

import sys
import struct
import wave
from pathlib import Path
import numpy as np

def detect_audio_sample(data, min_length=100, max_length=50000):
    """
    Heuristic to detect if data looks like audio
    Audio samples typically have:
    - Reasonable length
    - Centered around 0 (8-bit signed)
    - Smooth waveform (not too spiky)
    """
    if len(data) < min_length or len(data) > max_length:
        return False
    
    # Convert to signed 8-bit
    samples = np.array([struct.unpack('b', bytes([b]))[0] for b in data[:min(1000, len(data))]])
    
    # Check mean (should be near 0 for audio)
    mean = np.mean(samples)
    if abs(mean) > 50:
        return False
    
    # Check variance (should have some dynamics)
    variance = np.var(samples)
    if variance < 100 or variance > 10000:
        return False
    
    # Check for smooth transitions (audio shouldn't jump wildly)
    diffs = np.abs(np.diff(samples))
    if np.mean(diffs) > 80:
        return False
    
    # Check for some zero-crossings (audio oscillates)
    zero_crossings = np.sum(np.diff(np.sign(samples)) != 0)
    if zero_crossings < len(samples) * 0.1:
        return False
    
    return True

def extract_sample(data, offset, length, sample_rate=8000):
    """Extract a single audio sample and convert to WAV"""
    sample_data = data[offset:offset + length]
    
    # Convert unsigned 8-bit to signed
    signed_samples = []
    for byte in sample_data:
        signed = byte if byte < 128 else byte - 256
        signed_samples.append(signed)
    
    return np.array(signed_samples, dtype=np.int8)

def save_wav(samples, filename, sample_rate=8000):
    """Save samples as WAV file"""
    # Convert to 16-bit for WAV
    samples_16 = (samples.astype(np.int16) * 256)
    
    with wave.open(str(filename), 'wb') as wav:
        wav.setnchannels(1)  # Mono
        wav.setsampwidth(2)  # 16-bit
        wav.setframerate(sample_rate)
        wav.writeframes(samples_16.tobytes())

def scan_for_audio(adf_file, output_dir, sample_rates=[8000, 11025, 16000]):
    """Scan ADF for audio samples"""
    with open(adf_file, 'rb') as f:
        data = f.read()
    
    output_dir = Path(output_dir)
    output_dir.mkdir(exist_ok=True)
    
    print(f"Scanning {adf_file.name} for audio samples...")
    print("=" * 60)
    
    found_count = 0
    checked = 0
    
    # Scan at various offsets
    scan_step = 256  # Scan every 256 bytes
    min_sample_len = 200
    max_sample_len = 50000
    
    print(f"Searching for samples between {min_sample_len} and {max_sample_len} bytes...")
    print(f"Testing sample rates: {sample_rates} Hz")
    print()
    
    # Look for runs of data that might be audio
    for offset in range(0, len(data) - min_sample_len, scan_step):
        checked += 1
        if checked % 2000 == 0:
            print(f"  Scanned: {offset:08x} / {len(data):08x} ({offset*100//len(data)}%)", end='\r')
        
        # Try different sample lengths
        for sample_len in [500, 1000, 2000, 5000, 10000, 20000]:
            if offset + sample_len > len(data):
                continue
            
            chunk = data[offset:offset + sample_len]
            
            if detect_audio_sample(chunk):
                # Extract with default sample rate
                samples = extract_sample(data, offset, sample_len, sample_rates[0])
                
                # Save
                filename = f"audio_{offset:06x}_{sample_len}_{sample_rates[0]}hz.wav"
                save_wav(samples, output_dir / filename, sample_rates[0])
                
                found_count += 1
                if found_count <= 20:
                    print(f"\n  ✓ Found sample @ 0x{offset:06x}, {sample_len} bytes -> {filename}")
                
                # Skip ahead to avoid finding the same sample multiple times
                break
        
        if found_count >= 100:
            print(f"\n  (Stopping at 100 samples to avoid too many false positives)")
            break
    
    print("\n" + "=" * 60)
    print(f"Extracted {found_count} potential audio samples to {output_dir}/")
    
    if found_count > 0:
        print("\nNOTE: Many of these may be false positives (data that looks like audio)")
        print("Listen to them to identify real sound effects:")
        print(f"  cd {output_dir}/")
        print(f"  for f in *.wav; do echo $f; play $f 2>/dev/null; done")
    
    return found_count

def extract_module_tracker_music(adf_file, output_dir):
    """
    Try to find ProTracker/SoundTracker modules
    Amiga MOD files have specific signatures
    """
    with open(adf_file, 'rb') as f:
        data = f.read()
    
    # ProTracker signatures
    signatures = [
        b'M.K.',  # ProTracker 4 channel
        b'M!K!',  # ProTracker 4 channel
        b'FLT4',  # StarTrekker 4 channel
        b'4CHN',  # FastTracker 4 channel
        b'6CHN',  # FastTracker 6 channel
        b'8CHN',  # FastTracker 8 channel
    ]
    
    print("\nScanning for ProTracker/MOD music modules...")
    
    found = 0
    for offset in range(len(data) - 4):
        for sig in signatures:
            # MOD signature is at offset 1080
            if offset >= 1080 and data[offset-1080:offset-1080+4] == sig:
                print(f"  ✓ Found MOD signature '{sig.decode()}' @ 0x{offset-1080:06x}")
                
                # MOD files are typically 100KB - 500KB
                # Extract a chunk (we'd need to parse the header for exact size)
                mod_size = min(500000, len(data) - (offset - 1080))
                mod_data = data[offset-1080:offset-1080+mod_size]
                
                filename = f"music_{offset-1080:06x}_{sig.decode().strip()}.mod"
                output_path = Path(output_dir) / filename
                with open(output_path, 'wb') as f:
                    f.write(mod_data)
                
                found += 1
    
    if found:
        print(f"  Extracted {found} MOD file(s)")
        print("  Use OpenMPT or MilkyTracker to play them")
    else:
        print("  No MOD modules found")

def main():
    if len(sys.argv) < 2:
        print("Usage: extract_audio.py <adf_file> [output_dir]")
        sys.exit(1)
    
    adf_file = Path(sys.argv[1])
    output_dir = Path(sys.argv[2]) if len(sys.argv) > 2 else Path('audio')
    
    if not adf_file.exists():
        print(f"Error: {adf_file} not found")
        sys.exit(1)
    
    # Extract samples
    count = scan_for_audio(adf_file, output_dir)
    
    # Look for MOD music
    extract_module_tracker_music(adf_file, output_dir)
    
    print("\n" + "=" * 60)
    if count > 0:
        print("Audio extraction complete!")
        print("\nTo preview audio files:")
        print(f"  cd {output_dir}/")
        print("  # Play all samples")
        print("  for f in audio_*.wav; do echo $f; play $f 2>/dev/null || aplay $f; done")
    else:
        print("No audio samples found.")
        print("The game might use custom sample formats or compression.")

if __name__ == '__main__':
    main()
