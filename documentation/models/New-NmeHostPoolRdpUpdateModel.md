# New-NmeHostPoolRdpUpdateModel

Create an in-memory object for HostPoolRdpUpdate.

**Output Type:** `HostPoolRdpUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ConfigurationName | String | No |  |
| RdpProperties | String | No |  |
| ShortPathDirectUdp | String | No | Values: `Unknown`, `Default`, `Disabled`, `Enabled` |
| ShortPathManagedPrivateUdp | String | No | Values: `Unknown`, `Default`, `Disabled`, `Enabled` |
| ShortPathPublicUdp | String | No | Values: `Unknown`, `Default`, `Disabled`, `Enabled` |
| ShortPathRelayUdp | String | No | Values: `Unknown`, `Default`, `Disabled`, `Enabled` |

## Usage

```powershell
$model = New-NmeHostPoolRdpUpdateModel `
    -ConfigurationName "<ConfigurationName>" `
    -RdpProperties "<RdpProperties>" `
    -ShortPathDirectUdp "Unknown" `
    -ShortPathManagedPrivateUdp "Unknown" `
    -ShortPathPublicUdp "Unknown" `
    -ShortPathRelayUdp "Unknown"
```

