# Set-NmeHostPoolSessionTimeout

**Endpoint:** `PUT /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/session-timeout`

## Description

Update session timeout config for ARM host pool

**Output Type:** `IHostPoolSessionTimeout`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| IsSessionTimeoutsEnabled | SwitchParameter | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| FresetBroken | Int32 | No |  |
| MaxConnectionTime | Int32 | No |  |
| MaxDisconnectionTime | Int32 | No |  |
| MaxIdleTime | Int32 | No |  |
| RemoteAppLogoffTimeLimit | Int32 | No |  |

## Examples

```powershell
Set-NmeHostPoolSessionTimeout `
    -HostPoolName "<HostPoolName>" `
    -IsSessionTimeoutsEnabled `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

