# Create files for git stash practice
New-Item "feature.txt" -ItemType File
New-Item "bugfix.txt" -ItemType File
New-Item "config.txt" -ItemType File
New-Item "temp_work.txt" -ItemType File
New-Item "untracked_file.txt" -ItemType File

# Add initial content to files
"// Feature implementation in progress`nfunction newFeature() {`n    // TODO: Implement this feature`n    return null;`n}" | Set-Content "feature.txt"

"// Bug fix for issue #123`nfunction fixBug() {`n    // Bug fix code here`n    console.log('Bug fixed');`n}" | Set-Content "bugfix.txt"

"# Configuration file`nserver_port=8080`ndebug_mode=true`napi_key=your_api_key_here" | Set-Content "config.txt"

"// Temporary work - not ready for commit`nlet tempVariable = 'testing';`nconsole.log('This is temporary work');" | Set-Content "temp_work.txt"

"// This file is untracked`n// Contains experimental code" | Set-Content "untracked_file.txt"

Write-Host "Scenario 4 files created successfully!" -ForegroundColor Green
Write-Host "Files created:"
Write-Host "- feature.txt (partially implemented feature)"
Write-Host "- bugfix.txt (bug fix in progress)"  
Write-Host "- config.txt (configuration changes)"
Write-Host "- temp_work.txt (temporary work)"
Write-Host "- untracked_file.txt (untracked experimental code)"
Write-Host ""
Write-Host "Ready to practice git stash commands!" -ForegroundColor Yellow