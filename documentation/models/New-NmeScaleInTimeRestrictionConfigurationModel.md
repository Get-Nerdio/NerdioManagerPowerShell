# New-NmeScaleInTimeRestrictionConfigurationModel

Create an in-memory object for ScaleInTimeRestrictionConfiguration.

**Output Type:** `ScaleInTimeRestrictionConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Enable | Boolean | Yes |  |
| PutToDrainMode | Boolean | Yes |  |
| TimeRangeEndHour | Int32 | No |  |
| TimeRangeEndMinutes | Int32 | No |  |
| TimeRangeStartHour | Int32 | No |  |
| TimeRangeStartMinutes | Int32 | No |  |

## Usage

```powershell
$model = New-NmeScaleInTimeRestrictionConfigurationModel `
    -Enable $true `
    -PutToDrainMode $true
```

