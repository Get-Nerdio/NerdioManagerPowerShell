# New-NmeFsLogixPropertiesModel

Create an in-memory object for FsLogixProperties.

**Output Type:** `FsLogixProperties`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| CloudCache | Boolean | Yes |  |
| EntraIdKerberos | Boolean | Yes |  |
| ExclusionMode | String | Yes | Values: `None`, `Admins` |
| InstallerForceUpdate | Boolean | Yes |  |
| InstallerVersion | String | Yes |  |
| OfficeContainerLocations | Object | Yes |  |
| OfficeContainerOptions | String | Yes |  |
| PageBlobs | Boolean | Yes |  |
| ProfileContainerLocations | Object | Yes |  |
| ProfileContainerOptions | String | Yes |  |
| RedirectionsXml | String | Yes |  |
| AppServiceRegistryOptionRegistryOptions | String | No |  |
| AppServiceRegistryOptionRegistryOptionsMode | String | No | Values: `None`, `Apply` |
| CloudCacheRegistryOptionCommon | String | No |  |
| CloudCacheRegistryOptionOfficeContainer | String | No |  |
| CloudCacheRegistryOptionProfileContainer | String | No |  |
| ExclusionExcludedDomainAccounts | Object | No |  |
| LogRegistryOptionRegistryOptions | String | No |  |
| LogRegistryOptionRegistryOptionsMode | String | No | Values: `None`, `Apply` |

## Usage

```powershell
$model = New-NmeFsLogixPropertiesModel `
    -CloudCache $true `
    -EntraIdKerberos $true `
    -ExclusionMode "None" `
    -InstallerForceUpdate $true `
    -InstallerVersion "<InstallerVersion>" `
    -OfficeContainerLocations "<OfficeContainerLocations>" `
    -OfficeContainerOptions "<OfficeContainerOptions>" `
    -PageBlobs $true `
    -ProfileContainerLocations "<ProfileContainerLocations>" `
    -ProfileContainerOptions "<ProfileContainerOptions>" `
    -RedirectionsXml "<RedirectionsXml>"
```

