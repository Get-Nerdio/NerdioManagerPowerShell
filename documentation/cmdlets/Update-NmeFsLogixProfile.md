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
| CloudCache | SwitchParameter | No | Enable FSLogix Cloud Cache. |
| CloudCacheRegistryOptionCommon | String | No |  |
| CloudCacheRegistryOptionOfficeContainer | String | No |  |
| CloudCacheRegistryOptionProfileContainer | String | No |  |
| EntraIdKerberos | SwitchParameter | No | Enable Entra ID Kerberos functionality and Entra ID account credentials loading. |
| ExclusionExcludedDomainAccounts | String[] | No |  |
| ExclusionMode | String | No | Values: `None`, `Admins` |
| InstallerForceUpdate | SwitchParameter | No | This option is used to force the re-installation of the FSLogix agent and applications. |
| InstallerVersion | String | No | FsLogix installer version. |
| IsDefault | SwitchParameter | No |  |
| LogRegistryOptionRegistryOptions | String | No |  |
| LogRegistryOptionRegistryOptionsMode | String | No | Values: `None`, `Apply` |
| Name | String | No |  |
| OfficeContainerLocations | String[] | No |  |
| OfficeContainerOptions | String | No |  |
| PageBlobs | SwitchParameter | No | Use storage account blob containers to store users profiles. |
| ProfileContainerLocations | String[] | No |  |
| ProfileContainerOptions | String | No |  |
| RedirectionsXml | String | No | See this Microsoft doc for more info.https://learn.microsoft.com/en-us/fslogix/concepts-redirections-xml |

## Examples

```powershell
Update-NmeFsLogixProfile `
    -Id 0 `
    -IsDefault `
    -Name "FsLogixName"
```

