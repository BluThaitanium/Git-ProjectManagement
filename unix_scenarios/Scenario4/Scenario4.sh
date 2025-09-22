#!/bin/bash

# Create files for git stash practice
touch "feature.txt"
touch "bugfix.txt"
touch "config.txt"
touch "temp_work.txt"
touch "untracked_file.txt"

# Add initial content to files
cat > "feature.txt" << 'EOF'
// Feature implementation in progress
function newFeature() {
    // TODO: Implement this feature
    return null;
}
EOF

cat > "bugfix.txt" << 'EOF'
// Bug fix for issue #123
function fixBug() {
    // Bug fix code here
    console.log('Bug fixed');
}
EOF

cat > "config.txt" << 'EOF'
# Configuration file
server_port=8080
debug_mode=true
api_key=your_api_key_here
EOF

cat > "temp_work.txt" << 'EOF'
// Temporary work - not ready for commit
let tempVariable = 'testing';
console.log('This is temporary work');
EOF

cat > "untracked_file.txt" << 'EOF'
// This file is untracked
// Contains experimental code
EOF

echo -e "\033[32mScenario 4 files created successfully!\033[0m"
echo "Files created:"
echo "- feature.txt (partially implemented feature)"
echo "- bugfix.txt (bug fix in progress)"  
echo "- config.txt (configuration changes)"
echo "- temp_work.txt (temporary work)"
echo "- untracked_file.txt (untracked experimental code)"
echo ""
echo -e "\033[33mReady to practice git stash commands!\033[0m"