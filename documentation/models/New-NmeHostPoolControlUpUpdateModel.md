# New-NmeHostPoolControlUpUpdateModel

Create an in-memory object for HostPoolControlUpUpdate.

**Output Type:** `HostPoolControlUpUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AuthenticationDefault | Boolean | No |  |
| AuthenticationValue | String | No |  |
| DnsZone | String | No |  |
| Folder | String | No |  |
| IsEnabled | Boolean | No |  |
| MaintenanceWindowDays | Object | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| MaintenanceWindowDurationMinutes | Int32 | No |  |
| MaintenanceWindowEnabled | Boolean | No |  |
| MaintenanceWindowStartHour | Int32 | No |  |
| MaintenanceWindowStartMinutes | Int32 | No |  |
| MaintenanceWindowTimezoneId | String | No |  |
| MaxJobs | Int32 | No |  |
| Monitors | Object | No |  |
| RegistrationType | String | No | Values: `Disabled`, `Default`, `Custom` |
| RegistrationValue | String | No |  |
| SecondaryDnsZone | String | No |  |
| SecondaryEnabled | Boolean | No |  |
| SecondaryFolder | String | No |  |
| SecondaryMonitors | Object | No |  |
| SecondarySite | String | No |  |
| Site | String | No |  |
| UnjoinHosts | Boolean | No |  |
| UnjoinHostsDelayInDays | Int32 | No |  |
| UseDefault | Boolean | No |  |
| Version | String | No |  |

## Usage

```powershell
$model = New-NmeHostPoolControlUpUpdateModel `
    -AuthenticationDefault $true `
    -AuthenticationValue "<AuthenticationValue>" `
    -DnsZone "<DnsZone>" `
    -Folder "<Folder>" `
    -IsEnabled $true `
    -MaintenanceWindowDays "0" `
    -MaintenanceWindowDurationMinutes 0 `
    -MaintenanceWindowEnabled $true `
    -MaintenanceWindowStartHour 0 `
    -MaintenanceWindowStartMinutes 0 `
    -MaintenanceWindowTimezoneId "<MaintenanceWindowTimezoneId>" `
    -MaxJobs 0 `
    -Monitors "<Monitors>" `
    -RegistrationType "Disabled" `
    -RegistrationValue "<RegistrationValue>" `
    -SecondaryDnsZone "<SecondaryDnsZone>" `
    -SecondaryEnabled $true `
    -SecondaryFolder "<SecondaryFolder>" `
    -SecondaryMonitors "<SecondaryMonitors>" `
    -SecondarySite "<SecondarySite>" `
    -Site "<Site>" `
    -UnjoinHosts $true `
    -UnjoinHostsDelayInDays 0 `
    -UseDefault $true `
    -Version "<Version>"
```

