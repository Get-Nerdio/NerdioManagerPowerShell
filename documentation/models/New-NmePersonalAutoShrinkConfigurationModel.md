# New-NmePersonalAutoShrinkConfigurationModel

Create an in-memory object for PersonalAutoShrinkConfiguration.

**Output Type:** `PersonalAutoShrinkConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| DeletionDelay | Int32 | Yes |  |
| HostIdleDaysThreshold | Int32 | Yes |  |
| AdminNotificationEmails | Object | No |  |
| AdminNotificationSubjectTemplate | String | No |  |
| AdminNotificationTemplate | String | No |  |
| ExcludeUnassigned | Boolean | No |  |
| ExludedObjects | [IAutoScaleAdObject[]](New-NmeAutoScaleAdObjectModel.md) | No | Pass as array. |
| IsNotificationsEnabled | Boolean | No |  |
| NotificationFrequency | Int32 | No |  |
| NotificationMailbox | String | No |  |
| NotificationSubjectTemplate | String | No |  |
| NotificationTemplate | String | No |  |
| ScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |

## Usage

```powershell
$model = New-NmePersonalAutoShrinkConfigurationModel `
    -DeletionDelay 0 `
    -HostIdleDaysThreshold 0
```

