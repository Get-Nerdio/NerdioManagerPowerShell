# New-NmeAutoScaleProfileScheduleModel

Create an in-memory object for AutoScaleProfileSchedule.

**Output Type:** `AutoScaleProfileSchedule`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IsEnabled | Boolean | Yes |  |
| DateRanges | [IAutoScaleProfileScheduleDateRange[]](New-NmeAutoScaleProfileScheduleDateRangeModel.md) | No | Pass as array. |
| WeekDays | Object | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |

## Usage

```powershell
$model = New-NmeAutoScaleProfileScheduleModel `
    -IsEnabled $true
```

