# Update-NmeHostPoolUsageTrackingProperty

**Endpoint:** `PATCH /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/tracking`

## Description

Update usage tracking properties for ARM host pool

**Output Type:** `IHostPoolTracking`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| TrackAverageActiveSessions | SwitchParameter | No |  |
| TrackCpuUsage | SwitchParameter | No |  |
| TrackRamUsage | SwitchParameter | No |  |
| TrackUsageViaLogAnalytics | SwitchParameter | No |  |

## Examples

```powershell
Update-NmeHostPoolUsageTrackingProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

