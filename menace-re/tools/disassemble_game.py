#!/usr/bin/env python3
"""
Menace Disassembler
Extracts and disassembles code sections from the ADF image
"""

import subprocess
import sys
from pathlib import Path

# Known Amiga hardware registers (Addresses in $DFF000 range)
AMIGA_REGISTERS = {
    0xDFF002: 'DMACONR - DMA Control Read',
    0xDFF004: 'VPOSR - Vertical Position Read',
    0xDFF006: 'VHPOSR - Vertical/Horizontal Position Read',
    0xDFF008: 'DSKDATR - Disk Data Read',
    0xDFF00A: 'JOY0DAT - Joystick-Mouse 0 Data',
    0xDFF00C: 'JOY1DAT - Joystick-Mouse 1 Data',
    0xDFF010: 'ADKCONR - Audio/Disk Control Read',
    0xDFF012: 'POT0DAT - Pot 0 Data',
    0xDFF014: 'POT1DAT - Pot 1 Data',
    0xDFF016: 'POTGOR - Pot Port Data Read',
    0xDFF01C: 'INTENAR - Interrupt Enable Bits Read',
    0xDFF01E: 'INTREQR - Interrupt Request Bits Read',
    0xDFF020: 'DSKPTH - Disk Pointer (High)',
    0xDFF022: 'DSKPTL - Disk Pointer (Low)',
    0xDFF024: 'DSKLEN - Disk Length',
    0xDFF026: 'DSKDAT - Disk DMA Data Write',
    0xDFF040: 'BLTCON0 - Blitter Control 0',
    0xDFF042: 'BLTCON1 - Blitter Control 1',
    0xDFF044: 'BLTAFWM - Blitter First Word Mask for Source A',
    0xDFF046: 'BLTALWM - Blitter Last Word Mask for Source A',
    0xDFF048: 'BLTCPTH - Blitter Pointer to Source C (High)',
    0xDFF04A: 'BLTCPTL - Blitter Pointer to Source C (Low)',
    0xDFF04C: 'BLTBPTH - Blitter Pointer to Source B (High)',
    0xDFF04E: 'BLTBPTL - Blitter Pointer to Source B (Low)',
    0xDFF050: 'BLTAPTH - Blitter Pointer to Source A (High)',
    0xDFF052: 'BLTAPTL - Blitter Pointer to Source A (Low)',
    0xDFF054: 'BLTDPTH - Blitter Pointer to Destination D (High)',
    0xDFF056: 'BLTDPTL - Blitter Pointer to Destination D (Low)',
    0xDFF058: 'BLTSIZE - Blitter Start and Size',
    0xDFF080: 'COP1LCH - Copper 1st Location (High)',
    0xDFF082: 'COP1LCL - Copper 1st Location (Low)',
    0xDFF084: 'COP2LCH - Copper 2nd Location (High)',
    0xDFF086: 'COP2LCL - Copper 2nd Location (Low)',
    0xDFF088: 'COPJMP1 - Copper Jump 1',
    0xDFF08A: 'COPJMP2 - Copper Jump 2',
    0xDFF08E: 'DIWSTRT - Display Window Start',
    0xDFF090: 'DIWSTOP - Display Window Stop',
    0xDFF092: 'DDFSTRT - Display Data Fetch Start',
    0xDFF094: 'DDFSTOP - Display Data Fetch Stop',
    0xDFF096: 'DMACON - DMA Control Write',
    0xDFF098: 'CLXCON - Collision Control',
    0xDFF09A: 'INTENA - Interrupt Enable Bits',
    0xDFF09C: 'INTREQ - Interrupt Request Bits',
    0xDFF09E: 'ADKCON - Audio/Disk Control',
    0xDFF0A0: 'AUD0LCH - Audio Channel 0 Location (High)',
    0xDFF0A2: 'AUD0LCL - Audio Channel 0 Location (Low)',
    0xDFF0A4: 'AUD0LEN - Audio Channel 0 Length',
    0xDFF0A6: 'AUD0PER - Audio Channel 0 Period',
    0xDFF0A8: 'AUD0VOL - Audio Channel 0 Volume',
    0xDFF0B0: 'AUD1LCH - Audio Channel 1 Location (High)',
    0xDFF0B2: 'AUD1LCL - Audio Channel 1 Location (Low)',
    0xDFF0B4: 'AUD1LEN - Audio Channel 1 Length',
    0xDFF0B6: 'AUD1PER - Audio Channel 1 Period',
    0xDFF0B8: 'AUD1VOL - Audio Channel 1 Volume',
    0xDFF0C0: 'AUD2LCH - Audio Channel 2 Location (High)',
    0xDFF0C2: 'AUD2LCL - Audio Channel 2 Location (Low)',
    0xDFF0C4: 'AUD2LEN - Audio Channel 2 Length',
    0xDFF0C6: 'AUD2PER - Audio Channel 2 Period',
    0xDFF0C8: 'AUD2VOL - Audio Channel 2 Volume',
    0xDFF0D0: 'AUD3LCH - Audio Channel 3 Location (High)',
    0xDFF0D2: 'AUD3LCL - Audio Channel 3 Location (Low)',
    0xDFF0D4: 'AUD3LEN - Audio Channel 3 Length',
    0xDFF0D6: 'AUD3PER - Audio Channel 3 Period',
    0xDFF0D8: 'AUD3VOL - Audio Channel 3 Volume',
    0xDFF100: 'BPLCON0 - Bitplane Control 0',
    0xDFF102: 'BPLCON1 - Bitplane Control 1',
    0xDFF104: 'BPLCON2 - Bitplane Control 2',
    0xDFF108: 'BPL1MOD - Bitplane 1 Modulo',
    0xDFF10A: 'BPL2MOD - Bitplane 2 Modulo',
    0xDFF180: 'COLOR00 - Color Palette 00',
    0xDFF182: 'COLOR01 - Color Palette 01',
    0xDFF184: 'COLOR02 - Color Palette 02',
}

def extract_section(adf_file, offset, size, output_file):
    """Extract a section from the ADF"""
    skip_blocks = offset // 512
    
    cmd = [
        'dd',
        f'if={adf_file}',
        f'of={output_file}',
        f'bs=512',
        f'skip={skip_blocks}',
        f'count={(size + 511) // 512}'
    ]
    
    subprocess.run(cmd, capture_output=True)
    return output_file

def disassemble_binary(bin_file, output_file, start_addr=0):
    """Disassemble a binary file"""
    cmd = [
        'm68k-linux-gnu-objdump',
        '-D',
        '-b', 'binary',
        '-m', 'm68k',
        f'--adjust-vma={start_addr}',
        bin_file
    ]
    
    result = subprocess.run(cmd, capture_output=True, text=True)
    
    with open(output_file, 'w') as f:
        f.write(result.stdout)
    
    return output_file

def annotate_disassembly(asm_file, output_file):
    """Add comments to disassembly identifying hardware registers"""
    with open(asm_file, 'r') as f:
        lines = f.readlines()
    
    annotated = []
    for line in lines:
        annotated.append(line.rstrip())
        
        # Look for references to Amiga hardware registers
        for addr, desc in AMIGA_REGISTERS.items():
            addr_str = f'0x{addr:x}'
            if addr_str in line.lower() or f'{addr:x}' in line.lower():
                annotated.append(f'                     ; >>> {desc}')
                break
    
    with open(output_file, 'w') as f:
        f.write('\n'.join(annotated))
    
    return output_file

def main():
    if len(sys.argv) < 2:
        print("Usage: disassemble_game.py <adf_file>")
        sys.exit(1)
    
    adf_file = Path(sys.argv[1])
    output_dir = Path('disassembly')
    output_dir.mkdir(exist_ok=True)
    
    print(f"Disassembling: {adf_file.name}")
    print("=" * 60)
    
    # Key sections to disassemble based on analysis
    sections = [
        ('bootblock', 0x0000, 1024, 0x0000),
        ('main_code', 0x3FF00, 0x10000, 0x3FF00),  # Jump target from bootblock
        ('early_code', 0x1000, 0x8000, 0x1000),
        ('mid_section', 0x10000, 0x8000, 0x10000),
    ]
    
    for name, offset, size, vma in sections:
        print(f"\nExtracting {name} @ 0x{offset:06x} (size: {size} bytes)...")
        
        bin_file = output_dir / f'{name}.bin'
        asm_file = output_dir / f'{name}.asm'
        annotated_file = output_dir / f'{name}_annotated.asm'
        
        # Extract section
        extract_section(adf_file, offset, size, bin_file)
        
        # Disassemble
        disassemble_binary(bin_file, asm_file, vma)
        
        # Annotate
        annotate_disassembly(asm_file, annotated_file)
        
        print(f"  ✓ Binary: {bin_file}")
        print(f"  ✓ Disassembly: {asm_file}")
        print(f"  ✓ Annotated: {annotated_file}")
    
    print("\n" + "=" * 60)
    print("Disassembly complete!")
    print(f"Output in: {output_dir}/")

if __name__ == '__main__':
    main()
