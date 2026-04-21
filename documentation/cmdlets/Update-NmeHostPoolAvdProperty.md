# Update-NmeHostPoolAvdProperty

**Endpoint:** `PATCH /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/wvd`

## Description

Update AVD properties for ARM host pool

**Output Type:** `IArmHostPoolProperties`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| AgentUpdateExcludeDrainModeHosts | SwitchParameter | No |  |
| AgentUpdateMaintenanceWindowTimeZone | String | No |  |
| AgentUpdatePowerOnHostsInMaintenanceWindow | SwitchParameter | No |  |
| AgentUpdateType | String | No | Values: `Default`, `Scheduled` |
| AgentUpdateUseSessionHostLocalTime | SwitchParameter | No |  |
| AssignmentType | String | No | Values: `Automatic`, `Direct` |
| Description | String | No |  |
| FriendlyName | String | No |  |
| LoadBalancerType | String | No | Values: `BreadthFirst`, `DepthFirst`, `Persistent`, `MultiplePersistent` |
| MaxSessionLimit | Int32 | No |  |
| PowerOnPooledHosts | SwitchParameter | No |  |
| PrimaryWindowDayOfWeek | Int32 | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| PrimaryWindowHour | Int32 | No |  |
| SecondaryWindowDayOfWeek | Int32 | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| SecondaryWindowHour | Int32 | No |  |
| StartVMOnConnect | SwitchParameter | No |  |
| ValidationEnv | SwitchParameter | No |  |

## Examples

### Example 1: Update description and friendly name

```powershell
Update-NmeHostPoolAvdProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -Description "Host pool description" `
    -FriendlyName "Friendly name"
```

### Example 2: Change load balancer type

```powershell
Update-NmeHostPoolAvdProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -LoadBalancerType "DepthFirst"
```

### Example 3: Change max sessions limit

```powershell
Update-NmeHostPoolAvdProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -MaxSessionLimit 10
```

### Example 4: Change AVD agent update

```powershell
Update-NmeHostPoolAvdProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -AgentUpdateMaintenanceWindowTimeZone "UTC" `
    -AgentUpdateType "Scheduled" `
    -PrimaryWindowDayOfWeek 5 `
    -PrimaryWindowHour 8
```

### Example 5: Complex

```powershell
Update-NmeHostPoolAvdProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -AgentUpdateMaintenanceWindowTimeZone "UTC" `
    -AgentUpdateType "Scheduled" `
    -Description "Host pool description" `
    -FriendlyName "Friendly name" `
    -LoadBalancerType "DepthFirst" `
    -MaxSessionLimit 10 `
    -PrimaryWindowDayOfWeek 5 `
    -PrimaryWindowHour 8 `
    -StartVMOnConnect
```

