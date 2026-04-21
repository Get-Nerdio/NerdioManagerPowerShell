# New-NmeFsLogixPropertiesUpdateModel

Create an in-memory object for FsLogixPropertiesUpdate.

**Output Type:** `FsLogixPropertiesUpdate`

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
| LogRegistryOptionRegistryOptions | String | No |  |
| LogRegistryOptionRegistryOptionsMode | String | No | Values: `None`, `Apply` |
| OfficeContainerLocations | Object | No |  |
| OfficeContainerOptions | String | No |  |
| PageBlobs | Boolean | No |  |
| ProfileContainerLocations | Object | No |  |
| ProfileContainerOptions | String | No |  |
| RedirectionsXml | String | No |  |

## Usage

```powershell
$model = New-NmeFsLogixPropertiesUpdateModel `
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
    -LogRegistryOptionRegistryOptions "<LogRegistryOptionRegistryOptions>" `
    -LogRegistryOptionRegistryOptionsMode "None" `
    -OfficeContainerLocations "<OfficeContainerLocations>" `
    -OfficeContainerOptions "<OfficeContainerOptions>" `
    -PageBlobs $true `
    -ProfileContainerLocations "<ProfileContainerLocations>" `
    -ProfileContainerOptions "<ProfileContainerOptions>" `
    -RedirectionsXml "<RedirectionsXml>"
```

