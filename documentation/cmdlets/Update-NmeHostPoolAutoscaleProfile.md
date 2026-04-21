# Update-NmeHostPoolAutoscaleProfile

**Endpoint:** `PATCH /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/auto-scale/profile-override/{assignmentType}`

**Output Type:** `IAutoScaleProfileOverride`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AssignmentType | String | Yes | Values: `Primary`, `Secondary` |
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| ConfigDays | Int32[] | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| ConfigHostsToBeReady | Int32 | No |  |
| ConfigHostsToBeReadyMeasureType | String | No | Values: `Count`, `Percent` |
| ConfigPreStageDiskType | SwitchParameter | No |  |
| ConfigPreStageUnassigned | SwitchParameter | No |  |
| ConfigPreStageUnassignedHosts | SwitchParameter | No |  |
| FlagPreStage | SwitchParameter | No |  |
| FlagRollingDrainMode | SwitchParameter | No |  |
| FlagSize | SwitchParameter | No |  |
| PreStageConfigs | [IPreStageHostsConfigurationItem[]](../models/New-NmePreStageHostsConfigurationItemModel.md) | No |  |
| PreStageEnable | SwitchParameter | No |  |
| PreStageIntelligentPrestageMode | String | No | Values: `Hybrid`, `Automated` |
| PreStageIsMultipleConfigsMode | SwitchParameter | No |  |
| RollingDrainModeIsEnabled | SwitchParameter | No |  |
| RollingDrainModeWindows | [IRollingDrainModeWindow[]](../models/New-NmeRollingDrainModeWindowModel.md) | No |  |
| SizeActiveHostType | String | No | Values: `Running`, `AvailableForConnection` |
| SizeBurstCapacity | Int32 | No |  |
| SizeHostPoolCapacity | Int32 | No |  |
| SizeMinActiveHostsCount | Int32 | No |  |
| StartWorkDuration | Int32 | No |  |
| StartWorkHour | Int32 | No |  |
| StartWorkMinutes | Int32 | No |  |

## Examples

### Example 1: No changes

```powershell
Update-NmeHostPoolAutoscaleProfile `
    -AssignmentType "Primary" `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

### Example 2: Change existing pre-stage hosts configuration

```powershell
Update-NmeHostPoolAutoscaleProfile `
    -AssignmentType "Primary" `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -ConfigDays @(1) `
    -ConfigHostsToBeReady 1 `
    -ConfigHostsToBeReadyMeasureType "Count" `
    -PreStageEnable `
    -StartWorkDuration 5 `
    -StartWorkHour 1 `
    -StartWorkMinutes 0
```

### Example 3: Enable only new pre-stage hosts configuration and disable others

```powershell
Update-NmeHostPoolAutoscaleProfile `
    -AssignmentType "Primary" `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -ConfigDays @(1) `
    -ConfigHostsToBeReady 1 `
    -ConfigHostsToBeReadyMeasureType "Count" `
    -FlagPreStage `
    -PreStageEnable `
    -StartWorkDuration 5 `
    -StartWorkHour 1 `
    -StartWorkMinutes 0
```

### Example 4: Full change

```powershell
$rollingDrainModeWindows = New-NmeRollingDrainModeWindowModel `
    -Name "name" `
    -Percent 10 `
    -StartTime "02:00:00"
Update-NmeHostPoolAutoscaleProfile `
    -AssignmentType "Primary" `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -ConfigDays @(1) `
    -ConfigHostsToBeReady 1 `
    -ConfigHostsToBeReadyMeasureType "Count" `
    -FlagPreStage `
    -FlagRollingDrainMode `
    -FlagSize `
    -PreStageEnable `
    -RollingDrainModeIsEnabled `
    -RollingDrainModeWindows @($rollingDrainModeWindows) `
    -SizeActiveHostType "Running" `
    -SizeBurstCapacity 1 `
    -SizeHostPoolCapacity 1 `
    -SizeMinActiveHostsCount 1 `
    -StartWorkDuration 5 `
    -StartWorkHour 1 `
    -StartWorkMinutes 0
```

