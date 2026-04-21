# Update-NmeHostPoolUserSelfServiceProperty

**Endpoint:** `PATCH /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/user-self-service`

## Description

Update user self-service properties for ARM host pool

**Output Type:** `IHostPoolUserSelfService`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| AllowAppInstall | SwitchParameter | No |  |
| AllowChangePersonalDiskSize | SwitchParameter | No |  |
| AllowCreateVM | SwitchParameter | No |  |
| AllowedApps | [IAnySelfServiceAppCreate[]](../models/New-NmeAnySelfServiceAppCreateModel.md) | No |  |
| AllowedDesktopsTags | [IUserSelfServiceTag[]](../models/New-NmeUserSelfServiceTagModel.md) | No |  |
| AllowedDiskOptions | [ISelfServiceDiskSize[]](../models/New-NmeSelfServiceDiskSizeModel.md) | No |  |
| AllowedDiskSizes | String[] | No |  |
| AllowedImages | String[] | No |  |
| AllowedScriptedActions | [IUserSelfServiceScriptedAction[]](../models/New-NmeUserSelfServiceScriptedActionModel.md) | No |  |
| AllowedVMSizes | String[] | No |  |
| AllowReimageDesktops | SwitchParameter | No |  |
| AllowResetFsLogix | SwitchParameter | No |  |
| AllowResizeDesktops | SwitchParameter | No |  |
| AllowRestartDesktops | SwitchParameter | No |  |
| AllowRestoreDesktops | SwitchParameter | No |  |
| AllowRestrictAutoScale | SwitchParameter | No |  |
| AllowScriptedActions | SwitchParameter | No |  |
| AllowStartDesktops | SwitchParameter | No |  |
| AllowStopDesktops | SwitchParameter | No |  |
| AllowUpdateDesktopsTags | SwitchParameter | No |  |
| AutoRevertPersonalSize | SwitchParameter | No |  |
| AutoRevertPersonalSizeMaxDelayHours | Int32 | No |  |
| AutoRevertPersonalSizeSessionState | String | No | Values: `High`, `Medium`, `Low` |
| EnableUserSelfServicePortal | SwitchParameter | No |  |
| MaxAutoScaleRestrictionPeriod | Int32 | No |  |
| RecoveryMode | String | No | Values: `InstantRestoresOnly`, `AllRecoveryPoints` |

## Examples

```powershell
Update-NmeHostPoolUserSelfServiceProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -AllowedImages @("MicrosoftWindowsDesktop/windows-11/win11-22h2-avd/latest", "/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.Compute/galleries/image-gallery-name") `
    -AllowReimageDesktops
```

