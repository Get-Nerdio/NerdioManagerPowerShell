# Set-NmeImageVersionGeoDistribution

**Endpoint:** `PUT /api/v1/app-attach/image/{imageId}/version/{versionName}`

## Description

Change Nerdio App Attach image version distribution

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ImageId | String | Yes |  |
| StorageLocationIds | String[] | Yes |  |
| VersionName | String | Yes |  |

## Examples

```powershell
Set-NmeImageVersionGeoDistribution `
    -ImageId "<ImageId>" `
    -StorageLocationIds @("<StorageLocationIds>") `
    -VersionName "<VersionName>"
```

