#!/bin/bash
# Convert tracker files (.mod/.xm/.s3m/.it) or David Whittaker (.dw with subsongs) to OGG for Godot
# 
# Usage: 
#   ./convert_mod_to_ogg.sh path/to/module.mod
#   ./convert_mod_to_ogg.sh path/to/track.dw [subsong_number]
#
# Output: godot/music/<filename>.ogg or godot/music/<filename>_subN.ogg

set -e

INPUT="$1"
SUBSONG="$2"

if [ -z "$INPUT" ]; then
  echo "Usage: $0 <module.mod|track.dw> [subsong_number]"
  echo ""
  echo "Examples:"
  echo "  $0 music/incoming/level1.mod"
  echo "  $0 ../music/menace.dw 0"
  echo "  $0 ../music/menace.dw 1"
  exit 1
fi

if [ ! -f "$INPUT" ]; then
  echo "Error: File not found: $INPUT"
  exit 1
fi

BASENAME=$(basename "$INPUT")
FILENAME="${BASENAME%.*}"
EXT="${BASENAME##*.}"
OUTPUT_DIR="$(dirname "$0")/music"

# Ensure output directory exists
mkdir -p "$OUTPUT_DIR"

if [ "$EXT" = "dw" ]; then
  # David Whittaker format - requires UADE
  if ! command -v uade123 &> /dev/null; then
    echo "Error: uade123 not found. UADE is required for .dw files."
    echo "See docs/EXTRACTING_DW_MUSIC.md for installation instructions."
    exit 1
  fi
  
  if [ -n "$SUBSONG" ]; then
    # Explicit subsong
    OUTPUT_NAME="${FILENAME}_sub${SUBSONG}"
    echo "Converting: $BASENAME (subsong $SUBSONG)"
    WAV_TEMP="/tmp/${OUTPUT_NAME}.wav"
    OGG_OUTPUT="${OUTPUT_DIR}/${OUTPUT_NAME}.ogg"
    uade123 -s "$SUBSONG" -e wav -f "$WAV_TEMP" "$INPUT"
  else
    # Default subsong (0)
    OUTPUT_NAME="${FILENAME}"
    echo "Converting: $BASENAME (default subsong)"
    WAV_TEMP="/tmp/${OUTPUT_NAME}.wav"
    OGG_OUTPUT="${OUTPUT_DIR}/${OUTPUT_NAME}.ogg"
    uade123 -e wav -f "$WAV_TEMP" "$INPUT"
  fi
else
  # Standard tracker format - use OpenMPT
  if ! command -v openmpt123 &> /dev/null; then
    echo "Error: openmpt123 not found. Install with:"
    echo "  sudo apt-get install openmpt123"
    exit 1
  fi
  
  OUTPUT_NAME="$FILENAME"
  echo "Converting: $BASENAME"
  WAV_TEMP="/tmp/${OUTPUT_NAME}.wav"
  OGG_OUTPUT="${OUTPUT_DIR}/${OUTPUT_NAME}.ogg"
  openmpt123 --render --quiet --samplerate 44100 --channels 2 --output "$WAV_TEMP" "$INPUT"
fi

# Check if oggenc is installed
if ! command -v oggenc &> /dev/null; then
  echo "Error: oggenc not found. Install with:"
  echo "  sudo apt-get install vorbis-tools"
  exit 1
fi

# Convert to OGG
echo "Encoding to OGG..."
oggenc -q 6 -o "$OGG_OUTPUT" "$WAV_TEMP"
rm -f "$WAV_TEMP"

echo "✓ Done: $OGG_OUTPUT"
ls -lh "$OGG_OUTPUT"
