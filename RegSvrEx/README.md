# RegSvrEx - An Enchanced COM Server Registration Utility


Original source code: http://www.codeproject.com/Articles/3505/RegSvrEx-An-Enchanced-COM-Server-Registration-Util

## Introduction

This utility (RegSvrEx) is similar to RegSvr32 but with certain extra functionality. The extra features which this utility offers are:

1. Current user only registration for COM servers (more about this later)
1. Registration of executable files (though this is not the primary feature)

The utility is meant to work only on Windows 2000, XP and Windows Server 2003, as current user registration is a feature available only on these operating systems.


## Background

It all started when I felt the need for a tool that could :

1. Register COM servers only for the current user
1. Create a `.reg` file instead of registering the COM server. I needed this for creating a windows installer package.

I found an answer for the second problem in the tool `RegCap.exe` which comes with Microsoft Visual Studio.NET. This tool can be found in the sub directory - `\Common7\Tools\Deployment` within the main installation directory of Visual Studio.NET. If you want to create a `.reg` file instead of registering a COM server (dll or an exe), you can simply invoke this tool from the command prompt as:

```
RegCap /O OutputFile.reg MyComServer.dll
```

This will output all the registration entries of MyCOMServer.dll to OutputFile.reg without actually registering the COM server. This is very useful in creating windows installer packages where the best practice is not to self register a COM server. This tool is internally used by the IDE when building the setup projects.

 
## License

The **RegSvrEx** utility is licensed under [The Code Project Open License (CPOL)](CPOL.htm).
