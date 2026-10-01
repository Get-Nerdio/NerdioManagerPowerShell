# New-NmeEntraIdTenantUpdateModel

Create an in-memory object for EntraIdTenantUpdate.

**Output Type:** `EntraIdTenantUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ClientAppId | String | No |  |
| FriendlyName | String | No |  |
| ServicePrincipalAppId | String | No |  |
| ServicePrincipalAppName | String | No |  |
| ServicePrincipalAppSecret | String | No |  |
| ServicePrincipalAzureType | String | No | Values: `AzureCloud`, `AzureUSGovernment`, `AzureChina` |
| ServicePrincipalCertificateName | String | No |  |

## Usage

```powershell
$model = New-NmeEntraIdTenantUpdateModel `
    -ClientAppId "<ClientAppId>" `
    -FriendlyName "<FriendlyName>" `
    -ServicePrincipalAppId "<ServicePrincipalAppId>" `
    -ServicePrincipalAppName "<ServicePrincipalAppName>" `
    -ServicePrincipalAppSecret "<ServicePrincipalAppSecret>" `
    -ServicePrincipalAzureType "AzureCloud" `
    -ServicePrincipalCertificateName "<ServicePrincipalCertificateName>"
```

