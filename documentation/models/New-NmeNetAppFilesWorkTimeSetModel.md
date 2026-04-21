# New-NmeNetAppFilesWorkTimeSetModel

Create an in-memory object for NetAppFilesWorkTimeSet.

**Output Type:** `NetAppFilesWorkTimeSet`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| EndTimeHour | Int32 | Yes |  |
| MaxSize | Int32 | Yes |  |
| MinSize | Int32 | Yes |  |
| StartTimeHour | Int32 | Yes |  |
| WorkDays | Object | Yes | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |

## Usage

```powershell
$model = New-NmeNetAppFilesWorkTimeSetModel `
    -EndTimeHour 0 `
    -MaxSize 0 `
    -MinSize 0 `
    -StartTimeHour 0 `
    -WorkDays "0"
```

