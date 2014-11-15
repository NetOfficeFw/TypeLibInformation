param($installPath, $toolsPath, $package, $project)

$env:OAPERUSERTLIBREG=1
& ".\RegSvrEx.exe" /c /u Join-Path $toolsPath 'TlbInf32.dll'
