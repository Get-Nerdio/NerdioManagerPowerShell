# New-NmeGalleryImageConfigurationModel

Create an in-memory object for GalleryImageConfiguration.

**Output Type:** `GalleryImageConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| GalleryId | String | Yes |  |
| HibernationSupported | Boolean | Yes |  |
| ImageSecurityType | String | Yes | Values: `None`, `TrustedLaunch`, `Confidential`, `TrustedLaunchSupported`, `ConfidentialSupported`, `TrustedLaunchAndConfidentialSupported` |
| OSState | String | Yes | Values: `Generalized`, `Specialized` |
| SetInactive | Boolean | Yes |  |
| TargetRegions | Object | Yes |  |
| VersionIncrementType | String | Yes | Values: `Major`, `Minor`, `Revision` |
| ReplicaCount | Int32 | No |  |

## Usage

```powershell
$model = New-NmeGalleryImageConfigurationModel `
    -GalleryId "<GalleryId>" `
    -HibernationSupported $true `
    -ImageSecurityType "None" `
    -OSState "Generalized" `
    -SetInactive $true `
    -TargetRegions "<TargetRegions>" `
    -VersionIncrementType "Major"
```

