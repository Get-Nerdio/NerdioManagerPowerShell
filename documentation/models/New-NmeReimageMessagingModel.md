# New-NmeReimageMessagingModel

Create an in-memory object for ReimageMessaging.

**Output Type:** `ReimageMessaging`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| DeactivateBeforeOperation | Boolean | No |  |
| DelayMinutes | Int32 | No |  |
| LogOffAggressiveness | String | No | Values: `Force`, `Wait` |
| Message | String | No |  |
| TimeoutInDays | Int32 | No |  |

## Usage

```powershell
$model = New-NmeReimageMessagingModel `
    -DeactivateBeforeOperation $true `
    -DelayMinutes 0 `
    -LogOffAggressiveness "Force" `
    -Message "<Message>" `
    -TimeoutInDays 0
```

