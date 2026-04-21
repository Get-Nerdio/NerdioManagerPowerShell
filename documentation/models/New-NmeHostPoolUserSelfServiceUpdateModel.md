# New-NmeHostPoolUserSelfServiceUpdateModel

Create an in-memory object for HostPoolUserSelfServiceUpdate.

**Output Type:** `HostPoolUserSelfServiceUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AllowAppInstall | Boolean | No |  |
| AllowChangePersonalDiskSize | Boolean | No |  |
| AllowCreateVM | Boolean | No |  |
| AllowReimageDesktops | Boolean | No |  |
| AllowResetFsLogix | Boolean | No |  |
| AllowResizeDesktops | Boolean | No |  |
| AllowRestartDesktops | Boolean | No |  |
| AllowRestoreDesktops | Boolean | No |  |
| AllowRestrictAutoScale | Boolean | No |  |
| AllowScriptedActions | Boolean | No |  |
| AllowStartDesktops | Boolean | No |  |
| AllowStopDesktops | Boolean | No |  |
| AllowUpdateDesktopsTags | Boolean | No |  |
| AllowedApps | [IAnySelfServiceAppCreate[]](New-NmeAnySelfServiceAppCreateModel.md) | No | Pass as array. |
| AllowedDesktopsTags | [IUserSelfServiceTag[]](New-NmeUserSelfServiceTagModel.md) | No | Pass as array. |
| AllowedDiskOptions | [ISelfServiceDiskSize[]](New-NmeSelfServiceDiskSizeModel.md) | No | Pass as array. |
| AllowedDiskSizes | Object | No |  |
| AllowedImages | Object | No |  |
| AllowedScriptedActions | [IUserSelfServiceScriptedAction[]](New-NmeUserSelfServiceScriptedActionModel.md) | No | Pass as array. |
| AllowedVMSizes | Object | No |  |
| AutoRevertPersonalSize | Boolean | No |  |
| AutoRevertPersonalSizeMaxDelayHours | Int32 | No |  |
| AutoRevertPersonalSizeSessionState | String | No | Values: `High`, `Medium`, `Low` |
| EnableUserSelfServicePortal | Boolean | No |  |
| MaxAutoScaleRestrictionPeriod | Int32 | No |  |
| RecoveryMode | String | No | Values: `InstantRestoresOnly`, `AllRecoveryPoints` |

## Usage

```powershell
$allowedApps = New-NmeAnySelfServiceAppCreateModel `
    -ExternalId "<ExternalId>" `
    -Name "<Name>" `
    -RepoId 0
$allowedDesktopsTags = New-NmeUserSelfServiceTagModel `
    -CanDelete $true `
    -CanUpdate $true `
    -Name "<Name>" `
    -Values "<Values>"
$allowedDiskOptions = New-NmeSelfServiceDiskSizeModel `
    -SizeGb 0 `
    -Sku "<Sku>"
$allowedScriptedActions = New-NmeUserSelfServiceScriptedActionModel `
    -ActionGroupParams @{} `
    -ActionId 0 `
    -ActionParams @{} `
    -ActionType "Action" `
    -DisplayName "<DisplayName>"
$model = New-NmeHostPoolUserSelfServiceUpdateModel `
    -AllowAppInstall $true `
    -AllowChangePersonalDiskSize $true `
    -AllowCreateVM $true `
    -AllowReimageDesktops $true `
    -AllowResetFsLogix $true `
    -AllowResizeDesktops $true `
    -AllowRestartDesktops $true `
    -AllowRestoreDesktops $true `
    -AllowRestrictAutoScale $true `
    -AllowScriptedActions $true `
    -AllowStartDesktops $true `
    -AllowStopDesktops $true `
    -AllowUpdateDesktopsTags $true `
    -AllowedApps $allowedApps `
    -AllowedDesktopsTags $allowedDesktopsTags `
    -AllowedDiskOptions $allowedDiskOptions `
    -AllowedDiskSizes "<AllowedDiskSizes>" `
    -AllowedImages "<AllowedImages>" `
    -AllowedScriptedActions $allowedScriptedActions `
    -AllowedVMSizes "<AllowedVMSizes>" `
    -AutoRevertPersonalSize $true `
    -AutoRevertPersonalSizeMaxDelayHours 0 `
    -AutoRevertPersonalSizeSessionState "High" `
    -EnableUserSelfServicePortal $true `
    -MaxAutoScaleRestrictionPeriod 0 `
    -RecoveryMode "InstantRestoresOnly"
```

