# New-NmeHostPoolRdpProfileUpdateModel

Create an in-memory object for HostPoolRdpProfileUpdate.

**Output Type:** `HostPoolRdpProfileUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IsDefault | Boolean | No |  |
| Name | String | No |  |
| Settings | String | No |  |

## Usage

```powershell
$model = New-NmeHostPoolRdpProfileUpdateModel `
    -IsDefault $true `
    -Name "<Name>" `
    -Settings "<Settings>"
```

