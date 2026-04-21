# New-NmeTimeIntervalModel

Create an in-memory object for TimeInterval.

**Output Type:** `TimeInterval`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Duration | Int32 | Yes |  |
| Hour | Int32 | Yes |  |
| Minutes | Int32 | No |  |

## Usage

```powershell
$model = New-NmeTimeIntervalModel `
    -Duration 0 `
    -Hour 0
```

