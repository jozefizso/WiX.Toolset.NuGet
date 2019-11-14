# WiX.Toolset.UnofficialFork NuGet package

> Code  for creating the unofficial WiX.Toolset NuGet package: https://nuget.org/packages/WiX.Toolset.UnofficialFork

The files are taken from the ZIP distribution of the WiX Toolset releases (http://wixtoolset.org) and each WiX release is committed to a new branch.

Feel free to file an issue here on GitHub in case you have problems using the package.

## Release 3.11.2-ext1

Package **3.11.2-ext1** contains the WiX v3.11.2 binaries from official release
with a custom **burn.exe** and **WixStdBA.dll** compiled with support for
High DPI monitors.

Full release notes: [https://github.com/wixtoolset/wix3/releases/tag/wix3112rtm](https://github.com/wixtoolset/wix3/releases/tag/wix3112rtm)

### Notes

To get full support for High DPI monitors, you must include the custom **WixStdBA.dll**
file in your bootstrapper payload by using the file distributed in nuget package.

```xml
<BootstrapperApplicationRef Id="WixStandardBootstrapperApplication.HyperlinkLargeLicense">
    <bal:WixStandardBootstrapperApplication />
    <Payload Name="wixstdba.dll" SourceFile="packages\WiX.Toolset.UnofficialFork.3.11.2-ext1\tools\wix\WixStdBA.dll" />
</BootstrapperApplicationRef>
```


## License

The WiX Toolset files are licensed under the license found at http://wixtoolset.org/about/license

All other files used for creating the NuGet package are licensed under MIT/X11: https://opensource.org/licenses/MIT
