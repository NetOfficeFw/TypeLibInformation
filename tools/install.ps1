param($installPath, $toolsPath, $package, $project)

$env:OAPERUSERTLIBREG=1
$RegSvrEx=Join-Path $toolsPath "RegSvrEx.exe"
$TlbInf32=Join-Path $toolsPath "TlbInf32.dll"
& $RegSvrEx /c $TlbInf32

$project.Object.References | Where-Object { $_.Name -eq "TlbInf32.Interop" } |  ForEach-Object { $_.EmbedInteropTypes = $false }
