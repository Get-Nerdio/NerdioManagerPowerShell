# New-NmeRollingDrainModeWindowModel

Create an in-memory object for RollingDrainModeWindow.

**Output Type:** `RollingDrainModeWindow`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| Percent | Int32 | Yes |  |
| StartTime | String | Yes |  |
| LoadBalancing | String | No | Values: `BreadthFirst`, `DepthFirst`, `Persistent`, `MultiplePersistent` |
| ScaleInAggressiveness | String | No | Values: `High`, `Medium`, `Low` |

## Usage

```powershell
$model = New-NmeRollingDrainModeWindowModel `
    -Name "<Name>" `
    -Percent 0 `
    -StartTime "<StartTime>"
```

