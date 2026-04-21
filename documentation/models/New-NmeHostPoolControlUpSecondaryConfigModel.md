# New-NmeHostPoolControlUpSecondaryConfigModel

Create an in-memory object for HostPoolControlUpSecondaryConfig.

**Output Type:** `HostPoolControlUpSecondaryConfig`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Enabled | Boolean | Yes |  |
| DnsZone | String | No |  |
| Folder | String | No |  |
| Monitors | Object | No |  |
| Site | String | No |  |

## Usage

```powershell
$model = New-NmeHostPoolControlUpSecondaryConfigModel `
    -Enabled $true
```

