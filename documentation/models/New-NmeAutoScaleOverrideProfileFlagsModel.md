# New-NmeAutoScaleOverrideProfileFlagsModel

Create an in-memory object for AutoScaleOverrideProfileFlags.

**Output Type:** `AutoScaleOverrideProfileFlags`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| PreStage | Boolean | Yes |  |
| RollingDrainMode | Boolean | Yes |  |
| Size | Boolean | Yes |  |

## Usage

```powershell
$model = New-NmeAutoScaleOverrideProfileFlagsModel `
    -PreStage $true `
    -RollingDrainMode $true `
    -Size $true
```

