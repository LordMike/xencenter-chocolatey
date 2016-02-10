$ErrorActionPreference = 'Stop';

$packageName= 'xencenter'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://downloadns.citrix.com.edgesuite.net/10341/XenServer-6.5.0-SP1-XenCenterSetup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  silentArgs    = "/i /q /Log /LogFile `"$env:TEMP\chocolatey\$($packageName)\$($packageName).Install.log`""
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Citrix XenCenter'
  checksum      = 'ac655ebe8a9cb05f042af2a3fb74e662cf83b8de'
  checksumType  = 'sha1'
}

Install-ChocolateyPackage @packageArgs