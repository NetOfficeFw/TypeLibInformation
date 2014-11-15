param($installPath, $toolsPath, $package, $project)

$RegSvrEx=Join-Path $toolsPath "RegSvrEx.exe"
$TlbInf32=Join-Path $toolsPath "TlbInf32.dll"
& $RegSvrEx /c /u $TlbInf32
