# Update-NmeAppAttachImage

**Endpoint:** `PATCH /api/v1/app-attach/image/{imageId}`

## Description

Update Nerdio App Attach image

**Output Type:** `IResponseWithJobAndAppAttachImage`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ImageId | String | Yes |  |
| Description | String | No |  |
| ImageName | String | No |  |

## Examples

```powershell
Update-NmeAppAttachImage -ImageId "<ImageId>"
```

