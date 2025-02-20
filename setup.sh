#!/bin/bash
set -e # Exit on error

# Ask for project name if not provided
if [ -z "$1" ]; then
    read -p "Enter your project name: " project_name
else
    project_name="$1"
fi

# Validate project name
if [ -z "$project_name" ]; then
    echo "❌ Project name cannot be empty!"
    exit 1
fi

echo "🚀 Checking for 'uv' installation..."

# Install 'uv' if missing
if ! command -v uv &>/dev/null; then
    echo "🔧 'uv' not found. Installing..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
    export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH" # Ensure UV is in PATH
fi

echo "✅ 'uv' is installed!"

# Run Copier using UVX (no global install)
echo "📦 Running Copier for project '$project_name'..."
uvx copier copy --trust gh:grok-ai/py-template "$project_name"

echo "🎉 Done! Your project is ready in '$project_name'."
