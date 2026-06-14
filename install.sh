#!/bin/bash
# LIF Installation Script
# This script helps you set up LIF and its packages

echo "╔════════════════════════════════════════╗"
echo "║  LIF - Lua Integration Framework       ║"
echo "║  Installation & Setup                  ║"
echo "╚════════════════════════════════════════╝"
echo ""

# Check if Lua is installed
if ! command -v lua &> /dev/null; then
    echo "❌ ERROR: Lua is not installed"
    echo "Please install Lua 5.1 or higher first"
    exit 1
fi

LUA_VERSION=$(lua -v 2>&1 | awk '{print $2}')
echo "✓ Lua $LUA_VERSION found"

# Initialize LIF
echo ""
echo "Initializing LIF..."
lua main.lua init

# Install dependencies
echo ""
echo "Installing dependencies..."
lua main.lua install dependencies

# Install core packages
echo ""
echo "Installing core packages..."
packages=(
    "@lif/template-forproject"
    "@lif/utils"
    "@lif/core"
    "@lif/testing"
)

for pkg in "${packages[@]}"; do
    lua main.lua install "$pkg"
done

# List installed packages
echo ""
echo "════════════════════════════════════════"
lua main.lua list
echo "════════════════════════════════════════"
echo ""
echo "✓ Installation complete!"
echo ""
echo "Next steps:"
echo "  1. Explore available packages:"
echo "     ls -la packages/@lif/"
echo ""
echo "  2. Create your first project:"
echo "     lif install @lif/template-forproject"
echo ""
echo "  3. Write tests:"
echo "     lif install @lif/testing"
echo ""
echo "  4. Get help:"
echo "     lif help"
echo ""
