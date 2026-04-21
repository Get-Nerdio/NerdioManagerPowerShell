# New-NmeAutoScaleProfileCreateModel

Create an in-memory object for AutoScaleProfileCreate.

**Output Type:** `AutoScaleProfileCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Mode | String | Yes | Values: `Default`, `WorkingHours`, `UserDriven` |
| Name | String | Yes |  |
| Default | [IAutoScaleDefaultConfiguration](New-NmeAutoScaleDefaultConfigurationModel.md) | No |  |
| Description | String | No |  |
| UserDriven | [IAutoScaleUserDrivenConfigurationCreate](New-NmeAutoScaleUserDrivenConfigurationCreateModel.md) | No |  |
| WorkingHours | [IAutoScaleWorkingHoursConfiguration](New-NmeAutoScaleWorkingHoursConfigurationModel.md) | No |  |

## Usage

```powershell
$model = New-NmeAutoScaleProfileCreateModel `
    -Mode "Default" `
    -Name "<Name>"
```

### Mode-Specific Examples

**Mode = `Default`:**

```powershell
$rollingDrainModeWindows = New-NmeRollingDrainModeWindowModel `
    -Name "<Name>" `
    -Percent 0 `
    -StartTime "<StartTime>"
$triggers = New-NmeDynamicPoolTriggerInfoModel `
    -TriggerType "CPUUsage"
$default = New-NmeAutoScaleDefaultConfigurationModel `
    -AutoHealEnable $true `
    -AvdPropertyLoadBalancing "BreadthFirst" `
    -AvdPropertyMaxSessionsPerHost 0 `
    -AvdPropertyStartVMOnConnect $true `
    -PreStageEnable $true `
    -RestrictionEnable $true `
    -RestrictionPutToDrainMode $true `
    -RollingDrainModeIsEnabled $true `
    -RollingDrainModeWindows $rollingDrainModeWindows `
    -ScaleInPolicyAggressiveness "High" `
    -SizeActiveHostType "Running" `
    -SizeBurstCapacity 0 `
    -SizeHostPoolCapacity 0 `
    -SizeMinActiveHostsCount 0 `
    -Triggers $triggers

$model = New-NmeAutoScaleProfileCreateModel `
    -Mode "Default" `
    -Name "<Name>" `
    -Default $default
```

**Mode = `WorkingHours`:**

```powershell
$triggers = New-NmeDynamicPoolTriggerInfoModel `
    -TriggerType "CPUUsage"
$workingHours = New-NmeAutoScaleWorkingHoursConfigurationModel `
    -AutoHealEnable $true `
    -AvdPropertyStartVMOnConnect $true `
    -OSDiskPreStageMode "None" `
    -OSDiskPreStageTarget "All" `
    -PowerTimingPowerOffTiming "OneTime" `
    -PowerTimingPowerOnTiming "OneTime" `
    -PowerTimingTargetHosts "All" `
    -ScaleInPolicyAggressiveness "High" `
    -TimeIntervalDuration 0 `
    -TimeIntervalHour 0 `
    -Triggers $triggers `
    -WorkingHourDays "0"

$model = New-NmeAutoScaleProfileCreateModel `
    -Mode "WorkingHours" `
    -Name "<Name>" `
    -WorkingHours $workingHours
```

**Mode = `UserDriven`:**

```powershell
$triggers = New-NmeDynamicPoolTriggerInfoModel `
    -TriggerType "CPUUsage"
$userDriven = New-NmeAutoScaleUserDrivenConfigurationCreateModel `
    -AutoHealEnable $true `
    -AvdPropertyStartVMOnConnect $true `
    -OSDiskPreStageMode "None" `
    -OSDiskPreStageTarget "All" `
    -Triggers $triggers

$model = New-NmeAutoScaleProfileCreateModel `
    -Mode "UserDriven" `
    -Name "<Name>" `
    -UserDriven $userDriven
```

