[byte[]] $x = get-content -encoding byte -path file.exe

for ($x = 0; $x -lt $var_code.Count; $x++) {
    $var_code[$x] = $var_code[$x] -bxor 35
}
