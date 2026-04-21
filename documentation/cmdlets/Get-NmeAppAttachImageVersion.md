# Get-NmeAppAttachImageVersion

**Endpoint:** `GET /api/v1/app-attach/image/{imageId}/versions`

## Description

Get list of Nerdio App Attach image versions

**Output Type:** `IAppAttachImageVersion`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ImageId | String | Yes |  |

## Examples

```powershell
Get-NmeAppAttachImageVersion -ImageId "<ImageId>"
```

