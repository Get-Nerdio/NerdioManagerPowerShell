# Remove-NmeEntraIdTenant

**Endpoint:** `DELETE /api/v1/entra-id-tenants/{tenantId}`

## Description

Unlink an Entra ID tenant

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| TenantId | String | Yes |  |

## Examples

```powershell
Remove-NmeEntraIdTenant -TenantId "<TenantId>"
```

