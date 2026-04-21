# Set-NmeHostPoolFsLogixConfiguration

**Endpoint:** `PUT /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/fslogix`

## Description

Update FSLogix config for ARM host pool

**Output Type:** `IHostPoolFsLogixConfig`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Enable | SwitchParameter | Yes |  |
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| Custom | [IHostPoolFsLogixProperties](../models/New-NmeHostPoolFsLogixPropertiesModel.md) | No |  |
| PredefinedConfigId | Int32 | No |  |
| Type | String | No | Values: `Default`, `Predefined`, `Custom` |

## Examples

### Example 1: Global default config

```powershell
Set-NmeHostPoolFsLogixConfiguration `
    -Enable `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -Type "Default"
```

### Example 2: Specific predefined config

```powershell
Set-NmeHostPoolFsLogixConfiguration `
    -Enable `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -PredefinedConfigId 1 `
    -Type "Predefined"
```

### Example 3: Custom

```powershell
Set-NmeHostPoolFsLogixConfiguration `
    -Enable `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -Type "Custom"
```

