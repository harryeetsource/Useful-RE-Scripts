$key = 0xFF

# Get the list of files in the current directory
$fileList = Get-ChildItem -File

# Loop through each file and decrypt it using XOR
foreach ($file in $fileList) {
    $content = [System.IO.File]::ReadAllBytes($file.FullName)
    for ($i = 0; $i -lt $content.Length; $i++) {
        $content[$i] = $content[$i] -bxor $key
    }

    # Write the decrypted content back to the file
    [System.IO.File]::WriteAllBytes($file.FullName, $content)
}
