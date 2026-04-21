# New-NmeHostPoolTrackingModel

Create an in-memory object for HostPoolTracking.

**Output Type:** `HostPoolTracking`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| TrackAverageActiveSessions | Boolean | No |  |
| TrackCpuUsage | Boolean | No |  |
| TrackRamUsage | Boolean | No |  |
| TrackUsageViaLogAnalytics | Boolean | No |  |

## Usage

```powershell
$model = New-NmeHostPoolTrackingModel `
    -TrackAverageActiveSessions $true `
    -TrackCpuUsage $true `
    -TrackRamUsage $true `
    -TrackUsageViaLogAnalytics $true
```

