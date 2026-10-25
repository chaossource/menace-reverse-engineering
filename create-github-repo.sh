#!/bin/bash
# Helper script to create GitHub repository for Menace project

set -e

echo "=========================================="
echo "Creating GitHub Repository"
echo "=========================================="
echo ""

# Check if gh is installed
if ! command -v gh &> /dev/null; then
    echo "Error: GitHub CLI (gh) is not installed"
    echo "Install it from: https://cli.github.com/"
    exit 1
fi

# Check if authenticated
if ! gh auth status &> /dev/null; then
    echo "You need to authenticate with GitHub first."
    echo "Run: gh auth login"
    echo ""
    read -p "Press Enter to run gh auth login now, or Ctrl+C to cancel..."
    gh auth login
fi

echo ""
echo "Creating repository: menace-reverse-engineering"
echo ""

# Create the repository
gh repo create menace-reverse-engineering \
  --public \
  --description "Reverse engineering and modern x86 port of the 1988 Amiga game Menace by DMA Design. Complete disassembly tools, asset extraction, and working SDL2-based port." \
  --source=. \
  --remote=github

echo ""
echo "Repository created successfully!"
echo ""

# Get the repo URL
REPO_URL=$(gh repo view --json url -q .url)
echo "Repository URL: $REPO_URL"
echo ""

# Push all commits
echo "Pushing commits to GitHub..."
git push -u github main

echo ""
echo "=========================================="
echo "✅ Success!"
echo "=========================================="
echo ""
echo "Your repository is now on GitHub:"
echo "$REPO_URL"
echo ""
echo "Current remotes:"
git remote -v
echo ""
echo "Next steps:"
echo "1. Visit your repo: $REPO_URL"
echo "2. Add topics: amiga, reverse-engineering, retro-gaming"
echo "3. Consider adding MIT license for your code"
echo "4. Share your work with the retro gaming community!"
echo ""
