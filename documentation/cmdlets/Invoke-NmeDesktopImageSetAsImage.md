# Invoke-NmeDesktopImageSetAsImage

**Endpoint:** `POST /api/v1/desktop-image/{subscriptionId}/{resourceGroup}/{name}/set-as-image`

## Description

Power off and set as image

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| JobPayloadApplicationsTarget | String | Yes | Values: `Clone`, `Source` |
| JobPayloadScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | Yes |  |
| JobPayloadScriptedActionTarget | String | Yes | Values: `Clone`, `Source` |
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| FailurePolicyCleanup | SwitchParameter | No |  |
| FailurePolicyRestart | SwitchParameter | No |  |
| GalleryImageGalleryId | String | No |  |
| GalleryImageHibernationSupported | SwitchParameter | No |  |
| GalleryImageOSState | String | No | Values: `Generalized`, `Specialized` |
| GalleryImageReplicaCount | Int32 | No |  |
| GalleryImageSecurityType | String | No | Values: `None`, `TrustedLaunch`, `Confidential`, `TrustedLaunchSupported`, `ConfidentialSupported`, `TrustedLaunchAndConfidentialSupported` |
| GalleryImageSetInactive | SwitchParameter | No |  |
| GalleryImageTargetRegions | String[] | No |  |
| GalleryImageVersionIncrementType | String | No | Values: `Major`, `Minor`, `Revision` |
| JobPayloadChangelog | String | No |  |
| JobPayloadEnableAppvClientService | SwitchParameter | No |  |
| JobPayloadInstallCertificates | SwitchParameter | No |  |
| JobPayloadPowerOnVM | SwitchParameter | No |  |
| JobPayloadRetainOldImage | SwitchParameter | No |  |
| JobPayloadSkipRemoveProfiles | SwitchParameter | No |  |
| JobPayloadTags | Hashtable | No | Key is Azure tag name, value is tag value |

## Examples

### Example 1: Set as image with executing scripted action, logging changes and leaving image VM running

```powershell
$jobPayloadScriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 1 `
    -Params @{} `
    -Type "Action"
Invoke-NmeDesktopImageSetAsImage `
    -JobPayloadApplicationsTarget "Clone" `
    -JobPayloadScriptedActions @($jobPayloadScriptedActions) `
    -JobPayloadScriptedActionTarget "Clone" `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -FailurePolicyCleanup `
    -FailurePolicyRestart `
    -JobPayloadChangelog "Executed scripted action with ID = 1" `
    -JobPayloadPowerOnVM
```

### Example 2: Set as image creating image in Azure compute gallery

```powershell
$jobPayloadScriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
Invoke-NmeDesktopImageSetAsImage `
    -JobPayloadApplicationsTarget "Clone" `
    -JobPayloadScriptedActions @($jobPayloadScriptedActions) `
    -JobPayloadScriptedActionTarget "Clone" `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -FailurePolicyCleanup `
    -FailurePolicyRestart `
    -GalleryImageGalleryId "/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.Compute/galleries/image-gallery-name" `
    -GalleryImageOSState "Generalized" `
    -GalleryImageReplicaCount 4 `
    -GalleryImageTargetRegions @("eastus2", "centralus") `
    -GalleryImageVersionIncrementType "Major" `
    -JobPayloadChangelog "Created new gallery image version"
```

### Example 3: Set as image with installing certificates, enabling App-V client service and retaining old image as backup

```powershell
$jobPayloadScriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
Invoke-NmeDesktopImageSetAsImage `
    -JobPayloadApplicationsTarget "Clone" `
    -JobPayloadScriptedActions @($jobPayloadScriptedActions) `
    -JobPayloadScriptedActionTarget "Clone" `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -FailurePolicyCleanup `
    -FailurePolicyRestart `
    -JobPayloadEnableAppvClientService `
    -JobPayloadInstallCertificates `
    -JobPayloadPowerOnVM `
    -JobPayloadRetainOldImage
```

