# New-NmeSetAsImageParamsModel

Create an in-memory object for SetAsImageParams.

**Output Type:** `SetAsImageParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ApplicationsTarget | String | Yes | Values: `Clone`, `Source` |
| ScriptedActionTarget | String | Yes | Values: `Clone`, `Source` |
| ScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | Yes | Pass as array. |
| Changelog | String | No |  |
| EnableAppvClientService | Boolean | No |  |
| GalleryImageGalleryId | String | No |  |
| GalleryImageHibernationSupported | Boolean | No |  |
| GalleryImageOSState | String | No | Values: `Generalized`, `Specialized` |
| GalleryImageReplicaCount | Int32 | No |  |
| GalleryImageSecurityType | String | No | Values: `None`, `TrustedLaunch`, `Confidential`, `TrustedLaunchSupported`, `ConfidentialSupported`, `TrustedLaunchAndConfidentialSupported` |
| GalleryImageSetInactive | Boolean | No |  |
| GalleryImageTargetRegions | Object | No |  |
| GalleryImageVersionIncrementType | String | No | Values: `Major`, `Minor`, `Revision` |
| InstallCertificates | Boolean | No |  |
| PowerOnVM | Boolean | No |  |
| RetainOldImage | Boolean | No |  |
| SkipRemoveProfiles | Boolean | No |  |
| Tags | ISetAsImageParamsTags | No |  |

## Usage

```powershell
$scriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$model = New-NmeSetAsImageParamsModel `
    -ApplicationsTarget "Clone" `
    -ScriptedActionTarget "Clone" `
    -ScriptedActions $scriptedActions
```

