#!/bin/bash

# Create files for Scenario 2 practice
touch "AddMe1.txt"
touch "AddMe2.txt"
touch "RestoreMe2.txt"
echo "password123" > "TestPassword.txt"

# Add timestamp to script (equivalent to PowerShell version)
script_path="$(realpath "$0")"
echo "# Script last run on $(date '+%Y-%m-%d %H:%M:%S')" >> "$script_path"

echo "Scenario 2 files created successfully!"
echo "Files created:"
echo "- AddMe1.txt, AddMe2.txt (files to practice adding)"
echo "- RestoreMe2.txt (file to practice restoring)"
echo "- TestPassword.txt (file to practice unstaging)"
