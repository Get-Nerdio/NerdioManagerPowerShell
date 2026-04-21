# Update-NmeHostPoolControlUpProperty

**Endpoint:** `PATCH /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/controlup`

## Description

Update ControlUp properties for ARM host pool

**Output Type:** `IHostPoolControlUp`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| AuthenticationDefault | SwitchParameter | No |  |
| AuthenticationValue | String | No |  |
| DnsZone | String | No |  |
| Folder | String | No |  |
| IsEnabled | SwitchParameter | No |  |
| MaintenanceWindowDays | Int32[] | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| MaintenanceWindowDurationMinutes | Int32 | No |  |
| MaintenanceWindowEnabled | SwitchParameter | No |  |
| MaintenanceWindowStartHour | Int32 | No |  |
| MaintenanceWindowStartMinutes | Int32 | No |  |
| MaintenanceWindowTimezoneId | String | No |  |
| MaxJobs | Int32 | No |  |
| Monitors | String[] | No |  |
| RegistrationType | String | No | Values: `Disabled`, `Default`, `Custom` |
| RegistrationValue | String | No |  |
| SecondaryDnsZone | String | No |  |
| SecondaryEnabled | SwitchParameter | No |  |
| SecondaryFolder | String | No |  |
| SecondaryMonitors | String[] | No |  |
| SecondarySite | String | No |  |
| Site | String | No |  |
| UnjoinHosts | SwitchParameter | No |  |
| UnjoinHostsDelayInDays | Int32 | No |  |
| UseDefault | SwitchParameter | No |  |
| Version | String | No |  |

## Examples

### Example 1: Model to update Hostpool with ControlUp default settings

```powershell
Update-NmeHostPoolControlUpProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -IsEnabled `
    -UseDefault
```

### Example 2: Model to update Hostpool with ControlUp custom values and default authentication key

```powershell
Update-NmeHostPoolControlUpProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -AuthenticationDefault `
    -Folder "folder" `
    -IsEnabled `
    -MaxJobs 10 `
    -Monitors @("/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.Compute/virtualMachines/vm-name-1") `
    -Site "e0b52e85-7caf-4260-a772-c0d82e56d407" `
    -UnjoinHosts `
    -UnjoinHostsDelayInDays 30 `
    -Version "8.6.5.465"
```

### Example 3: Model to update Hostpool with ControlUp custom values

```powershell
Update-NmeHostPoolControlUpProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -AuthenticationValue "<Authentication Key>" `
    -Folder "folder" `
    -IsEnabled `
    -MaxJobs 10 `
    -Monitors @("/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.Compute/virtualMachines/vm-name-1") `
    -Site "e0b52e85-7caf-4260-a772-c0d82e56d407" `
    -UnjoinHosts `
    -UnjoinHostsDelayInDays 30 `
    -Version "8.6.5.465"
```

### Example 4: Model to update Hostpool with disabled ControlUp maintenance window

```powershell
Update-NmeHostPoolControlUpProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -AuthenticationDefault
```

### Example 5: Model to update Hostpool with enabled ControlUp maintenance window

```powershell
Update-NmeHostPoolControlUpProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -AuthenticationDefault `
    -MaintenanceWindowDays @(3) `
    -MaintenanceWindowDurationMinutes 120 `
    -MaintenanceWindowEnabled `
    -MaintenanceWindowStartHour 3 `
    -MaintenanceWindowStartMinutes 0 `
    -MaintenanceWindowTimezoneId "Eastern Standard Time"
```

### Example 6: Model to update Hostpool with disabled secondary ControlUp config

```powershell
Update-NmeHostPoolControlUpProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -AuthenticationDefault
```

### Example 7: Model to update Hostpool with custom fields in the secondary ControlUp config

```powershell
Update-NmeHostPoolControlUpProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -AuthenticationDefault `
    -Folder "folder" `
    -Monitors @("/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.Compute/virtualMachines/vm-name-1") `
    -SecondaryEnabled `
    -SecondaryFolder "folder" `
    -SecondaryMonitors @("/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.Compute/virtualMachines/vm-name-1") `
    -SecondarySite "e0b52e85-7caf-4260-a772-c0d82e56d407" `
    -Site "e0b52e85-7caf-4260-a772-c0d82e56d407"
```

### Example 8: Model to update Hostpool with secondary ControlUp config where monitors and site use primary values ("Use Custom" unchecked)

```powershell
Update-NmeHostPoolControlUpProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -AuthenticationDefault `
    -Monitors @() `
    -SecondaryEnabled `
    -SecondaryMonitors @() `
    -SecondarySite "" `
    -Site ""
```

### Example 9: Model to update Hostpool with disabled ControlUp Registration key

```powershell
Update-NmeHostPoolControlUpProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -AuthenticationDefault `
    -RegistrationType "Disabled"
```

### Example 10: Model to update Hostpool with default ControlUp Registration key

```powershell
Update-NmeHostPoolControlUpProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -AuthenticationDefault `
    -RegistrationType "Default"
```

### Example 11: Model to update Hostpool with custom ControlUp Registration key

```powershell
Update-NmeHostPoolControlUpProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -AuthenticationDefault `
    -RegistrationType "Custom" `
    -RegistrationValue "<REGISTRATION KEY>"
```

