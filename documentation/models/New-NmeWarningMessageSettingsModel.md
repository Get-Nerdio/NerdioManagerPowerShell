# New-NmeWarningMessageSettingsModel

Create an in-memory object for WarningMessageSettings.

**Output Type:** `WarningMessageSettings`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Message | String | No |  |
| MinutesBeforeRemove | Int32 | No |  |

## Usage

```powershell
$model = New-NmeWarningMessageSettingsModel `
    -Message "<Message>" `
    -MinutesBeforeRemove 0
```

