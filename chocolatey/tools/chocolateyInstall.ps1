$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'meetingringer'
  softwareName   = 'Meeting Ringer*'
  fileType       = 'msi'
  url64bit       = 'https://github.com/meetingringer/meetingringer/releases/download/v0.1.29/Meeting.Ringer_0.1.29_x64_en-US.msi'
  checksum64     = '22DE9F93CA8C95BAE844E142027DD8C11D6D202C7B7C4BC09D0ECC0D59D0161C'
  checksumType64 = 'sha256'
  silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($env:ChocolateyPackageName).$($env:ChocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
