# New-NmeUserDrivenPreStageHostsConfigurationModel

Create an in-memory object for UserDrivenPreStageHostsConfiguration.

**Output Type:** `UserDrivenPreStageHostsConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Configs | [IUserDrivenPreStageHostsConfigurationItem[]](New-NmeUserDrivenPreStageHostsConfigurationItemModel.md) | Yes | Pass as array. |
| Enable | Boolean | Yes |  |
| PreStageIfUnassigned | Boolean | Yes |  |

## Usage

```powershell
$configs = New-NmeUserDrivenPreStageHostsConfigurationItemModel `
    -Days "0" `
    -DurationMinutes 0 `
    -StartWork "<StartWork>"
$model = New-NmeUserDrivenPreStageHostsConfigurationModel `
    -Configs $configs `
    -Enable $true `
    -PreStageIfUnassigned $true
```

