@echo off
setlocal EnableDelayedExpansion

set _certificate=goIT Solutions, s.r.o.
set _thumbprint=ac6dbffb1bf8b62281deb8641023a66cddc5db57

echo Signing WiX.Toolset.UnofficialFork package
nuget.exe sign "*.nupkg" -CertificateFingerprint "%_thumbprint%" -HashAlgorithm SHA256 -Timestamper http://timestamp.comodoca.com -TimestampHashAlgorithm SHA256 -Overwrite -NonInteractive -ForceEnglishOutput
if ERRORLEVEL 1 (
  echo Failed to sign package.
)
