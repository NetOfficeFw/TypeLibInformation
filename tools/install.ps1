param($installPath, $toolsPath, $package, $project)

RegSvrEx.exe /c Join-Path $toolsPath '\TlbInf32.dll'

$project.Object.References | Where-Object { $_.Name -eq "TypeLibInformation32" } |  ForEach-Object { $_.EmbedInteropTypes = $false }
