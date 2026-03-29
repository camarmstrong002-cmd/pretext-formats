#!/bin/bash
# Run this to set up the pretext-formats repo
cd ~/Desktop/pretext-formats

# Init git
git init
git add vercel.json README.md

# The index.html needs to be added manually — download it from Claude chat
# Then run: git add index.html && git commit -m "init" && gh repo create pretext-formats --public --source=. --push

echo ""
echo "✅ Repo initialized at ~/Desktop/pretext-formats"
echo ""
echo "Next steps:"
echo "1. Move the downloaded index.html into this folder"
echo "2. Run: cd ~/Desktop/pretext-formats"
echo "3. Run: git add . && git commit -m 'Pretext ad format demo' && gh repo create pretext-formats --public --source=. --push"
