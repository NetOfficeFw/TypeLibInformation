param($installPath, $toolsPath, $package, $project)

$env:OAPERUSERTLIBREG=1
$RegSvrEx=Join-Path $toolsPath "RegSvrEx.exe"
$TlbInf32=Join-Path $toolsPath "TlbInf32.dll"
& $RegSvrEx /c /u $TlbInf32
