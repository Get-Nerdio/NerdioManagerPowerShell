# New-NmeAppAttachImage

**Endpoint:** `POST /api/v1/app-attach/image`

## Description

Create Nerdio App Attach image

Use this endpoint to create a new Nerdio App Attach image. The created image does not have any versions. This endpoint does not allow to upload any files.
To upload a new version from .vhd(x) or .appv file you can use api/v1/app-attach/image/{imageId}/version endpoint.
There is no way to upload a new version from .msix files, but you can create a new Nerdio App Attach image from .msix files.

**Output Type:** `IResponseWithJobAndAppAttachImage`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ImageName | String | Yes |  |
| LocationId | String | Yes |  |
| Description | String | No |  |

## Examples

```powershell
New-NmeAppAttachImage `
    -ImageName "<ImageName>" `
    -LocationId "<LocationId>"
```

