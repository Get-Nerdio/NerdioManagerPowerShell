# New-NmeTimeRangeModel

Create an in-memory object for TimeRange.

**Output Type:** `TimeRange`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| EndHour | Int32 | Yes |  |
| EndMinutes | Int32 | Yes |  |
| StartHour | Int32 | Yes |  |
| StartMinutes | Int32 | Yes |  |

## Usage

```powershell
$model = New-NmeTimeRangeModel `
    -EndHour 0 `
    -EndMinutes 0 `
    -StartHour 0 `
    -StartMinutes 0
```

