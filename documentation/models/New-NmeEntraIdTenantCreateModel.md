# New-NmeEntraIdTenantCreateModel

Create an in-memory object for EntraIdTenantCreate.

**Output Type:** `EntraIdTenantCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| TenantId | String | Yes |  |
| ClientAppId | String | No |  |
| FriendlyName | String | No |  |
| ServicePrincipalAppId | String | No |  |
| ServicePrincipalAppName | String | No |  |
| ServicePrincipalAppSecret | String | No |  |
| ServicePrincipalAzureType | String | No | Values: `AzureCloud`, `AzureUSGovernment`, `AzureChina` |
| ServicePrincipalCertificateName | String | No |  |

## Usage

```powershell
$model = New-NmeEntraIdTenantCreateModel `
    -TenantId "<TenantId>"
```

