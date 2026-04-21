# New-NmeHostPoolControlUpMaintenanceWindowModel

Create an in-memory object for HostPoolControlUpMaintenanceWindow.

**Output Type:** `HostPoolControlUpMaintenanceWindow`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Enabled | Boolean | Yes |  |
| Days | Object | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| DurationMinutes | Int32 | No |  |
| StartHour | Int32 | No |  |
| StartMinutes | Int32 | No |  |
| TimezoneId | String | No |  |

## Usage

```powershell
$model = New-NmeHostPoolControlUpMaintenanceWindowModel `
    -Enabled $true
```

