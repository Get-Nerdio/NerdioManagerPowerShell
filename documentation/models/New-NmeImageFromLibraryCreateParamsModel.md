# New-NmeImageFromLibraryCreateParamsModel

Create an in-memory object for ImageFromLibraryCreateParams.

**Output Type:** `ImageFromLibraryCreateParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ApplicationsTarget | String | Yes | Values: `Clone`, `Source` |
| DiskSize | Int32 | Yes |  |
| ImageIdName | String | Yes |  |
| ImageIdResourceGroup | String | Yes |  |
| ImageIdSubscriptionId | String | Yes |  |
| NetworkId | String | Yes |  |
| ScriptedActionTarget | String | Yes | Values: `Clone`, `Source` |
| ScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | Yes | Pass as array. |
| SourceImageId | String | Yes |  |
| StorageType | String | Yes |  |
| Subnet | String | Yes |  |
| VMSize | String | Yes |  |
| AdConfigId | Int32 | No |  |
| Description | String | No |  |
| DiskPerformanceTier | String | No |  |
| EnableAppvClientService | Boolean | No |  |
| EnableTimezoneRedirection | Boolean | No |  |
| GalleryImageGalleryId | String | No |  |
| GalleryImageHibernationSupported | Boolean | No |  |
| GalleryImageOSState | String | No | Values: `Generalized`, `Specialized` |
| GalleryImageReplicaCount | Int32 | No |  |
| GalleryImageSecurityType | String | No | Values: `None`, `TrustedLaunch`, `Confidential`, `TrustedLaunchSupported`, `ConfidentialSupported`, `TrustedLaunchAndConfidentialSupported` |
| GalleryImageSetInactive | Boolean | No |  |
| GalleryImageTargetRegions | Object | No |  |
| GalleryImageVersionIncrementType | String | No | Values: `Major`, `Minor`, `Revision` |
| InstallCertificates | Boolean | No |  |
| LocalAdminCredentialsDisableAccount | Boolean | No |  |
| LocalAdminCredentialsPassword | String | No |  |
| LocalAdminCredentialsUserName | String | No |  |
| NoImageObjectRequired | Boolean | No |  |
| SecurityProfileSecureBootEnabled | Boolean | No |  |
| SecurityProfileSecurityType | String | No | Values: `None`, `TrustedLaunch`, `Confidential` |
| SecurityProfileVTpmEnabled | Boolean | No |  |
| SkipRemoveProfiles | Boolean | No |  |
| Tags | IImageFromLibraryCreateParamsTags | No |  |
| UninstallFsLogix | Boolean | No |  |
| VMTimezone | String | No |  |

## Usage

```powershell
$scriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$model = New-NmeImageFromLibraryCreateParamsModel `
    -ApplicationsTarget "Clone" `
    -DiskSize 0 `
    -ImageIdName "<ImageIdName>" `
    -ImageIdResourceGroup "<ImageIdResourceGroup>" `
    -ImageIdSubscriptionId "<ImageIdSubscriptionId>" `
    -NetworkId "<NetworkId>" `
    -ScriptedActionTarget "Clone" `
    -ScriptedActions $scriptedActions `
    -SourceImageId "<SourceImageId>" `
    -StorageType "<StorageType>" `
    -Subnet "<Subnet>" `
    -VMSize "<VMSize>"
```

