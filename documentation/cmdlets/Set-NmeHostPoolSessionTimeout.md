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
| FresetBroken | Int32 | No | Log off, instead of disconnecting, ACTIVE and IDLE sessions.null: not configured;-1: disabled (property will be removed from registry);1: enabled |
| MaxConnectionTime | Int32 | No | Disconnect ACTIVE sessions after.null: not configured;-1: disabled (property will be removed from registry);0: never |
| MaxDisconnectionTime | Int32 | No | Log off DISCONNECTED sessions after.null: not configured;-1: disabled (property will be removed from registry);0: never |
| MaxIdleTime | Int32 | No | Disconnect IDLE sessions after.null: not configured;-1: disabled (property will be removed from registry);0: never |
| RemoteAppLogoffTimeLimit | Int32 | No | Log off empty RemoteApp sessions after.null: not configured;-1: disabled (property will be removed from registry);0: immediately |

## Examples

```powershell
Set-NmeHostPoolSessionTimeout `
    -HostPoolName "<HostPoolName>" `
    -IsSessionTimeoutsEnabled `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

