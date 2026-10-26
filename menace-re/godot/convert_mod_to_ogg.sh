#!/bin/bash
# Convert MOD/XM/S3M/IT tracker files to OGG for use in Godot
# Usage: ./convert_mod_to_ogg.sh path/to/file.mod

set -e

if [ $# -eq 0 ]; then
    echo "Usage: $0 <tracker_file.mod|xm|s3m|it>"
    echo ""
    echo "Converts tracker music files to OGG format for Godot."
    echo "Output: godot/music/<filename>.ogg"
    echo ""
    echo "To convert all files in incoming folder:"
    echo "  for f in music/incoming/*; do ./convert_mod_to_ogg.sh \"\$f\"; done"
    exit 1
fi

INPUT="$1"
BASENAME=$(basename "$INPUT")
FILENAME="${BASENAME%.*}"
OUTPUT_DIR="$(dirname "$0")/music"
WAV_TEMP="/tmp/${FILENAME}.wav"
OGG_OUTPUT="${OUTPUT_DIR}/${FILENAME}.ogg"

# Check if input file exists
if [ ! -f "$INPUT" ]; then
    echo "Error: File not found: $INPUT"
    exit 1
fi

# Check if openmpt123 is installed
if ! command -v openmpt123 &> /dev/null; then
    echo "Error: openmpt123 not found. Install with:"
    echo "  sudo apt-get install openmpt123"
    exit 1
fi

# Check if oggenc is installed
if ! command -v oggenc &> /dev/null; then
    echo "Error: oggenc not found. Install with:"
    echo "  sudo apt-get install vorbis-tools"
    exit 1
fi

echo "Converting: $BASENAME"
echo "  Step 1/2: Rendering to WAV..."

# Render to WAV using openmpt123
openmpt123 --render --quiet \
    --samplerate 44100 \
    --channels 2 \
    --output "$WAV_TEMP" \
    "$INPUT"

echo "  Step 2/2: Encoding to OGG..."

# Convert to OGG
oggenc -q 6 -o "$OGG_OUTPUT" "$WAV_TEMP"

# Clean up
rm -f "$WAV_TEMP"

echo "✓ Done: $OGG_OUTPUT"
echo ""
