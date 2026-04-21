# New-NmeHostPoolTagsUpdateModel

Create an in-memory object for HostPoolTagsUpdate.

**Output Type:** `HostPoolTagsUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Tags | IHostPoolTagsUpdateTags | Yes |  |
| UpdateObjects | Boolean | Yes |  |

## Usage

```powershell
$model = New-NmeHostPoolTagsUpdateModel `
    -Tags @{} `
    -UpdateObjects $true
```

