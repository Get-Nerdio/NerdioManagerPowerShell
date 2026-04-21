# New-NmeFsLogixParamsUpdateModel

Create an in-memory object for FsLogixParamsUpdate.

**Output Type:** `FsLogixParamsUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AppServiceRegistryOptionRegistryOptions | String | No |  |
| AppServiceRegistryOptionRegistryOptionsMode | String | No | Values: `None`, `Apply` |
| CloudCache | Boolean | No |  |
| CloudCacheRegistryOptionCommon | String | No |  |
| CloudCacheRegistryOptionOfficeContainer | String | No |  |
| CloudCacheRegistryOptionProfileContainer | String | No |  |
| EntraIdKerberos | Boolean | No |  |
| ExclusionExcludedDomainAccounts | Object | No |  |
| ExclusionMode | String | No | Values: `None`, `Admins` |
| InstallerForceUpdate | Boolean | No |  |
| InstallerVersion | String | No |  |
| IsDefault | Boolean | No |  |
| LogRegistryOptionRegistryOptions | String | No |  |
| LogRegistryOptionRegistryOptionsMode | String | No | Values: `None`, `Apply` |
| Name | String | No |  |
| OfficeContainerLocations | Object | No |  |
| OfficeContainerOptions | String | No |  |
| PageBlobs | Boolean | No |  |
| ProfileContainerLocations | Object | No |  |
| ProfileContainerOptions | String | No |  |
| RedirectionsXml | String | No |  |

## Usage

```powershell
$model = New-NmeFsLogixParamsUpdateModel `
    -AppServiceRegistryOptionRegistryOptions "<AppServiceRegistryOptionRegistryOptions>" `
    -AppServiceRegistryOptionRegistryOptionsMode "None" `
    -CloudCache $true `
    -CloudCacheRegistryOptionCommon "<CloudCacheRegistryOptionCommon>" `
    -CloudCacheRegistryOptionOfficeContainer "<CloudCacheRegistryOptionOfficeContainer>" `
    -CloudCacheRegistryOptionProfileContainer "<CloudCacheRegistryOptionProfileContainer>" `
    -EntraIdKerberos $true `
    -ExclusionExcludedDomainAccounts "<ExclusionExcludedDomainAccounts>" `
    -ExclusionMode "None" `
    -InstallerForceUpdate $true `
    -InstallerVersion "<InstallerVersion>" `
    -IsDefault $true `
    -LogRegistryOptionRegistryOptions "<LogRegistryOptionRegistryOptions>" `
    -LogRegistryOptionRegistryOptionsMode "None" `
    -Name "<Name>" `
    -OfficeContainerLocations "<OfficeContainerLocations>" `
    -OfficeContainerOptions "<OfficeContainerOptions>" `
    -PageBlobs $true `
    -ProfileContainerLocations "<ProfileContainerLocations>" `
    -ProfileContainerOptions "<ProfileContainerOptions>" `
    -RedirectionsXml "<RedirectionsXml>"
```

