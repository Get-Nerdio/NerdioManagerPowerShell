# New-NmeHostUsageConfigurationModel

Create an in-memory object for HostUsageConfiguration.

**Output Type:** `HostUsageConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ScaleInAverageTimeRangeInMinutes | Int32 | Yes |  |
| ScaleInHostChangeCount | Int32 | Yes |  |
| ScaleInValue | Single | Yes |  |
| ScaleOutAverageTimeRangeInMinutes | Int32 | Yes |  |
| ScaleOutHostChangeCount | Int32 | Yes |  |
| ScaleOutValue | Single | Yes |  |

## Usage

```powershell
$model = New-NmeHostUsageConfigurationModel `
    -ScaleInAverageTimeRangeInMinutes 0 `
    -ScaleInHostChangeCount 0 `
    -ScaleInValue 0 `
    -ScaleOutAverageTimeRangeInMinutes 0 `
    -ScaleOutHostChangeCount 0 `
    -ScaleOutValue 0
```

