# New-NmeHostUsageModel

Create an in-memory object for HostUsage.

**Output Type:** `HostUsage`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AverageTimeRangeInMinutes | Int32 | Yes |  |
| HostChangeCount | Int32 | Yes |  |
| Value | Single | Yes |  |

## Usage

```powershell
$model = New-NmeHostUsageModel `
    -AverageTimeRangeInMinutes 0 `
    -HostChangeCount 0 `
    -Value 0
```

