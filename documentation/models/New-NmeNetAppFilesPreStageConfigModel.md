# New-NmeNetAppFilesPreStageConfigModel

Create an in-memory object for NetAppFilesPreStageConfig.

**Output Type:** `NetAppFilesPreStageConfig`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IsEnabled | Boolean | Yes |  |
| TimezoneId | String | No |  |
| WorkTimeSets | [INetAppFilesWorkTimeSet[]](New-NmeNetAppFilesWorkTimeSetModel.md) | No | Pass as array. |

## Usage

```powershell
$model = New-NmeNetAppFilesPreStageConfigModel `
    -IsEnabled $true
```

