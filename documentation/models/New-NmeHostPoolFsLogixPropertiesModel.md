# New-NmeHostPoolFsLogixPropertiesModel

Create an in-memory object for HostPoolFsLogixProperties.

**Output Type:** `HostPoolFsLogixProperties`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| CloudCacheEnabled | Boolean | Yes |  |
| ExclusionMode | String | Yes | Values: `None`, `Admins` |
| ForceUpdate | Boolean | Yes |  |
| PageBlobs | Boolean | Yes |  |
| ProfilesPath | String | Yes |  |
| RegistryOptions | String | Yes |  |
| SetupRegistryForAadJoinedStorage | Boolean | Yes |  |
| AppServiceRegistryOptionRegistryOptions | String | No |  |
| AppServiceRegistryOptionRegistryOptionsMode | String | No | Values: `None`, `Apply` |
| CloudCacheOfficeRegistryOptions | String | No |  |
| CloudCacheProfileRegistryOptions | String | No |  |
| CloudCacheRegistryOptions | String | No |  |
| ExclusionExcludedDomainAccounts | Object | No |  |
| FsLogixVersion | String | No |  |
| LogRegistryOptionRegistryOptions | String | No |  |
| LogRegistryOptionRegistryOptionsMode | String | No | Values: `None`, `Apply` |
| OfficeContainerPath | String | No |  |
| OfficeContainerRegistryOptions | String | No |  |
| RedirectionsXml | String | No |  |
| SecondaryOfficeContainerPath | String | No |  |
| SecondaryProfilesPath | String | No |  |

## Usage

```powershell
$model = New-NmeHostPoolFsLogixPropertiesModel `
    -CloudCacheEnabled $true `
    -ExclusionMode "None" `
    -ForceUpdate $true `
    -PageBlobs $true `
    -ProfilesPath "<ProfilesPath>" `
    -RegistryOptions "<RegistryOptions>" `
    -SetupRegistryForAadJoinedStorage $true
```

