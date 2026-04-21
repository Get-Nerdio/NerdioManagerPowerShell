# New-NmePreStageHostsConfigurationModel

Create an in-memory object for PreStageHostsConfiguration.

**Output Type:** `PreStageHostsConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Enable | Boolean | Yes |  |
| ConfigDays | Object | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| ConfigHostsToBeReady | Int32 | No |  |
| ConfigHostsToBeReadyMeasureType | String | No | Values: `Count`, `Percent` |
| ConfigPreStageDiskType | Boolean | No |  |
| ConfigPreStageUnassigned | Boolean | No |  |
| ConfigPreStageUnassignedHosts | Boolean | No |  |
| Configs | [IPreStageHostsConfigurationItem[]](New-NmePreStageHostsConfigurationItemModel.md) | No | Pass as array. |
| IntelligentPrestageMode | String | No | Values: `Hybrid`, `Automated` |
| IsMultipleConfigsMode | Boolean | No |  |
| StartWorkDuration | Int32 | No |  |
| StartWorkHour | Int32 | No |  |
| StartWorkMinutes | Int32 | No |  |

## Usage

```powershell
$model = New-NmePreStageHostsConfigurationModel `
    -Enable $true
```

