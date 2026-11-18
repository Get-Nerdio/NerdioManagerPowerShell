# New-NmeNotificationActionConditionsUpdateModel

Create an in-memory object for NotificationActionConditionsUpdate.

**Output Type:** `NotificationActionConditionsUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HealthAlertConditionIds | Object | No |  |
| NerdioConditionIds | Object | No |  |

## Usage

```powershell
$model = New-NmeNotificationActionConditionsUpdateModel `
    -HealthAlertConditionIds "<HealthAlertConditionIds>" `
    -NerdioConditionIds "<NerdioConditionIds>"
```

