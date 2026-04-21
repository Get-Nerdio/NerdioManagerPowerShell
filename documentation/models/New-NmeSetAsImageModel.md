# New-NmeSetAsImageModel

Create an in-memory object for SetAsImage.

**Output Type:** `SetAsImage`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| JobPayloadApplicationsTarget | String | Yes | Values: `Clone`, `Source` |
| JobPayloadScriptedActionTarget | String | Yes | Values: `Clone`, `Source` |
| JobPayloadScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | Yes | Pass as array. |
| FailurePolicyCleanup | Boolean | No |  |
| FailurePolicyRestart | Boolean | No |  |
| GalleryImageGalleryId | String | No |  |
| GalleryImageHibernationSupported | Boolean | No |  |
| GalleryImageOSState | String | No | Values: `Generalized`, `Specialized` |
| GalleryImageReplicaCount | Int32 | No |  |
| GalleryImageSecurityType | String | No | Values: `None`, `TrustedLaunch`, `Confidential`, `TrustedLaunchSupported`, `ConfidentialSupported`, `TrustedLaunchAndConfidentialSupported` |
| GalleryImageSetInactive | Boolean | No |  |
| GalleryImageTargetRegions | Object | No |  |
| GalleryImageVersionIncrementType | String | No | Values: `Major`, `Minor`, `Revision` |
| JobPayloadChangelog | String | No |  |
| JobPayloadEnableAppvClientService | Boolean | No |  |
| JobPayloadInstallCertificates | Boolean | No |  |
| JobPayloadPowerOnVM | Boolean | No |  |
| JobPayloadRetainOldImage | Boolean | No |  |
| JobPayloadSkipRemoveProfiles | Boolean | No |  |
| JobPayloadTags | ISetAsImageParamsTags | No |  |

## Usage

```powershell
$jobPayloadScriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$model = New-NmeSetAsImageModel `
    -JobPayloadApplicationsTarget "Clone" `
    -JobPayloadScriptedActionTarget "Clone" `
    -JobPayloadScriptedActions $jobPayloadScriptedActions
```

