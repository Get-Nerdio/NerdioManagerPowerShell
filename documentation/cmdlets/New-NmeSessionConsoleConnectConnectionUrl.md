# New-NmeSessionConsoleConnectConnectionUrl

**Endpoint:** `POST /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostname}/console-connect/connection`

## Description

Get ConsoleConnect connection URL for ARM session host

UserName can be SAM Account Name or just a user name (without domain)

**Output Type:** `IResponseWithJobAndConsoleConnectConnectionResponse`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Hostname | String | Yes |  |
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| UserName | String | No |  |

## Examples

```powershell
New-NmeSessionConsoleConnectConnectionUrl `
    -Hostname "<Hostname>" `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

