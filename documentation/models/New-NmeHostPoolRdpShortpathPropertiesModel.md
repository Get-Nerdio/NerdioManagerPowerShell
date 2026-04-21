# New-NmeHostPoolRdpShortpathPropertiesModel

Create an in-memory object for HostPoolRdpShortpathProperties.

**Output Type:** `HostPoolRdpShortpathProperties`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| DirectUdp | String | Yes | Values: `Unknown`, `Default`, `Disabled`, `Enabled` |
| ManagedPrivateUdp | String | Yes | Values: `Unknown`, `Default`, `Disabled`, `Enabled` |
| PublicUdp | String | Yes | Values: `Unknown`, `Default`, `Disabled`, `Enabled` |
| RelayUdp | String | Yes | Values: `Unknown`, `Default`, `Disabled`, `Enabled` |

## Usage

```powershell
$model = New-NmeHostPoolRdpShortpathPropertiesModel `
    -DirectUdp "Unknown" `
    -ManagedPrivateUdp "Unknown" `
    -PublicUdp "Unknown" `
    -RelayUdp "Unknown"
```

