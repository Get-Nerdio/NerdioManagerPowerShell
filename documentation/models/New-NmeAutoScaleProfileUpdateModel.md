# New-NmeAutoScaleProfileUpdateModel

Create an in-memory object for AutoScaleProfileUpdate.

**Output Type:** `AutoScaleProfileUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Default | [IAutoScaleDefaultConfigurationUpdate](New-NmeAutoScaleDefaultConfigurationUpdateModel.md) | No |  |
| Description | String | No |  |
| Name | String | No |  |
| UserDriven | [IAutoScaleUserDrivenConfigurationUpdate](New-NmeAutoScaleUserDrivenConfigurationUpdateModel.md) | No |  |
| WorkingHours | [IAutoScaleWorkingHoursConfigurationUpdate](New-NmeAutoScaleWorkingHoursConfigurationUpdateModel.md) | No |  |

## Usage

```powershell
$autoHealConfigs = New-NmeAutoHealConfigurationItemModel `
    -SessionCriteria "WithoutSessions" `
    -WaitMinutes 0 `
    -WvdStatuses "Available"
$configActions = New-NmeAutoHealActionModel `
    -Type "RestartVm"
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
$triggers = New-NmeDynamicPoolTriggerInfoModel `
    -TriggerType "CPUUsage"
$default = New-NmeAutoScaleDefaultConfigurationUpdateModel `
    -AutoHealConfigs $autoHealConfigs `
    -AutoHealEnable $true `
    -AvdPropertyLoadBalancing "BreadthFirst" `
    -AvdPropertyMaxSessionsPerHost 0 `
    -AvdPropertyStartVMOnConnect $true `
    -ConfigActions $configActions `
    -ConfigDays "0" `
    -ConfigHostsToBeReady 0 `
    -ConfigHostsToBeReadyMeasureType "Count" `
    -ConfigPreStageDiskType $true `
    -ConfigPreStageUnassigned $true `
    -ConfigPreStageUnassignedHosts $true `
    -ConfigSessionCriteria "WithoutSessions" `
    -ConfigStaleHeartbeatMinutes 0 `
    -ConfigWaitMinutes 0 `
    -ConfigWaitMinutesBeforeFirstAction 0 `
    -ConfigWvdStatuses "Available" `
    -MessagingMessage "<MessagingMessage>" `
    -MessagingMinutesBeforeRemove 0 `
    -PreStageConfigs $preStageConfigs `
    -PreStageEnable $true `
    -PreStageIntelligentPrestageMode "Hybrid" `
    -PreStageIsMultipleConfigsMode $true `
    -RestrictionEnable $true `
    -RestrictionPutToDrainMode $true `
    -RollingDrainModeIsEnabled $true `
    -RollingDrainModeWindows $rollingDrainModeWindows `
    -ScaleInPolicyAggressiveness "High" `
    -SizeActiveHostType "Running" `
    -SizeBurstCapacity 0 `
    -SizeHostPoolCapacity 0 `
    -SizeMinActiveHostsCount 0 `
    -StartWorkDuration 0 `
    -StartWorkHour 0 `
    -StartWorkMinutes 0 `
    -TimeRangeEndHour 0 `
    -TimeRangeEndMinutes 0 `
    -TimeRangeStartHour 0 `
    -TimeRangeStartMinutes 0 `
    -Triggers $triggers
$preStageHostConfigs = New-NmeUserDrivenPreStageHostsConfigurationItemModel `
    -Days "0" `
    -DurationMinutes 0 `
    -StartWork "<StartWork>"
$userDriven = New-NmeAutoScaleUserDrivenConfigurationUpdateModel `
    -AutoHealConfigs $autoHealConfigs `
    -AutoHealEnable $true `
    -AvdPropertyStartVMOnConnect $true `
    -ConfigActions $configActions `
    -ConfigSessionCriteria "WithoutSessions" `
    -ConfigStaleHeartbeatMinutes 0 `
    -ConfigWaitMinutes 0 `
    -ConfigWaitMinutesBeforeFirstAction 0 `
    -ConfigWvdStatuses "Available" `
    -OSDiskPreStageMode "None" `
    -OSDiskPreStageTarget "All" `
    -PreStageHostConfigs $preStageHostConfigs `
    -PreStageHostEnable $true `
    -PreStageHostPreStageIfUnassigned $true `
    -TimeIntervalDuration 0 `
    -TimeIntervalHour 0 `
    -TimeIntervalMinutes 0 `
    -Triggers $triggers `
    -WorkingHourDays "0"
$workingHours = New-NmeAutoScaleWorkingHoursConfigurationUpdateModel `
    -AutoHealConfigs $autoHealConfigs `
    -AutoHealEnable $true `
    -AvdPropertyStartVMOnConnect $true `
    -ConfigActions $configActions `
    -ConfigSessionCriteria "WithoutSessions" `
    -ConfigStaleHeartbeatMinutes 0 `
    -ConfigWaitMinutes 0 `
    -ConfigWaitMinutesBeforeFirstAction 0 `
    -ConfigWvdStatuses "Available" `
    -MessagingMessage "<MessagingMessage>" `
    -MessagingMinutesBeforeRemove 0 `
    -OSDiskPreStageMode "None" `
    -OSDiskPreStageTarget "All" `
    -PowerTimingPowerOffTiming "OneTime" `
    -PowerTimingPowerOnTiming "OneTime" `
    -PowerTimingTargetHosts "All" `
    -ScaleInPolicyAggressiveness "High" `
    -TimeIntervalDuration 0 `
    -TimeIntervalHour 0 `
    -TimeIntervalMinutes 0 `
    -Triggers $triggers `
    -WorkingHourDays "0"
$model = New-NmeAutoScaleProfileUpdateModel `
    -Default $default `
    -Description "<Description>" `
    -Name "<Name>" `
    -UserDriven $userDriven `
    -WorkingHours $workingHours
```

