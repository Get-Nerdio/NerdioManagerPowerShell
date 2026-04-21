# New-NmeIntuneDeviceConsoleConnectConnection

**Endpoint:** `POST /api/v1/intune/tenant/{tenantId}/device/{managedId}/console-connect/connect`

**Output Type:** `IResponseWithJobAndConsoleConnectConnectionResponse`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ManagedId | String | Yes |  |
| TenantId | String | Yes |  |
| UserName | String | No |  |

## Examples

```powershell
New-NmeIntuneDeviceConsoleConnectConnection `
    -ManagedId "<ManagedId>" `
    -TenantId "<TenantId>"
```

