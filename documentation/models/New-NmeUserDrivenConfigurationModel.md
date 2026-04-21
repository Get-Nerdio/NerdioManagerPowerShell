# New-NmeUserDrivenConfigurationModel

Create an in-memory object for UserDrivenConfiguration.

**Output Type:** `UserDrivenConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| BypassDrainMode | Boolean | Yes |  |
| MinAvailableSessions | Int32 | Yes |  |
| StopDelayMinutes | Int32 | Yes |  |

## Usage

```powershell
$model = New-NmeUserDrivenConfigurationModel `
    -BypassDrainMode $true `
    -MinAvailableSessions 0 `
    -StopDelayMinutes 0
```

