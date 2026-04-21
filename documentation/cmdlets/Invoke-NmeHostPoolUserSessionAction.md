# Invoke-NmeHostPoolUserSessionAction

**Endpoint:** `POST /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostname}/session/{sessionId}/action`

## Description

Perform action for ARM host pool user session

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Hostname | String | Yes |  |
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SessionId | String | Yes |  |
| SubscriptionId | String | Yes |  |
| FailurePolicyCleanup | SwitchParameter | No |  |
| FailurePolicyRestart | SwitchParameter | No |  |

## Examples

```powershell
Invoke-NmeHostPoolUserSessionAction `
    -Hostname "<Hostname>" `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SessionId "<SessionId>" `
    -SubscriptionId "<SubscriptionId>"
```

