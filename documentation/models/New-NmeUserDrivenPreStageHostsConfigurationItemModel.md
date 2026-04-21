# New-NmeUserDrivenPreStageHostsConfigurationItemModel

Create an in-memory object for UserDrivenPreStageHostsConfigurationItem.

**Output Type:** `UserDrivenPreStageHostsConfigurationItem`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Days | Object | Yes | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| DurationMinutes | Int32 | Yes |  |
| StartWork | String | Yes |  |

## Usage

```powershell
$model = New-NmeUserDrivenPreStageHostsConfigurationItemModel `
    -Days "0" `
    -DurationMinutes 0 `
    -StartWork "<StartWork>"
```

