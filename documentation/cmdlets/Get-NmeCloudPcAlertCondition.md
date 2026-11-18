# Get-NmeCloudPcAlertCondition

**Endpoint:** `GET /api/v1/cloud-pc/tenant/{tenantId}/alert-condition`

## Description

Get a list of Cloud PC alert conditions.

Only identity tenant is currently supported.

**Output Type:** `ICloudPcAlertCondition`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| TenantId | String | Yes |  |
| PassThru | SwitchParameter | No | Returns true when the command succeeds |

## Examples

```powershell
Get-NmeCloudPcAlertCondition -TenantId "<TenantId>"
```

