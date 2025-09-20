New-Item "nestedDirectory" -ItemType Directory
New-Item "IgnoreMe1.txt" -ItemType File
New-Item "IgnoreMe2.txt" -ItemType File
New-Item "nestedDirectory/IgnoreMe3.txt" -ItemType File
New-Item ".gitignore" -ItemType File
New-Item "DontIgnoreMe.txt" -ItemType File
New-Item "nestedDirectory/DontIgnoreMe.txt" -ItemType File
