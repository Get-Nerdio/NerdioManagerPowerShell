# New-NmeHostPoolRdpProfileCreateModel

Create an in-memory object for HostPoolRdpProfileCreate.

**Output Type:** `HostPoolRdpProfileCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IsDefault | Boolean | Yes |  |
| Name | String | Yes |  |
| Settings | String | Yes |  |

## Usage

```powershell
$model = New-NmeHostPoolRdpProfileCreateModel `
    -IsDefault $true `
    -Name "<Name>" `
    -Settings "<Settings>"
```

