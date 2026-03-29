#!/bin/bash
# Decode the compressed base64 index.html
cd "$(dirname "$0")"
base64 -d b64data.txt | gunzip > pretext-before-after.html
echo "✅ Created pretext-before-after.html ($(wc -c < pretext-before-after.html) bytes)"
echo ""
echo "Now run:"
echo "  cd ~/Desktop/pretext-formats"
echo "  git add pretext-before-after.html"
echo "  git commit -m 'Add demo HTML'"
echo "  git push"
