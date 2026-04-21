# New-NmePowerTimingConfigurationModel

Create an in-memory object for PowerTimingConfiguration.

**Output Type:** `PowerTimingConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| PowerOffTiming | String | Yes | Values: `OneTime`, `Continuously`, `Never` |
| PowerOnTiming | String | Yes | Values: `OneTime`, `Continuously`, `Never` |
| TargetHosts | String | Yes | Values: `All`, `Assigned` |

## Usage

```powershell
$model = New-NmePowerTimingConfigurationModel `
    -PowerOffTiming "OneTime" `
    -PowerOnTiming "OneTime" `
    -TargetHosts "All"
```

