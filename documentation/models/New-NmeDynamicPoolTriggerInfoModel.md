# New-NmeDynamicPoolTriggerInfoModel

Create an in-memory object for DynamicPoolTriggerInfo.

**Output Type:** `DynamicPoolTriggerInfo`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| TriggerType | String | Yes | Values: `CPUUsage`, `RAMUsage`, `AvgActiveSessions`, `AvailableUserSessionSingle`, `AvailableUserSessions`, `UserDriven`, `PersonalAutoGrow`, `PersonalAutoShrink` |
| AvailableSessionEndWorkHours | String | No |  |
| AvailableSessionMaxAvailableUserSessions | Int32 | No |  |
| AvailableSessionMinAvailableUserSessions | Int32 | No |  |
| AvailableSessionOutsideWorkHoursSessions | Int32 | No |  |
| AvailableSessionRestriction | String | No | Values: `Always`, `DuringWorkHours` |
| AverageSessionsScaleInHostChangeCount | Int32 | No |  |
| AverageSessionsScaleInValue | Single | No |  |
| AverageSessionsScaleOutHostChangeCount | Int32 | No |  |
| AverageSessionsScaleOutValue | Single | No |  |
| CpuScaleInAverageTimeRangeInMinutes | Int32 | No |  |
| CpuScaleInHostChangeCount | Int32 | No |  |
| CpuScaleInValue | Single | No |  |
| CpuScaleOutAverageTimeRangeInMinutes | Int32 | No |  |
| CpuScaleOutHostChangeCount | Int32 | No |  |
| CpuScaleOutValue | Single | No |  |
| PersonalAutoGrowUnassignedThreshold | Int32 | No |  |
| PersonalAutoGrowUnit | Int32 | No | Values: `0`, `1` |
| PersonalAutoShrinkAdminNotificationEmails | Object | No |  |
| PersonalAutoShrinkAdminNotificationSubjectTemplate | String | No |  |
| PersonalAutoShrinkAdminNotificationTemplate | String | No |  |
| PersonalAutoShrinkDeletionDelay | Int32 | No |  |
| PersonalAutoShrinkExcludeUnassigned | Boolean | No |  |
| PersonalAutoShrinkExludedObjects | [IAutoScaleAdObject[]](New-NmeAutoScaleAdObjectModel.md) | No | Pass as array. |
| PersonalAutoShrinkHostIdleDaysThreshold | Int32 | No |  |
| PersonalAutoShrinkIsNotificationsEnabled | Boolean | No |  |
| PersonalAutoShrinkNotificationFrequency | Int32 | No |  |
| PersonalAutoShrinkNotificationMailbox | String | No |  |
| PersonalAutoShrinkNotificationSubjectTemplate | String | No |  |
| PersonalAutoShrinkNotificationTemplate | String | No |  |
| PersonalAutoShrinkScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |
| RamScaleInAverageTimeRangeInMinutes | Int32 | No |  |
| RamScaleInHostChangeCount | Int32 | No |  |
| RamScaleInValue | Single | No |  |
| RamScaleOutAverageTimeRangeInMinutes | Int32 | No |  |
| RamScaleOutHostChangeCount | Int32 | No |  |
| RamScaleOutValue | Single | No |  |
| UserDrivenBypassDrainMode | Boolean | No |  |
| UserDrivenMinAvailableSessions | Int32 | No |  |
| UserDrivenStopDelayMinutes | Int32 | No |  |

## Usage

```powershell
$model = New-NmeDynamicPoolTriggerInfoModel `
    -TriggerType "CPUUsage"
```

