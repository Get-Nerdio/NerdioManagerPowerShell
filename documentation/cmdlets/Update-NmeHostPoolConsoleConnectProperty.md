# Update-NmeHostPoolConsoleConnectProperty

**Endpoint:** `PATCH /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/consoleconnect`

## Description

Update console connect properties for ARM host pool

**Output Type:** `IHostPoolConsoleConnect`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| Enable | SwitchParameter | No |  |
| Region | String | No | Values: `US`, `EU`, `CA`, `AU`, `UK` |

## Examples

```powershell
Update-NmeHostPoolConsoleConnectProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

