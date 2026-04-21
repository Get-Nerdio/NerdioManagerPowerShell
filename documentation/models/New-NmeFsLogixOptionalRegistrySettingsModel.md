# New-NmeFsLogixOptionalRegistrySettingsModel

Create an in-memory object for FsLogixOptionalRegistrySettings.

**Output Type:** `FsLogixOptionalRegistrySettings`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| RegistryOptionsMode | String | Yes | Values: `None`, `Apply` |
| RegistryOptions | String | No |  |

## Usage

```powershell
$model = New-NmeFsLogixOptionalRegistrySettingsModel `
    -RegistryOptionsMode "None"
```

