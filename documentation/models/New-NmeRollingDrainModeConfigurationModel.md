# New-NmeRollingDrainModeConfigurationModel

Create an in-memory object for RollingDrainModeConfiguration.

**Output Type:** `RollingDrainModeConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IsEnabled | Boolean | Yes |  |
| Windows | [IRollingDrainModeWindow[]](New-NmeRollingDrainModeWindowModel.md) | Yes | Pass as array. |

## Usage

```powershell
$windows = New-NmeRollingDrainModeWindowModel `
    -Name "<Name>" `
    -Percent 0 `
    -StartTime "<StartTime>"
$model = New-NmeRollingDrainModeConfigurationModel `
    -IsEnabled $true `
    -Windows $windows
```

