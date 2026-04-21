# New-NmeArmHostPoolPropertiesModel

Create an in-memory object for ArmHostPoolProperties.

**Output Type:** `ArmHostPoolProperties`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AgentUpdateExcludeDrainModeHosts | Boolean | No |  |
| AgentUpdateMaintenanceWindowTimeZone | String | No |  |
| AgentUpdatePowerOnHostsInMaintenanceWindow | Boolean | No |  |
| AgentUpdateType | String | No | Values: `Default`, `Scheduled` |
| AgentUpdateUseSessionHostLocalTime | Boolean | No |  |
| AssignmentType | String | No | Values: `Automatic`, `Direct` |
| Description | String | No |  |
| FriendlyName | String | No |  |
| LoadBalancerType | String | No | Values: `BreadthFirst`, `DepthFirst`, `Persistent`, `MultiplePersistent` |
| MaxSessionLimit | Int32 | No |  |
| PowerOnPooledHosts | Boolean | No |  |
| PrimaryWindowDayOfWeek | Int32 | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| PrimaryWindowHour | Int32 | No |  |
| SecondaryWindowDayOfWeek | Int32 | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| SecondaryWindowHour | Int32 | No |  |
| StartVMOnConnect | Boolean | No |  |
| ValidationEnv | Boolean | No |  |

## Usage

```powershell
$model = New-NmeArmHostPoolPropertiesModel `
    -AgentUpdateExcludeDrainModeHosts $true `
    -AgentUpdateMaintenanceWindowTimeZone "<AgentUpdateMaintenanceWindowTimeZone>" `
    -AgentUpdatePowerOnHostsInMaintenanceWindow $true `
    -AgentUpdateType "Default" `
    -AgentUpdateUseSessionHostLocalTime $true `
    -AssignmentType "Automatic" `
    -Description "<Description>" `
    -FriendlyName "<FriendlyName>" `
    -LoadBalancerType "BreadthFirst" `
    -MaxSessionLimit 0 `
    -PowerOnPooledHosts $true `
    -PrimaryWindowDayOfWeek "0" `
    -PrimaryWindowHour 0 `
    -SecondaryWindowDayOfWeek "0" `
    -SecondaryWindowHour 0 `
    -StartVMOnConnect $true `
    -ValidationEnv $true
```

