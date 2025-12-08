#!/bin/bash

# Check if cargo is installed
if ! command -v cargo &> /dev/null; then
    # Check if it's in the standard location but not in PATH
    if [ -f "$HOME/.cargo/bin/cargo" ]; then
        export PATH="$HOME/.cargo/bin:$PATH"
    else
        echo "Error: Rust is not installed or not in PATH."
        echo "Please install Rust using: curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"
        echo "Or visit https://rustup.rs/"
        exit 1
    fi
fi

echo "Starting Lyrics Plus Overlay..."
npm run tauri dev
