# New-NmeScheduleConfigurationCreateModel

Create an in-memory object for ScheduleConfigurationCreate.

**Output Type:** `ScheduleConfigurationCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ScheduleRecurrenceType | String | Yes | Values: `Once`, `Daily`, `Weekly`, `Monthly`, `Hourly`, `PatchTuesday` |
| StartDate | DateTime | Yes |  |
| StartHour | Int32 | Yes |  |
| StartMinutes | Int32 | Yes |  |
| TimeZoneId | String | Yes |  |
| DayOfWeek | Int32 | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| DayOfWeekNumber | String | No | Values: `First`, `Second`, `Third`, `Fourth`, `Last` |
| Description | String | No |  |
| Name | String | No |  |
| OffsetInDays | Int32 | No |  |

## Usage

```powershell
$model = New-NmeScheduleConfigurationCreateModel `
    -ScheduleRecurrenceType "Once" `
    -StartDate "2024-01-01T00:00:00Z" `
    -StartHour 0 `
    -StartMinutes 0 `
    -TimeZoneId "<TimeZoneId>"
```

