#!/bin/bash
# Deploy pretext-formats to GitHub + Vercel
# 
# STEP 1: Download 'pretext-formats-index.html' from the Claude chat
# STEP 2: Move it into this folder and rename:
#   mv ~/Downloads/pretext-formats-index.html ~/Desktop/pretext-formats/index.html
# STEP 3: Run this script:
#   cd ~/Desktop/pretext-formats && bash deploy.sh

set -e

cd "$(dirname "$0")"

# Check index.html exists
if [ ! -f "index.html" ]; then
    echo "❌ index.html not found!"
    echo "Download 'pretext-formats-index.html' from Claude chat,"
    echo "then run:"
    echo "  mv ~/Downloads/pretext-formats-index.html ~/Desktop/pretext-formats/index.html"
    exit 1
fi

echo "📁 Files in folder:"
ls -la

# Git init and commit
git init -b main
git add .
git commit -m "Pretext ad format demo — 7 interactive formats"

# Create GitHub repo and push
echo ""
echo "🚀 Creating GitHub repo and pushing..."
gh repo create pretext-formats --public --source=. --push

echo ""
echo "✅ Pushed to GitHub!"
echo ""
echo "🌐 Now deploying to Vercel..."
npx vercel deploy --yes --prod

echo ""
echo "🎉 Done! Your demo is live."
