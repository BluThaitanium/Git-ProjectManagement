#!/bin/bash

# Create directory and files for Scenario 3 practice
mkdir -p "nestedDirectory"
touch "IgnoreMe1.txt"
touch "IgnoreMe2.txt"
touch "nestedDirectory/IgnoreMe3.txt"
touch ".gitignore"
touch "DontIgnoreMe.txt"
touch "nestedDirectory/DontIgnoreMe.txt"

echo "Scenario 3 files created successfully!"
echo "Files created:"
echo "- nestedDirectory/ (nested directory with files)"
echo "- IgnoreMe1.txt, IgnoreMe2.txt, nestedDirectory/IgnoreMe3.txt (files to ignore)"
echo "- .gitignore (file to configure git ignore rules)"
echo "- DontIgnoreMe.txt, nestedDirectory/DontIgnoreMe.txt (files to keep tracked)"
