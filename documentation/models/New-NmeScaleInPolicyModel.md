# New-NmeScaleInPolicyModel

Create an in-memory object for ScaleInPolicy.

**Output Type:** `ScaleInPolicy`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Aggressiveness | String | Yes | Values: `High`, `Medium`, `Low` |
| RestrictionEnable | Boolean | Yes |  |
| RestrictionPutToDrainMode | Boolean | Yes |  |
| MessagingMessage | String | No |  |
| MessagingMinutesBeforeRemove | Int32 | No |  |
| TimeRangeEndHour | Int32 | No |  |
| TimeRangeEndMinutes | Int32 | No |  |
| TimeRangeStartHour | Int32 | No |  |
| TimeRangeStartMinutes | Int32 | No |  |

## Usage

```powershell
$model = New-NmeScaleInPolicyModel `
    -Aggressiveness "High" `
    -RestrictionEnable $true `
    -RestrictionPutToDrainMode $true
```

