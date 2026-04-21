# Set-NmeAutoScaleProfileAssignment

**Endpoint:** `POST /api/v1/auto-scale-profile/{profileId}/assignments`

**Output Type:** `IAutoScaleProfileAssignment`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolId | String | Yes |  |
| ProfileId | Int32 | Yes |  |
| Type | String | Yes | Values: `Primary`, `Secondary` |
| ScheduleDateRanges | [IAutoScaleProfileScheduleDateRange[]](../models/New-NmeAutoScaleProfileScheduleDateRangeModel.md) | No |  |
| ScheduleIsEnabled | SwitchParameter | No |  |
| ScheduleWeekDays | Int32[] | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |

## Examples

### Example 1: Primary

```powershell
Set-NmeAutoScaleProfileAssignment `
    -HostPoolId "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DesktopVirtualization/hostPools/{hostPoolName}" `
    -ProfileId 0 `
    -Type "Primary"
```

### Example 2: Secondary with date ranges

```powershell
$scheduleDateRanges = New-NmeAutoScaleProfileScheduleDateRangeModel `
    -EndDate "04/25/2026 09:53:41" `
    -StartDate "04/15/2026 09:53:41"
Set-NmeAutoScaleProfileAssignment `
    -HostPoolId "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DesktopVirtualization/hostPools/{hostPoolName}" `
    -ProfileId 0 `
    -Type "Secondary" `
    -ScheduleDateRanges @($scheduleDateRanges) `
    -ScheduleIsEnabled
```

### Example 3: Secondary with week days

```powershell
Set-NmeAutoScaleProfileAssignment `
    -HostPoolId "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DesktopVirtualization/hostPools/{hostPoolName}" `
    -ProfileId 0 `
    -Type "Secondary" `
    -ScheduleIsEnabled `
    -ScheduleWeekDays @(1)
```

### Example 4: Secondary disabled

```powershell
Set-NmeAutoScaleProfileAssignment `
    -HostPoolId "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DesktopVirtualization/hostPools/{hostPoolName}" `
    -ProfileId 0 `
    -Type "Secondary"
```

