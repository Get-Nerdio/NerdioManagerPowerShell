# New-NmeAutoScaleSecondaryRegionConfigurationModel

Create an in-memory object for AutoScaleSecondaryRegionConfiguration.

**Output Type:** `AutoScaleSecondaryRegionConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| NetworkId | String | Yes |  |
| ResourceGroupId | String | Yes |  |
| Subnet | String | Yes |  |
| Prefix | String | No |  |

## Usage

```powershell
$model = New-NmeAutoScaleSecondaryRegionConfigurationModel `
    -NetworkId "<NetworkId>" `
    -ResourceGroupId "<ResourceGroupId>" `
    -Subnet "<Subnet>"
```

