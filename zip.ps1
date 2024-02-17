$toZip = $args[0].Trim('.\').Trim('\')
$name = "Duong-Cody"

# Cleanup old zips
Remove-Item -Recurse -Force $name -ErrorAction SilentlyContinue
Remove-Item -Force "$name.zip" -ErrorAction SilentlyContinue
Copy-Item -Recurse -Force $toZip "Duong-Cody"
Compress-Archive -Path $name -DestinationPath "$name.zip"

# Cleanup temp
Remove-Item -Recurse -Force $name -ErrorAction SilentlyContinue