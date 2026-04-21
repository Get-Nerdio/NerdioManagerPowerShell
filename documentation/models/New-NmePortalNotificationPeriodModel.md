# New-NmePortalNotificationPeriodModel

Create an in-memory object for PortalNotificationPeriod.

**Output Type:** `PortalNotificationPeriod`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| EndDate | DateTime | Yes |  |
| StartDate | DateTime | Yes |  |
| TimeZoneId | String | Yes |  |

## Usage

```powershell
$model = New-NmePortalNotificationPeriodModel `
    -EndDate "2024-01-01T00:00:00Z" `
    -StartDate "2024-01-01T00:00:00Z" `
    -TimeZoneId "<TimeZoneId>"
```

