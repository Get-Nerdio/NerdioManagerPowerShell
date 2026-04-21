# New-NmeFsLogixOptionalRegistrySettingsUpdateModel

Create an in-memory object for FsLogixOptionalRegistrySettingsUpdate.

**Output Type:** `FsLogixOptionalRegistrySettingsUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| RegistryOptions | String | No |  |
| RegistryOptionsMode | String | No | Values: `None`, `Apply` |

## Usage

```powershell
$model = New-NmeFsLogixOptionalRegistrySettingsUpdateModel `
    -RegistryOptions "<RegistryOptions>" `
    -RegistryOptionsMode "None"
```

