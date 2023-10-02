#!/bin/bash

# Abort script at first error
set -e

# Create downloads directory if it doesn't exist
mkdir -p /downloads

# Download the vsix file
curl -L -o /downloads/manim-sideview-extension.vsix https://github.com/geroembser/manim-sideview/releases/download/v0.2.5-alpha/manim-sideview-0.2.5.vsix

echo "Download completed successfully!"
