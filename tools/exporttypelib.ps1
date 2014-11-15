#requires -version 3

$assemblyVersion="1.1.81.69"
$company="NetOffice Framework"
$product="NetOffice"

$baseDir=Join-Path $PSScriptRoot "..\"
$net35tools=(Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Microsoft SDKs\Windows\v8.0A\WinSDK-NetFx35Tools-x86").InstallationFolder
$net45tools=Join-Path (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Microsoft SDKs\Windows\v8.1A").InstallationFolder "Bin\NETFX 4.5.1 Tools\"

$TlbImp35Args = @(
    "$($baseDir)tools\TlbInf32.dll",
    "/namespace:TypeLibInformation",
    "/asmversion:$assemblyVersion",
    "/sysarray",
    "/out:$($baseDir)lib\net35\TlbInf32.Interop.dll"
)
$TlbImp45Args = @(
    "$($baseDir)tools\TlbInf32.dll",
    "/namespace:TypeLibInformation",
    "/asmversion:$assemblyVersion",
    "/company:$company",
    "/product:$product"
    "/sysarray",
    "/out:$($baseDir)lib\net45\TlbInf32.Interop.dll"
)

echo $TlbImp35Args

& (Join-Path $net35tools "tlbimp.exe") $TlbImp35Args

& (Join-Path $net45tools "tlbimp.exe") $TlbImp45Args

