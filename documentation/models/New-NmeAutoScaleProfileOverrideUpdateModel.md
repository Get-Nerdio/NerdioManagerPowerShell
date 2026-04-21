# New-NmeAutoScaleProfileOverrideUpdateModel

Create an in-memory object for AutoScaleProfileOverrideUpdate.

**Output Type:** `AutoScaleProfileOverrideUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ConfigDays | Object | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| ConfigHostsToBeReady | Int32 | No |  |
| ConfigHostsToBeReadyMeasureType | String | No | Values: `Count`, `Percent` |
| ConfigPreStageDiskType | Boolean | No |  |
| ConfigPreStageUnassigned | Boolean | No |  |
| ConfigPreStageUnassignedHosts | Boolean | No |  |
| FlagPreStage | Boolean | No |  |
| FlagRollingDrainMode | Boolean | No |  |
| FlagSize | Boolean | No |  |
| PreStageConfigs | [IPreStageHostsConfigurationItem[]](New-NmePreStageHostsConfigurationItemModel.md) | No | Pass as array. |
| PreStageEnable | Boolean | No |  |
| PreStageIntelligentPrestageMode | String | No | Values: `Hybrid`, `Automated` |
| PreStageIsMultipleConfigsMode | Boolean | No |  |
| RollingDrainModeIsEnabled | Boolean | No |  |
| RollingDrainModeWindows | [IRollingDrainModeWindow[]](New-NmeRollingDrainModeWindowModel.md) | No | Pass as array. |
| SizeActiveHostType | String | No | Values: `Running`, `AvailableForConnection` |
| SizeBurstCapacity | Int32 | No |  |
| SizeHostPoolCapacity | Int32 | No |  |
| SizeMinActiveHostsCount | Int32 | No |  |
| StartWorkDuration | Int32 | No |  |
| StartWorkHour | Int32 | No |  |
| StartWorkMinutes | Int32 | No |  |

## Usage

```powershell
$preStageConfigs = New-NmePreStageHostsConfigurationItemModel `
    -Days "0" `
    -HostsToBeReady 0 `
    -HostsToBeReadyMeasureType "Count" `
    -PreStageDiskType $true `
    -PreStageUnassigned $true `
    -PreStageUnassignedHosts $true `
    -StartWorkDuration 0 `
    -StartWorkHour 0
$rollingDrainModeWindows = New-NmeRollingDrainModeWindowModel `
    -Name "<Name>" `
    -Percent 0 `
    -StartTime "<StartTime>"
$model = New-NmeAutoScaleProfileOverrideUpdateModel `
    -ConfigDays "0" `
    -ConfigHostsToBeReady 0 `
    -ConfigHostsToBeReadyMeasureType "Count" `
    -ConfigPreStageDiskType $true `
    -ConfigPreStageUnassigned $true `
    -ConfigPreStageUnassignedHosts $true `
    -FlagPreStage $true `
    -FlagRollingDrainMode $true `
    -FlagSize $true `
    -PreStageConfigs $preStageConfigs `
    -PreStageEnable $true `
    -PreStageIntelligentPrestageMode "Hybrid" `
    -PreStageIsMultipleConfigsMode $true `
    -RollingDrainModeIsEnabled $true `
    -RollingDrainModeWindows $rollingDrainModeWindows `
    -SizeActiveHostType "Running" `
    -SizeBurstCapacity 0 `
    -SizeHostPoolCapacity 0 `
    -SizeMinActiveHostsCount 0 `
    -StartWorkDuration 0 `
    -StartWorkHour 0 `
    -StartWorkMinutes 0
```

