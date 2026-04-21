# New-NmeHostPoolFsLogixUpdateModel

Create an in-memory object for HostPoolFsLogixUpdate.

**Output Type:** `HostPoolFsLogixUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Enable | Boolean | Yes |  |
| Custom | [IHostPoolFsLogixProperties](New-NmeHostPoolFsLogixPropertiesModel.md) | No |  |
| PredefinedConfigId | Int32 | No |  |
| Type | String | No | Values: `Default`, `Predefined`, `Custom` |

## Usage

```powershell
$model = New-NmeHostPoolFsLogixUpdateModel `
    -Enable $true
```

