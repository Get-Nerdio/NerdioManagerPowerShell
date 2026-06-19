# New-NmePortalNotificationCreateModel

Create an in-memory object for PortalNotificationCreate.

**Output Type:** `PortalNotificationCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HtmlText | String | Yes |  |
| Type | String | Yes | Values: `UserSelfServiceGlobal`, `UserSelfServiceHostPool`, `AdminConsoleGlobal`, `LicenseUsageNotice`, `LicenseComplianceWarning` |
| HostPoolId | String | No |  |
| PeriodEndDate | DateTime | No |  |
| PeriodStartDate | DateTime | No |  |
| PeriodTimeZoneId | String | No |  |

## Usage

```powershell
$model = New-NmePortalNotificationCreateModel `
    -HtmlText "<HtmlText>" `
    -Type "UserSelfServiceGlobal"
```

