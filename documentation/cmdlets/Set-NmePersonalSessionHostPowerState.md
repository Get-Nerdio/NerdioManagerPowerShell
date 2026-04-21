# Set-NmePersonalSessionHostPowerState

**Endpoint:** `POST /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/user/{username}/host/power-state`

## Description

Start, restart or stop ARM personal session host VM

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| JobPayloadCommand | String | Yes | Values: `Restart`, `Stop`, `Start` |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| Username | String | Yes |  |
| ExtensionHibernation | SwitchParameter | No |  |
| FailurePolicyCleanup | SwitchParameter | No |  |
| FailurePolicyRestart | SwitchParameter | No |  |

## Examples

### Example 1: Restart

```powershell
Set-NmePersonalSessionHostPowerState `
    -HostPoolName "<HostPoolName>" `
    -JobPayloadCommand "Restart" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -Username "<Username>" `
    -FailurePolicyCleanup `
    -FailurePolicyRestart
```

### Example 2: Stop

```powershell
Set-NmePersonalSessionHostPowerState `
    -HostPoolName "<HostPoolName>" `
    -JobPayloadCommand "Stop" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -Username "<Username>" `
    -ExtensionHibernation `
    -FailurePolicyCleanup `
    -FailurePolicyRestart
```

### Example 3: Start

```powershell
Set-NmePersonalSessionHostPowerState `
    -HostPoolName "<HostPoolName>" `
    -JobPayloadCommand "Start" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -Username "<Username>" `
    -FailurePolicyCleanup `
    -FailurePolicyRestart
```

