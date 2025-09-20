$vimExtensions = "*.swp", "*.swo", "*.bak", "*.un~", "*~", "*.txt"

Get-ChildItem -Path . -Include $vimExtensions -Recurse -File | Remove-Item -Force
