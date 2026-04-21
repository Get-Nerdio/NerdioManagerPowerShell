# Set-NmeHostPoolAutoScale

**Endpoint:** `PUT /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/auto-scale`

## Description

Update auto-scale config for ARM host pool

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ActiveHostType | String | Yes | Values: `Running`, `AvailableForConnection` |
| AutoHealEnable | SwitchParameter | Yes |  |
| BurstCapacity | Int32 | Yes |  |
| HostPoolCapacity | Int32 | Yes |  |
| HostPoolName | String | Yes |  |
| IsEnabled | SwitchParameter | Yes |  |
| IsSingleUserDesktop | SwitchParameter | Yes |  |
| MinActiveHostsCount | Int32 | Yes |  |
| MultiTriggers | SwitchParameter | Yes |  |
| PreStageHostEnable | SwitchParameter | Yes |  |
| ReImageUsedHosts | SwitchParameter | Yes |  |
| ReImageUsedHostsMode | String | Yes | Values: `Disabled`, `Always`, `OnlyWhenScaleInIsAllowed` |
| ResourceGroup | String | Yes |  |
| ScaleInAggressiveness | String | Yes | Values: `High`, `Medium`, `Low` |
| ScaleInRestrictionEnable | SwitchParameter | Yes |  |
| ScaleInRestrictionPutToDrainMode | SwitchParameter | Yes |  |
| ScalingMode | String | Yes | Values: `Default`, `WorkingHours`, `UserDriven` |
| SubscriptionId | String | Yes |  |
| ActiveSessionsScaleCriteriaScaleInHostChangeCount | Int32 | No |  |
| ActiveSessionsScaleCriteriaScaleInValue | Single | No |  |
| ActiveSessionsScaleCriteriaScaleOutHostChangeCount | Int32 | No |  |
| ActiveSessionsScaleCriteriaScaleOutValue | Single | No |  |
| AdditionalNetworks | String[] | No |  |
| AutoHealConfigs | [IAutoHealConfigurationItem[]](../models/New-NmeAutoHealConfigurationItemModel.md) | No |  |
| AutoScaleCriteria | String | No | Values: `CPUUsage`, `RAMUsage`, `AvgActiveSessions`, `AvailableUserSessionSingle`, `AvailableUserSessions`, `UserDriven`, `PersonalAutoGrow`, `PersonalAutoShrink` |
| AutoScaleInterval | Int32 | No |  |
| AutoScaleTriggers | [IDynamicPoolTriggerInfo[]](../models/New-NmeDynamicPoolTriggerInfoModel.md) | No |  |
| AvailableUserSessionScaleCriterionAvailableSessionRestriction | String | No | Values: `Always`, `DuringWorkHours` |
| AvailableUserSessionScaleCriterionEndWorkHours | String | No |  |
| AvailableUserSessionScaleCriterionMaxAvailableUserSessions | Int32 | No |  |
| AvailableUserSessionScaleCriterionMinAvailableUserSessions | Int32 | No |  |
| AvailableUserSessionScaleCriterionOutsideWorkHoursSessions | Int32 | No |  |
| ConfigActions | [IAutoHealAction[]](../models/New-NmeAutoHealActionModel.md) | No |  |
| ConfigDays | Int32[] | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| ConfigHostsToBeReady | Int32 | No |  |
| ConfigHostsToBeReadyMeasureType | String | No | Values: `Count`, `Percent` |
| ConfigNetworkId | String | No |  |
| ConfigPrefix | String | No |  |
| ConfigPreStageDiskType | SwitchParameter | No |  |
| ConfigPreStageUnassigned | SwitchParameter | No |  |
| ConfigPreStageUnassignedHosts | SwitchParameter | No |  |
| ConfigResourceGroupId | String | No |  |
| ConfigSessionCriteria | String | No | Values: `WithoutSessions`, `WithoutActive`, `WithActive` |
| ConfigStaleHeartbeatMinutes | Int32 | No |  |
| ConfigSubnet | String | No |  |
| ConfigWaitMinutes | Int32 | No |  |
| ConfigWaitMinutesBeforeFirstAction | Int32 | No |  |
| ConfigWvdStatuses | String[] | No | Values: `Available`, `Unavailable`, `Shutdown`, `Disconnected`, `Upgrading`, `UpgradeFailed`, `NoHeartbeat`, `NotJoinedToDomain`, `DomainTrustRelationshipLost`, `SxSStackListenerNotReady`, `FSLogixNotHealthy`, `NeedsAssistance` |
| ExtensionLoadBalancing | String | No | Values: `BreadthFirst`, `DepthFirst`, `Persistent`, `MultiplePersistent` |
| ExtensionMaxSessionsPerHost | Int32 | No |  |
| ExtensionStartVMOnConnect | SwitchParameter | No |  |
| HostUsageScaleCriteriaScaleInHostChangeCount | Int32 | No |  |
| HostUsageScaleCriteriaScaleInValue | Single | No |  |
| HostUsageScaleCriteriaScaleOutHostChangeCount | Int32 | No |  |
| HostUsageScaleCriteriaScaleOutValue | Single | No |  |
| NetworkDistributionStrategy | String | No | Values: `DepthFirst`, `BreadthFirst` |
| PreStageHostConfigs | [IPreStageHostsConfigurationItem[]](../models/New-NmePreStageHostsConfigurationItemModel.md) | No |  |
| PreStageHostIntelligentPrestageMode | String | No | Values: `Hybrid`, `Automated` |
| PreStageHostIsMultipleConfigsMode | SwitchParameter | No |  |
| RemoveMessagingMessage | String | No |  |
| RemoveMessagingMinutesBeforeRemove | Int32 | No |  |
| RollingDrainModeIsEnabled | SwitchParameter | No |  |
| RollingDrainModeWindows | [IRollingDrainModeWindow[]](../models/New-NmeRollingDrainModeWindowModel.md) | No |  |
| ScaleInAverageTimeRangeInMinutes | Int32 | No |  |
| ScaleOutAverageTimeRangeInMinutes | Int32 | No |  |
| SecondaryRegionEnabled | SwitchParameter | No |  |
| StartWorkDuration | Int32 | No |  |
| StartWorkHour | Int32 | No |  |
| StartWorkMinutes | Int32 | No |  |
| StoppedDiskType | String | No |  |
| TimeRangeEndHour | Int32 | No |  |
| TimeRangeEndMinutes | Int32 | No |  |
| TimeRangeStartHour | Int32 | No |  |
| TimeRangeStartMinutes | Int32 | No |  |
| TimezoneId | String | No |  |
| UserDrivenBypassDrainMode | SwitchParameter | No |  |
| UserDrivenMinAvailableSessions | Int32 | No |  |
| UserDrivenPreStageHostConfigs | [IUserDrivenPreStageHostsConfigurationItem[]](../models/New-NmeUserDrivenPreStageHostsConfigurationItemModel.md) | No |  |
| UserDrivenPreStageHostEnable | SwitchParameter | No |  |
| UserDrivenPreStageHostPreStageIfUnassigned | SwitchParameter | No |  |
| UserDrivenStopDelayMinutes | Int32 | No |  |
| VMNamingMode | String | No | Values: `Standard`, `Reuse`, `Unique` |
| VMTemplateDiskPerformanceTier | String | No |  |
| VMTemplateDiskSize | Int32 | No |  |
| VMTemplateEphemeralOsdiskPlacement | String | No | Values: `CacheDisk`, `ResourceDisk`, `NvmeDisk` |
| VMTemplateHasEphemeralOsdisk | SwitchParameter | No |  |
| VMTemplateImage | String | No |  |
| VMTemplateNetworkId | String | No |  |
| VMTemplatePrefix | String | No |  |
| VMTemplateResourceGroupId | String | No |  |
| VMTemplateSize | String | No |  |
| VMTemplateStorageType | String | No |  |
| VMTemplateSubnet | String | No |  |
| WorkingHoursScaleInBehavior | String | No | Values: `OneTime`, `Continuously`, `Never` |
| WorkingHoursScaleOutBehavior | String | No | Values: `OneTime`, `Continuously`, `Never` |

## Examples

### Example 1: Pooled

```powershell
$actions = New-NmeAutoHealActionModel `
    -Type "RestartVm"
$autoHealConfigs = New-NmeAutoHealConfigurationItemModel `
    -SessionCriteria "WithoutSessions" `
    -WaitMinutes 5 `
    -WvdStatuses @("FSLogixNotHealthy") `
    -Actions $actions `
    -StaleHeartbeatMinutes 30 `
    -WaitMinutesBeforeFirstAction 5
$autoScaleTriggers = New-NmeDynamicPoolTriggerInfoModel `
    -TriggerType "CPUUsage"
Set-NmeHostPoolAutoScale `
    -ActiveHostType "AvailableForConnection" `
    -AutoHealEnable `
    -BurstCapacity 2 `
    -HostPoolCapacity 5 `
    -HostPoolName "<HostPoolName>" `
    -MinActiveHostsCount 1 `
    -MultiTriggers "<MultiTriggers>" `
    -ReImageUsedHostsMode "Disabled" `
    -ResourceGroup "<ResourceGroup>" `
    -ScaleInAggressiveness "High" `
    -ScalingMode "Default" `
    -SubscriptionId "<SubscriptionId>" `
    -AutoHealConfigs @($autoHealConfigs) `
    -AutoScaleCriteria "CPUUsage" `
    -AutoScaleTriggers @($autoScaleTriggers) `
    -ExtensionLoadBalancing "BreadthFirst" `
    -ExtensionMaxSessionsPerHost 10 `
    -HostUsageScaleCriteriaScaleInHostChangeCount 1 `
    -HostUsageScaleCriteriaScaleInValue 40 `
    -HostUsageScaleCriteriaScaleOutHostChangeCount 1 `
    -HostUsageScaleCriteriaScaleOutValue 65 `
    -RemoveMessagingMessage "Sorry for the interruption. We are doing some maintenance and need you to log out. We will be terminating your session in 10 minutes if you haven't logged out by then." `
    -RemoveMessagingMinutesBeforeRemove 10 `
    -ScaleInAverageTimeRangeInMinutes 15 `
    -ScaleOutAverageTimeRangeInMinutes 5 `
    -StoppedDiskType "StandardSSD_LRS" `
    -TimezoneId "Central Standard Time" `
    -UserDrivenMinAvailableSessions 0 `
    -UserDrivenStopDelayMinutes 0 `
    -VMNamingMode "Reuse" `
    -VMTemplateDiskSize 128 `
    -VMTemplateImage "MicrosoftWindowsDesktop/windows-11/win11-22h2-avd/latest" `
    -VMTemplateNetworkId "/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.Network/virtualNetworks/v-net-1" `
    -VMTemplatePrefix "prefix" `
    -VMTemplateResourceGroupId "/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1" `
    -VMTemplateSize "Standard_D2s_v3" `
    -VMTemplateStorageType "StandardSSD_LRS" `
    -VMTemplateSubnet "LAN"
```

### Example 2: Personal + User Driven

```powershell
$actions = New-NmeAutoHealActionModel `
    -Type "RestartVm"
$autoHealConfigs = New-NmeAutoHealConfigurationItemModel `
    -SessionCriteria "WithoutSessions" `
    -WaitMinutes 5 `
    -WvdStatuses @("FSLogixNotHealthy") `
    -Actions $actions `
    -StaleHeartbeatMinutes 30 `
    -WaitMinutesBeforeFirstAction 5
$autoScaleTriggers = New-NmeDynamicPoolTriggerInfoModel `
    -TriggerType "UserDriven"
$userDrivenPreStageHostConfigs = New-NmeUserDrivenPreStageHostsConfigurationItemModel `
    -Days @(1) `
    -DurationMinutes 60 `
    -StartWork "08:00:00"
Set-NmeHostPoolAutoScale `
    -ActiveHostType "AvailableForConnection" `
    -AutoHealEnable `
    -BurstCapacity 0 `
    -HostPoolCapacity 0 `
    -HostPoolName "<HostPoolName>" `
    -MinActiveHostsCount 0 `
    -MultiTriggers "<MultiTriggers>" `
    -PreStageHostEnable `
    -ReImageUsedHostsMode "Disabled" `
    -ResourceGroup "<ResourceGroup>" `
    -ScaleInAggressiveness "High" `
    -ScalingMode "UserDriven" `
    -SubscriptionId "<SubscriptionId>" `
    -AutoHealConfigs @($autoHealConfigs) `
    -AutoScaleCriteria "UserDriven" `
    -AutoScaleTriggers @($autoScaleTriggers) `
    -ConfigDays @(1) `
    -ConfigHostsToBeReady 0 `
    -ConfigHostsToBeReadyMeasureType "Count" `
    -ExtensionStartVMOnConnect `
    -RemoveMessagingMessage "Sorry for the interruption. We are doing some maintenance and need you to log out. We will be terminating your session in 10 minutes if you haven't logged out by then." `
    -RemoveMessagingMinutesBeforeRemove 10 `
    -StartWorkDuration 600 `
    -StartWorkHour 8 `
    -StartWorkMinutes 0 `
    -StoppedDiskType "StandardSSD_LRS" `
    -TimezoneId "Central Standard Time" `
    -UserDrivenMinAvailableSessions 5 `
    -UserDrivenPreStageHostConfigs @($userDrivenPreStageHostConfigs) `
    -UserDrivenPreStageHostEnable `
    -UserDrivenStopDelayMinutes 10 `
    -VMNamingMode "Reuse" `
    -VMTemplateDiskSize 128 `
    -VMTemplateImage "MicrosoftWindowsDesktop/windows-11/win11-22h2-avd/latest" `
    -VMTemplateNetworkId "/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.Network/virtualNetworks/v-net-1" `
    -VMTemplatePrefix "prefix" `
    -VMTemplateResourceGroupId "/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1" `
    -VMTemplateSize "Standard_D2s_v3" `
    -VMTemplateStorageType "StandardSSD_LRS" `
    -VMTemplateSubnet "LAN"
```

### Example 3: Personal + Schedule

```powershell
$actions = New-NmeAutoHealActionModel `
    -Type "RestartVm"
$autoHealConfigs = New-NmeAutoHealConfigurationItemModel `
    -SessionCriteria "WithoutSessions" `
    -WaitMinutes 5 `
    -WvdStatuses @("FSLogixNotHealthy") `
    -Actions $actions `
    -StaleHeartbeatMinutes 30 `
    -WaitMinutesBeforeFirstAction 5
$autoScaleTriggers = New-NmeDynamicPoolTriggerInfoModel `
    -TriggerType "PersonalAutoGrow"
Set-NmeHostPoolAutoScale `
    -ActiveHostType "AvailableForConnection" `
    -AutoHealEnable `
    -BurstCapacity 0 `
    -HostPoolCapacity 0 `
    -HostPoolName "<HostPoolName>" `
    -MinActiveHostsCount 0 `
    -MultiTriggers "<MultiTriggers>" `
    -PreStageHostEnable `
    -ReImageUsedHostsMode "Disabled" `
    -ResourceGroup "<ResourceGroup>" `
    -ScaleInAggressiveness "Medium" `
    -ScalingMode "WorkingHours" `
    -SubscriptionId "<SubscriptionId>" `
    -AutoHealConfigs @($autoHealConfigs) `
    -AutoScaleCriteria "PersonalAutoShrink" `
    -AutoScaleTriggers @($autoScaleTriggers) `
    -ConfigDays @(1) `
    -ConfigHostsToBeReady 0 `
    -ConfigHostsToBeReadyMeasureType "Count" `
    -RemoveMessagingMessage "Sorry for the interruption. We are doing some maintenance and need you to log out. We will be terminating your session in 10 minutes if you haven't logged out by then." `
    -RemoveMessagingMinutesBeforeRemove 10 `
    -StartWorkDuration 600 `
    -StartWorkHour 8 `
    -StartWorkMinutes 0 `
    -StoppedDiskType "StandardSSD_LRS" `
    -TimezoneId "Central Standard Time" `
    -UserDrivenMinAvailableSessions 0 `
    -UserDrivenStopDelayMinutes 0 `
    -VMNamingMode "Reuse" `
    -VMTemplateDiskSize 128 `
    -VMTemplateImage "MicrosoftWindowsDesktop/windows-11/win11-22h2-avd/latest" `
    -VMTemplateNetworkId "/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.Network/virtualNetworks/v-net-1" `
    -VMTemplatePrefix "prefix" `
    -VMTemplateResourceGroupId "/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1" `
    -VMTemplateSize "Standard_D2s_v3" `
    -VMTemplateStorageType "StandardSSD_LRS" `
    -VMTemplateSubnet "LAN" `
    -WorkingHoursScaleInBehavior "OneTime" `
    -WorkingHoursScaleOutBehavior "Continuously"
```

