$vimExtensions = "*.swp", "*.swo", "*.bak", "*.un~", "*~"

Get-ChildItem -Path . -Include $vimExtensions -Recurse -File | Remove-Item -Force
