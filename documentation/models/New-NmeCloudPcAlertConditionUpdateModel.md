# New-NmeCloudPcAlertConditionUpdateModel

Create an in-memory object for CloudPcAlertConditionUpdate.

**Output Type:** `CloudPcAlertConditionUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Conditions | [ICloudPcAlertRuleConditionUpdate[]](New-NmeCloudPcAlertRuleConditionUpdateModel.md) | No | Pass as array. |
| Enabled | Boolean | No |  |
| IsPortalPopupNotificationEnabled | Boolean | No |  |
| NotificationEmailAddresses | Object | No |  |
| SeverityType | String | No | Values: `Unknown`, `Informational`, `Warning`, `Critical` |

## Usage

```powershell
$conditions = New-NmeCloudPcAlertRuleConditionUpdateModel `
    -AggregationType "Unknown" `
    -Category "Unknown"
$model = New-NmeCloudPcAlertConditionUpdateModel `
    -Conditions $conditions `
    -Enabled $true `
    -IsPortalPopupNotificationEnabled $true `
    -NotificationEmailAddresses "<NotificationEmailAddresses>" `
    -SeverityType "Unknown"
```

