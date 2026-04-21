# New-NmeWorkingHoursModel

Create an in-memory object for WorkingHours.

**Output Type:** `WorkingHours`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Days | Object | Yes | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| TimeIntervalDuration | Int32 | Yes |  |
| TimeIntervalHour | Int32 | Yes |  |
| TimeIntervalMinutes | Int32 | No |  |

## Usage

```powershell
$model = New-NmeWorkingHoursModel `
    -Days "0" `
    -TimeIntervalDuration 0 `
    -TimeIntervalHour 0
```

