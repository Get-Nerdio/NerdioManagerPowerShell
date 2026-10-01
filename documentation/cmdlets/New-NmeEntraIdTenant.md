# New-NmeEntraIdTenant

**Endpoint:** `POST /api/v1/entra-id-tenants`

## Description

Link an Entra ID tenant

**Output Type:** `IResponseWithJobAndEntraIdTenant`

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

## Examples

```powershell
New-NmeEntraIdTenant -TenantId "<TenantId>"
```

