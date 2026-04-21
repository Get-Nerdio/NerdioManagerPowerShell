# Update-NmeHostPoolRdpProperty

**Endpoint:** `PATCH /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/rdp`

**Output Type:** `IArmHostPoolRdp`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| ConfigurationName | String | No |  |
| RdpProperties | String | No |  |
| ShortPathDirectUdp | String | No | Values: `Unknown`, `Default`, `Disabled`, `Enabled` |
| ShortPathManagedPrivateUdp | String | No | Values: `Unknown`, `Default`, `Disabled`, `Enabled` |
| ShortPathPublicUdp | String | No | Values: `Unknown`, `Default`, `Disabled`, `Enabled` |
| ShortPathRelayUdp | String | No | Values: `Unknown`, `Default`, `Disabled`, `Enabled` |

## Examples

### Example 1: Set custom configuration

```powershell
Update-NmeHostPoolRdpProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -ConfigurationName "" `
    -RdpProperties "drivestoredirect:s:*;audiomode:i:0;videoplaybackmode:i:1;redirectclipboard:i:1;redirectprinters:i:1;devicestoredirect:s:*;redirectcomports:i:1;redirectsmartcards:i:1;usbdevicestoredirect:s:*;enablecredsspsupport:i:1;use multimon:i:1"
```

### Example 2: Link to existing RDP configuration

```powershell
Update-NmeHostPoolRdpProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -ConfigurationName "rdp-default-config"
```

### Example 3: Set RDP short path values

```powershell
Update-NmeHostPoolRdpProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -ShortPathDirectUdp "Default" `
    -ShortPathManagedPrivateUdp "Default" `
    -ShortPathPublicUdp "Enabled" `
    -ShortPathRelayUdp "Disabled"
```

