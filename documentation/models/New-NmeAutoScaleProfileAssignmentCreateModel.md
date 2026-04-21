# New-NmeAutoScaleProfileAssignmentCreateModel

Create an in-memory object for AutoScaleProfileAssignmentCreate.

**Output Type:** `AutoScaleProfileAssignmentCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolId | String | Yes |  |
| Type | String | Yes | Values: `Primary`, `Secondary` |
| ScheduleDateRanges | [IAutoScaleProfileScheduleDateRange[]](New-NmeAutoScaleProfileScheduleDateRangeModel.md) | No | Pass as array. |
| ScheduleIsEnabled | Boolean | No |  |
| ScheduleWeekDays | Object | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |

## Usage

```powershell
$model = New-NmeAutoScaleProfileAssignmentCreateModel `
    -HostPoolId "<HostPoolId>" `
    -Type "Primary"
```

