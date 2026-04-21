# Update-NmeFsLogixProfile

**Endpoint:** `PATCH /api/v1/fslogix/{id}`

## Description

Update FSLogix profile

**Output Type:** `IFsLogixParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| AppServiceRegistryOptionRegistryOptions | String | No |  |
| AppServiceRegistryOptionRegistryOptionsMode | String | No | Values: `None`, `Apply` |
| CloudCache | SwitchParameter | No |  |
| CloudCacheRegistryOptionCommon | String | No |  |
| CloudCacheRegistryOptionOfficeContainer | String | No |  |
| CloudCacheRegistryOptionProfileContainer | String | No |  |
| EntraIdKerberos | SwitchParameter | No |  |
| ExclusionExcludedDomainAccounts | String[] | No |  |
| ExclusionMode | String | No | Values: `None`, `Admins` |
| InstallerForceUpdate | SwitchParameter | No |  |
| InstallerVersion | String | No |  |
| IsDefault | SwitchParameter | No |  |
| LogRegistryOptionRegistryOptions | String | No |  |
| LogRegistryOptionRegistryOptionsMode | String | No | Values: `None`, `Apply` |
| Name | String | No |  |
| OfficeContainerLocations | String[] | No |  |
| OfficeContainerOptions | String | No |  |
| PageBlobs | SwitchParameter | No |  |
| ProfileContainerLocations | String[] | No |  |
| ProfileContainerOptions | String | No |  |
| RedirectionsXml | String | No |  |

## Examples

```powershell
Update-NmeFsLogixProfile `
    -Id 0 `
    -IsDefault `
    -Name "FsLogixName"
```

