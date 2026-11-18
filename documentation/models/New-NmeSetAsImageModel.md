# New-NmeSetAsImageModel

Create an in-memory object for SetAsImage.

**Output Type:** `SetAsImage`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| JobPayloadApplicationsTarget | String | Yes | Values: `Clone`, `Source` |
| JobPayloadScriptedActionTarget | String | Yes | Values: `Clone`, `Source` |
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
| JobPayloadScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |
| JobPayloadSkipRemoveProfiles | Boolean | No |  |
| JobPayloadTags | ISetAsImageParamsTags | No |  |

## Usage

```powershell
$model = New-NmeSetAsImageModel `
    -JobPayloadApplicationsTarget "Clone" `
    -JobPayloadScriptedActionTarget "Clone"
```

