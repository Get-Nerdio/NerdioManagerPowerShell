# New-NmeNetAppFilesPreStageConfigUpdateModel

Create an in-memory object for NetAppFilesPreStageConfigUpdate.

**Output Type:** `NetAppFilesPreStageConfigUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IsEnabled | Boolean | No |  |
| TimezoneId | String | No |  |
| WorkTimeSets | [INetAppFilesWorkTimeSet[]](New-NmeNetAppFilesWorkTimeSetModel.md) | No | Pass as array. |

## Usage

```powershell
$workTimeSets = New-NmeNetAppFilesWorkTimeSetModel `
    -EndTimeHour 0 `
    -MaxSize 0 `
    -MinSize 0 `
    -StartTimeHour 0 `
    -WorkDays "0"
$model = New-NmeNetAppFilesPreStageConfigUpdateModel `
    -IsEnabled $true `
    -TimezoneId "<TimezoneId>" `
    -WorkTimeSets $workTimeSets
```

