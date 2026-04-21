# New-NmeAppAttachImageVersion

**Endpoint:** `POST /api/v1/app-attach/image/{imageId}/version`

## Description

Upload Nerdio App Attach image version

Use this endpoint to upload a new version of existing Nerdio App Attach image from .vhd(x) or .appv file.
If PackageLink contains URL of file in the same file share as location, no uploading and downloading will be performed. In other way file will be downloaded and then uploaded to the location.

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ImageId | String | Yes |  |
| PackageLink | String | Yes |  |
| Version | String | Yes |  |
| Extension | String | No |  |
| StorageLocationIds | String[] | No |  |

## Examples

```powershell
New-NmeAppAttachImageVersion `
    -ImageId "<ImageId>" `
    -PackageLink "link to a file in somewhere" `
    -Version "1.0.1" `
    -Extension ".vhd"
```

