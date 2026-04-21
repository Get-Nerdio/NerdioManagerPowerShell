# New-NmePreStageHostsConfigurationItemModel

Create an in-memory object for PreStageHostsConfigurationItem.

**Output Type:** `PreStageHostsConfigurationItem`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Days | Object | Yes | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| HostsToBeReady | Int32 | Yes |  |
| HostsToBeReadyMeasureType | String | Yes | Values: `Count`, `Percent` |
| PreStageDiskType | Boolean | Yes |  |
| PreStageUnassigned | Boolean | Yes |  |
| PreStageUnassignedHosts | Boolean | Yes |  |
| StartWorkDuration | Int32 | Yes |  |
| StartWorkHour | Int32 | Yes |  |
| StartWorkMinutes | Int32 | No |  |

## Usage

```powershell
$model = New-NmePreStageHostsConfigurationItemModel `
    -Days "0" `
    -HostsToBeReady 0 `
    -HostsToBeReadyMeasureType "Count" `
    -PreStageDiskType $true `
    -PreStageUnassigned $true `
    -PreStageUnassignedHosts $true `
    -StartWorkDuration 0 `
    -StartWorkHour 0
```

