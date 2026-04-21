# New-NmePortalNotification

**Endpoint:** `POST /api/v1/portal-notification`

## Description

Create portal notification

**Output Type:** `IResponseWithJobAndPortalNotification`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HtmlText | String | Yes |  |
| Type | String | Yes | Values: `UserSelfServiceGlobal`, `UserSelfServiceHostPool`, `AdminConsoleGlobal` |
| HostPoolId | String | No |  |
| PeriodEndDate | DateTime | No |  |
| PeriodStartDate | DateTime | No |  |
| PeriodTimeZoneId | String | No |  |

## Examples

```powershell
New-NmePortalNotification `
    -HtmlText "<HtmlText>" `
    -Type "UserSelfServiceGlobal"
```

