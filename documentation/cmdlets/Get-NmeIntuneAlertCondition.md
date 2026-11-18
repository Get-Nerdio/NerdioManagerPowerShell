# Get-NmeIntuneAlertCondition

**Endpoint:** `GET /api/v1/intune/tenant/{tenantId}/alert-condition`

## Description

Get a list of Intune alert conditions.

Only identity tenant is currently supported.

**Output Type:** `IIntuneAlertCondition`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| TenantId | String | Yes |  |
| PassThru | SwitchParameter | No | Returns true when the command succeeds |

## Examples

```powershell
Get-NmeIntuneAlertCondition -TenantId "<TenantId>"
```

