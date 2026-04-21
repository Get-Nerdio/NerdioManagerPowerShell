# New-NmeAutoScaleSecondaryRegionModel

Create an in-memory object for AutoScaleSecondaryRegion.

**Output Type:** `AutoScaleSecondaryRegion`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Enabled | Boolean | Yes |  |
| ConfigNetworkId | String | No |  |
| ConfigPrefix | String | No |  |
| ConfigResourceGroupId | String | No |  |
| ConfigSubnet | String | No |  |

## Usage

```powershell
$model = New-NmeAutoScaleSecondaryRegionModel `
    -Enabled $true
```

