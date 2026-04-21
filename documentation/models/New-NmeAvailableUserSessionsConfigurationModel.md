# New-NmeAvailableUserSessionsConfigurationModel

Create an in-memory object for AvailableUserSessionsConfiguration.

**Output Type:** `AvailableUserSessionsConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AvailableSessionRestriction | String | Yes | Values: `Always`, `DuringWorkHours` |
| MaxAvailableUserSessions | Int32 | Yes |  |
| MinAvailableUserSessions | Int32 | Yes |  |
| EndWorkHours | String | No |  |
| OutsideWorkHoursSessions | Int32 | No |  |

## Usage

```powershell
$model = New-NmeAvailableUserSessionsConfigurationModel `
    -AvailableSessionRestriction "Always" `
    -MaxAvailableUserSessions 0 `
    -MinAvailableUserSessions 0
```

