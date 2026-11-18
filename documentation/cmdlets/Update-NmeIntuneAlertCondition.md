# Update-NmeIntuneAlertCondition

**Endpoint:** `PATCH /api/v1/intune/tenant/{tenantId}/alert-condition/{id}`

## Description

Update Intune alert condition by id.

Only identity tenant is currently supported.

**Output Type:** `IResponseWithJobAndIntuneAlertCondition`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| TenantId | String | Yes |  |
| Name | String | No |  |
| PassThru | SwitchParameter | No | Returns true when the command succeeds |
| SeverityType | Int32 | No |  |

## Examples

### Example 1: Rename

```powershell
Update-NmeIntuneAlertCondition `
    -Id 0 `
    -TenantId "<TenantId>" `
    -Name "Compliance issues (critical)"
```

### Example 2: Change severity

```powershell
Update-NmeIntuneAlertCondition `
    -Id 0 `
    -TenantId "<TenantId>" `
    -SeverityType 3
```

