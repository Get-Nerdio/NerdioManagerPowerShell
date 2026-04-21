# Set-NmeSessionHostPowerState

**Endpoint:** `POST /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostname}/power-state`

## Description

Start, restart or stop ARM session host VM

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Hostname | String | Yes |  |
| HostPoolName | String | Yes |  |
| JobPayloadCommand | String | Yes | Values: `Restart`, `Stop`, `Start` |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| ExtensionHibernation | SwitchParameter | No |  |
| FailurePolicyCleanup | SwitchParameter | No |  |
| FailurePolicyRestart | SwitchParameter | No |  |

## Examples

### Example 1: Restart

```powershell
Set-NmeSessionHostPowerState `
    -Hostname "<Hostname>" `
    -HostPoolName "<HostPoolName>" `
    -JobPayloadCommand "Restart" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -FailurePolicyCleanup `
    -FailurePolicyRestart
```

### Example 2: Stop

```powershell
Set-NmeSessionHostPowerState `
    -Hostname "<Hostname>" `
    -HostPoolName "<HostPoolName>" `
    -JobPayloadCommand "Stop" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -ExtensionHibernation `
    -FailurePolicyCleanup `
    -FailurePolicyRestart
```

### Example 3: Start

```powershell
Set-NmeSessionHostPowerState `
    -Hostname "<Hostname>" `
    -HostPoolName "<HostPoolName>" `
    -JobPayloadCommand "Start" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -FailurePolicyCleanup `
    -FailurePolicyRestart
```

