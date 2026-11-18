# Update-NmeCloudPcAlertCondition

**Endpoint:** `PATCH /api/v1/cloud-pc/tenant/{tenantId}/alert-condition/{id}`

## Description

Update Cloud PC alert condition by id.

Only identity tenant is currently supported.

**Output Type:** `IResponseWithJobAndCloudPcAlertCondition`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | String | Yes |  |
| TenantId | String | Yes |  |
| Conditions | [ICloudPcAlertRuleConditionUpdate[]](../models/New-NmeCloudPcAlertRuleConditionUpdateModel.md) | No |  |
| Enabled | SwitchParameter | No |  |
| IsPortalPopupNotificationEnabled | SwitchParameter | No |  |
| NotificationEmailAddresses | String[] | No |  |
| PassThru | SwitchParameter | No | Returns true when the command succeeds |
| SeverityType | String | No | Values: `Unknown`, `Informational`, `Warning`, `Critical` |

## Examples

```powershell
$conditions = New-NmeCloudPcAlertRuleConditionUpdateModel `
    -AggregationType "Unknown" `
    -Category "Unknown"
Update-NmeCloudPcAlertCondition `
    -Id "<Id>" `
    -TenantId "<TenantId>" `
    -Conditions @($conditions) `
    -Enabled `
    -IsPortalPopupNotificationEnabled `
    -NotificationEmailAddresses @("administrator@contoso.com") `
    -SeverityType "Warning"
```

