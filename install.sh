#!/usr/bin/env bash
set -euo pipefail

SKILL_DIR="$HOME/.claude/skills/design-system"
SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Design System skill..."

# Create directory
mkdir -p "$SKILL_DIR"

# Copy skill file
cp "$SOURCE_DIR/skills/design-system/SKILL.md" "$SKILL_DIR/SKILL.md"

echo ""
echo "Installed successfully!"
echo ""
echo "Usage:"
echo "  /design-system             — full design system generation"
echo "  /design-system tokens      — generate just the token values"
echo "  /design-system palette     — focus on color system"
echo "  /design-system components  — component library recommendation"
echo ""
echo "Skill is installed at: $SKILL_DIR/SKILL.md"
