# New-NmeNotificationActionConditionsModel

Create an in-memory object for NotificationActionConditions.

**Output Type:** `NotificationActionConditions`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HealthAlertConditionIds | Object | Yes |  |
| NerdioConditionIds | Object | Yes |  |

## Usage

```powershell
$model = New-NmeNotificationActionConditionsModel `
    -HealthAlertConditionIds "<HealthAlertConditionIds>" `
    -NerdioConditionIds "<NerdioConditionIds>"
```

