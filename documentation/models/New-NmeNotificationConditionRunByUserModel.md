# New-NmeNotificationConditionRunByUserModel

Create an in-memory object for NotificationConditionRunByUser.

**Output Type:** `NotificationConditionRunByUser`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| UserType | String | Yes | Values: `User`, `System`, `RestApi` |
| Username | String | Yes |  |

## Usage

```powershell
$model = New-NmeNotificationConditionRunByUserModel `
    -UserType "User" `
    -Username "<Username>"
```

