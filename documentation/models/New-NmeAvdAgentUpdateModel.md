# New-NmeAvdAgentUpdateModel

Create an in-memory object for AvdAgentUpdate.

**Output Type:** `AvdAgentUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ExcludeDrainModeHosts | Boolean | Yes |  |
| PowerOnHostsInMaintenanceWindow | Boolean | Yes |  |
| Type | String | Yes | Values: `Default`, `Scheduled` |
| UseSessionHostLocalTime | Boolean | Yes |  |
| MaintenanceWindowTimeZone | String | No |  |
| PrimaryWindowDayOfWeek | Int32 | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| PrimaryWindowHour | Int32 | No |  |
| SecondaryWindowDayOfWeek | Int32 | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| SecondaryWindowHour | Int32 | No |  |

## Usage

```powershell
$model = New-NmeAvdAgentUpdateModel `
    -ExcludeDrainModeHosts $true `
    -PowerOnHostsInMaintenanceWindow $true `
    -Type "Default" `
    -UseSessionHostLocalTime $true
```

