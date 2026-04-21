# New-NmeAdConfigPropertiesWithPasswordModel

Create an in-memory object for AdConfigPropertiesWithPassword.

**Output Type:** `AdConfigPropertiesWithPassword`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AdIdentityType | String | Yes | Values: `AD`, `AzureAD`, `AzureADDS` |
| Domain | String | No |  |
| EnrollWithIntune | Boolean | No |  |
| FriendlyName | String | No |  |
| OrganizationUnit | String | No |  |
| Password | String | No |  |
| Username | String | No |  |

## Usage

```powershell
$model = New-NmeAdConfigPropertiesWithPasswordModel `
    -AdIdentityType "AD"
```

