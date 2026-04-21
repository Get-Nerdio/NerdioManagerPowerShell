# New-NmeFsLogixProfile

**Endpoint:** `POST /api/v1/fslogix`

## Description

Create a new FSLogix profile with certain parameters

**Output Type:** `IFsLogixParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| CloudCache | SwitchParameter | Yes |  |
| EntraIdKerberos | SwitchParameter | Yes |  |
| ExclusionMode | String | Yes | Values: `None`, `Admins` |
| InstallerForceUpdate | SwitchParameter | Yes |  |
| InstallerVersion | String | Yes |  |
| IsDefault | SwitchParameter | Yes |  |
| Name | String | Yes |  |
| OfficeContainerLocations | String[] | Yes |  |
| OfficeContainerOptions | String | Yes |  |
| PageBlobs | SwitchParameter | Yes |  |
| ProfileContainerLocations | String[] | Yes |  |
| ProfileContainerOptions | String | Yes |  |
| RedirectionsXml | String | Yes |  |
| AppServiceRegistryOptionRegistryOptions | String | No |  |
| AppServiceRegistryOptionRegistryOptionsMode | String | No | Values: `None`, `Apply` |
| CloudCacheRegistryOptionCommon | String | No |  |
| CloudCacheRegistryOptionOfficeContainer | String | No |  |
| CloudCacheRegistryOptionProfileContainer | String | No |  |
| ExclusionExcludedDomainAccounts | String[] | No |  |
| LogRegistryOptionRegistryOptions | String | No |  |
| LogRegistryOptionRegistryOptionsMode | String | No | Values: `None`, `Apply` |

## Examples

```powershell
New-NmeFsLogixProfile `
    -CloudCache `
    -EntraIdKerberos `
    -ExclusionMode "None" `
    -InstallerForceUpdate `
    -InstallerVersion "<InstallerVersion>" `
    -IsDefault `
    -Name "FsLogixName" `
    -OfficeContainerLocations @("<OfficeContainerLocations>") `
    -OfficeContainerOptions "<OfficeContainerOptions>" `
    -PageBlobs `
    -ProfileContainerLocations @("<ProfileContainerLocations>") `
    -ProfileContainerOptions "<ProfileContainerOptions>" `
    -RedirectionsXml "<RedirectionsXml>"
```

