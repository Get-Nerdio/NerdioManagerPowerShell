# New-NmeFsLogixParamsCreateModel

Create an in-memory object for FsLogixParamsCreate.

**Output Type:** `FsLogixParamsCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| CloudCache | Boolean | Yes |  |
| EntraIdKerberos | Boolean | Yes |  |
| ExclusionMode | String | Yes | Values: `None`, `Admins` |
| InstallerForceUpdate | Boolean | Yes |  |
| InstallerVersion | String | Yes |  |
| IsDefault | Boolean | Yes |  |
| Name | String | Yes |  |
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
$model = New-NmeFsLogixParamsCreateModel `
    -CloudCache $true `
    -EntraIdKerberos $true `
    -ExclusionMode "None" `
    -InstallerForceUpdate $true `
    -InstallerVersion "<InstallerVersion>" `
    -IsDefault $true `
    -Name "<Name>" `
    -OfficeContainerLocations "<OfficeContainerLocations>" `
    -OfficeContainerOptions "<OfficeContainerOptions>" `
    -PageBlobs $true `
    -ProfileContainerLocations "<ProfileContainerLocations>" `
    -ProfileContainerOptions "<ProfileContainerOptions>" `
    -RedirectionsXml "<RedirectionsXml>"
```

