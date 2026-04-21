# New-NmeWatermarkingPropertiesModel

Create an in-memory object for WatermarkingProperties.

**Output Type:** `WatermarkingProperties`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Enabled | Boolean | Yes |  |
| HeightFactor | Int32 | Yes |  |
| Opacity | Int32 | Yes |  |
| Scale | Int32 | Yes |  |
| WidthFactor | Int32 | Yes |  |

## Usage

```powershell
$model = New-NmeWatermarkingPropertiesModel `
    -Enabled $true `
    -HeightFactor 0 `
    -Opacity 0 `
    -Scale 0 `
    -WidthFactor 0
```

