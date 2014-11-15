# TypeLib Information library

NuGet package for distributing TypeLib Information library **TlbInf32.dll**.


## Usage

Run this command in NuGet package manager:

```
Install-Package TypeLibInformation
```


### TypeLib Registration

The `TlbInf32.dll` native library is registered using the `RegSvrEx.exe` utility into `HKEY_CURRENT_USER`, so we can register the COM server without administrative rights from non-elevated script.

To successfully redirect registry keys on Vista SP1 and newer systems, we set the environment variable `OAPERUSERTLIBREG` in `install.ps1` and `uninstall.ps1` scripts.

```
set OAPERUSERTLIBREG=1
```

For more information, see [OaEnablePerUserTLibRegistration function][1].


## License

**TypeLib Importer** package source code is license under [MIT License)](LICENSE.txt)

The **RegSvrEx** utility is licensed under [The Code Project Open License (CPOL)](RegSvrEx/CPOL.htm).

The **TlbInf32.dll** library is a property of Microsoft Corp.


[1]: http://msdn.microsoft.com/en-us/library/windows/desktop/cc713570(v=vs.85).aspx