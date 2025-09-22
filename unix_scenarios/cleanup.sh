#!/bin/bash

# Remove vim backup files and text files recursively
find . -type f \( -name "*.swp" -o -name "*.swo" -o -name "*.bak" -o -name "*.un~" -o -name "*~" -o -name "*.txt" \) -delete

echo "Cleanup completed!"
