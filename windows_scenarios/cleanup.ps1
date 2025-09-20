Get-ChildItem -Path . -Directory -Recurse | Remove-Item -Force -Recurse

$vimExtensions = "*.swp", "*.swo", "*.swp", "*.bak", "*.un~", "*.ps1~", "*.md~"
Get-ChildItem -Path . -Include $vimExtensions -Recurse -File | Remove-Item -Force
