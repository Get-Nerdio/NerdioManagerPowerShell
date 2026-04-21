# New-NmePortalNotificationUpdateModel

Create an in-memory object for PortalNotificationUpdate.

**Output Type:** `PortalNotificationUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HtmlText | String | Yes |  |
| PeriodEndDate | DateTime | No |  |
| PeriodStartDate | DateTime | No |  |
| PeriodTimeZoneId | String | No |  |

## Usage

```powershell
$model = New-NmePortalNotificationUpdateModel `
    -HtmlText "<HtmlText>"
```

