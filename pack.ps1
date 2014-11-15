#requires -version 3

# & tools\exporttypelib.ps1

md out -Force
& nuget.exe pack TypeLib.nuspec -OutputDirectory out
