# Update-NmeEntraIdTenant

**Endpoint:** `PATCH /api/v1/entra-id-tenants/{tenantId}`

## Description

Update a linked Entra ID tenant

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
Update-NmeEntraIdTenant -TenantId "<TenantId>"
```

