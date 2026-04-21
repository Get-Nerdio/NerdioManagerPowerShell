# New-NmeAutoScaleProfileScheduleDateRangeModel

Create an in-memory object for AutoScaleProfileScheduleDateRange.

**Output Type:** `AutoScaleProfileScheduleDateRange`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| EndDate | DateTime | Yes |  |
| StartDate | DateTime | Yes |  |

## Usage

```powershell
$model = New-NmeAutoScaleProfileScheduleDateRangeModel `
    -EndDate "2024-01-01T00:00:00Z" `
    -StartDate "2024-01-01T00:00:00Z"
```

