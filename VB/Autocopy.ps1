$dest    = "..\Assets\"
$source  = "VB\bin\Debug\[net]*\*"
$vbFiles = get-childItem $source -directory -recurse | where {$_.BaseName -match "VB$"}
copy-item -path $source -filter "VB.*" -destination $dest –recurse