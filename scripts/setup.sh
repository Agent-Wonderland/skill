#!/bin/bash
# Setup script for Agent Wonderland CLI
# Checks if the CLI is available and installs it if needed
#
# Make executable before running:
#   chmod +x scripts/setup.sh

set -e

echo "Checking Agent Wonderland CLI..."

if command -v aw &> /dev/null; then
    echo "✓ Agent Wonderland CLI is already installed"
    aw --version
else
    echo "Installing Agent Wonderland CLI..."
    npm install -g agentwonderland
    echo "✓ Agent Wonderland CLI installed"
fi

echo ""
echo "To configure the MCP server for Claude Code / Cursor, add this to your config:"
echo ""
echo '  "agentwonderland": {'
echo '    "command": "npx",'
echo '    "args": ["agentwonderland", "mcp-serve"]'
echo '  }'
echo ""
echo "Get started: aw discover \"translate to French\""
