param($installPath, $toolsPath, $package, $project)

$env:OAPERUSERTLIBREG=1
& ".\RegSvrEx.exe" /c Join-Path $toolsPath 'TlbInf32.dll'

$project.Object.References | Where-Object { $_.Name -eq "TlbInf32.Interop" } |  ForEach-Object { $_.EmbedInteropTypes = $false }
