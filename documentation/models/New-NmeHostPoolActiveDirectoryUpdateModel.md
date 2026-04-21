# New-NmeHostPoolActiveDirectoryUpdateModel

Create an in-memory object for HostPoolActiveDirectoryUpdate.

**Output Type:** `HostPoolActiveDirectoryUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Type | String | Yes | Values: `Default`, `Predefined`, `Custom` |
| CustomAdIdentityType | String | No | Values: `AD`, `AzureAD`, `AzureADDS` |
| CustomDomain | String | No |  |
| CustomEnrollWithIntune | Boolean | No |  |
| CustomFriendlyName | String | No |  |
| CustomOrganizationUnit | String | No |  |
| CustomPassword | String | No |  |
| CustomUsername | String | No |  |
| PredefinedConfigId | Int32 | No |  |

## Usage

```powershell
$model = New-NmeHostPoolActiveDirectoryUpdateModel `
    -Type "Default"
```

