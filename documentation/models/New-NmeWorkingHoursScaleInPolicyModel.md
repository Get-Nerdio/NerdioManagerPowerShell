# New-NmeWorkingHoursScaleInPolicyModel

Create an in-memory object for WorkingHoursScaleInPolicy.

**Output Type:** `WorkingHoursScaleInPolicy`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Aggressiveness | String | Yes | Values: `High`, `Medium`, `Low` |
| MessagingMessage | String | No |  |
| MessagingMinutesBeforeRemove | Int32 | No |  |

## Usage

```powershell
$model = New-NmeWorkingHoursScaleInPolicyModel `
    -Aggressiveness "High"
```

