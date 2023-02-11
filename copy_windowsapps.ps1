$source = "C:\Program Files\WindowsApps"
$destination = "C:\Users\harry\Downloads\testing\troj"

Get-ChildItem $source -Directory | ForEach-Object { 
    $folder = $_.Name
    $path = Join-Path $destination $folder
    New-Item -ItemType Directory -Path $path -Force
    Copy-Item $_.FullName -Destination $path -Recurse -Force
    Compress-Archive -Path $path -DestinationPath "$path.zip" -Force
}
