# Set-NmePortalNotification

**Endpoint:** `PUT /api/v1/portal-notification/{id}`

## Description

Update portal notification

**Output Type:** `IResponseWithJobAndPortalNotification`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HtmlText | String | Yes |  |
| Id | Int32 | Yes |  |
| PeriodEndDate | DateTime | No |  |
| PeriodStartDate | DateTime | No |  |
| PeriodTimeZoneId | String | No |  |

## Examples

```powershell
Set-NmePortalNotification `
    -HtmlText "<HtmlText>" `
    -Id 0
```

