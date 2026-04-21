# New-NmeAvdAgentMaintenanceWindowModel

Create an in-memory object for AvdAgentMaintenanceWindow.

**Output Type:** `AvdAgentMaintenanceWindow`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| DayOfWeek | Int32 | Yes | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| Hour | Int32 | Yes |  |

## Usage

```powershell
$model = New-NmeAvdAgentMaintenanceWindowModel `
    -DayOfWeek "0" `
    -Hour 0
```

