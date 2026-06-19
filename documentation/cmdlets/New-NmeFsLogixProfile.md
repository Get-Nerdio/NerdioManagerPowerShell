# New-NmeFsLogixProfile

**Endpoint:** `POST /api/v1/fslogix`

## Description

Create a new FSLogix profile with certain parameters

**Output Type:** `IFsLogixParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| CloudCache | SwitchParameter | Yes | Enable FSLogix Cloud Cache. |
| EntraIdKerberos | SwitchParameter | Yes | Enable Entra ID Kerberos functionality and Entra ID account credentials loading. |
| ExclusionMode | String | Yes | Values: `None`, `Admins` |
| InstallerForceUpdate | SwitchParameter | Yes | This option is used to force the re-installation of the FSLogix agent and applications. |
| InstallerVersion | String | Yes | FsLogix installer version. |
| IsDefault | SwitchParameter | Yes |  |
| Name | String | Yes |  |
| OfficeContainerLocations | String[] | Yes |  |
| OfficeContainerOptions | String | Yes |  |
| PageBlobs | SwitchParameter | Yes | Use storage account blob containers to store users profiles. |
| ProfileContainerLocations | String[] | Yes |  |
| ProfileContainerOptions | String | Yes |  |
| RedirectionsXml | String | Yes | See this Microsoft doc for more info.https://learn.microsoft.com/en-us/fslogix/concepts-redirections-xml |
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

