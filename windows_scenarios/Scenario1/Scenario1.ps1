New-Item "DeleteMe1.txt" -ItemType File
New-Item "DeleteMe2.txt" -ItemType File
New-Item "DeleteMe3.txt" -ItemType File
New-Item "DontDeleteMe.txt" -ItemType File

"1+1 = ?" | Set-Content "EditMe.txt"
