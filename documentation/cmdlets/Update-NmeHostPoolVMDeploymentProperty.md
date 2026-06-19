# Update-NmeHostPoolVMDeploymentProperty

**Endpoint:** `PATCH /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/vm-deployment`

## Description

Patch host deployment config for ARM host pool

**Output Type:** `IHostPoolVMDeployment`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| AlwaysPromptForPassword | SwitchParameter | No | Enforce a password prompt for users logging on to Remote Desktop Services |
| ApplicationSecurityGroupIds | String[] | No | Application Security Group ID to associate with session host NICs |
| BootDiagEnabled | SwitchParameter | No | Is host boot diagnostics enabled? |
| BootDiagStorageAccountsIds | String[] | No | List storage account IDs for boot diagnostics, if custom accounts are used. |
| CapacityReservationGroupsIds | String[] | No | On-demand Capacity Reservation Groups ids |
| ComplianceEnforcement | String | No | Values: `None`, `CompliancePoliciesOnly`, `AllIntunePolicies` |
| ComplianceTimeout | Int32 | No | Compliance timeout in hours. |
| ConfidentialDiskEncryption | SwitchParameter | No | Is confidential disk encryption enabled? |
| DedicatedHostGroupId | String | No | Host Group resource id |
| DedicatedHostId | String | No | Host resource id |
| DiskEncryptionSetsIds | String[] | No | List of disk encryption set IDs for customer managed keys |
| EnableAppvClientService | SwitchParameter | No | Enable App-V client service if host pool is assigned to App Attach packages containing App-V package |
| EnableHevc | SwitchParameter | No | Enable H.265 encoding on supported VM sizes |
| EnableTimezoneRedirection | SwitchParameter | No | Enable time zone redirection |
| EnableVMDeallocation | SwitchParameter | No | Enable automatic deallocation of stopped VMs |
| EncryptionAtHost | SwitchParameter | No | Is encryption at host enabled? |
| EntraDeviceTimeoutInMinutes | Int32 | No | Entra groups timeout in minutes |
| EntraIdGroups | String[] | No | Default hostpool groups. |
| ForceVMRestart | SwitchParameter | No | Restart VM at the end of creation |
| InstallCertificates | SwitchParameter | No | Install App Attach certificates if any |
| InstallGpuDrivers | SwitchParameter | No | Install GPU drivers if VM have discrete GPU card |
| IntegrityMonitoring | SwitchParameter | No | Allow integrity monitoring if Trusted launch or Confidential security type is enabled |
| IsAcceleratedNetworkingEnabled | SwitchParameter | No | Use accelerated networking when possible |
| IsShadowUsersEnabled | SwitchParameter | No | Allow session shadowing for non-admin users |
| OnCreateActiveDirectoryId | Int32 | No |  |
| OnCreateEnabled | SwitchParameter | No |  |
| OnCreateScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | No |  |
| OnHostCreateActiveDirectoryId | Int32 | No |  |
| OnHostCreateEnabled | SwitchParameter | No |  |
| OnHostCreateScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | No |  |
| OnRemoveActiveDirectoryId | Int32 | No |  |
| OnRemoveEnabled | SwitchParameter | No |  |
| OnRemoveScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | No |  |
| OnStartActiveDirectoryId | Int32 | No |  |
| OnStartEnabled | SwitchParameter | No |  |
| OnStartScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | No |  |
| OnStopActiveDirectoryId | Int32 | No |  |
| OnStopEnabled | SwitchParameter | No |  |
| OnStopScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | No |  |
| PatchOrchestration | String | No | Values: `Default`, `Manual`, `AutomaticByOS`, `AutomaticByPlatform` |
| PreferredDiskControllerType | String | No | Values: `SCSI`, `NVMe` |
| ProximityPlacementGroupIds | String[] | No | Ids of Proximity Placement Groups where newly created VM can be placed |
| RdpShortpath | String | No | Values: `DoNothing`, `ForceEnable`, `ForceDisable` |
| RunAppPolicies | SwitchParameter | No | Scripted actions configuration |
| SecureBootEnabled | SwitchParameter | No | Allow secure boot if Trusted launch or Confidential security type is enabled |
| SecurityType | String | No | Values: `None`, `TrustedLaunch`, `Confidential` |
| ShadowUserAssignments | [IHostPoolAssignment[]](../models/New-NmeHostPoolAssignmentModel.md) | No | Allow session shadowing for following non-admin users and groups |
| UseAvailabilityZones | SwitchParameter | No | Distribute VMs across availability zones in the azure region |
| UseDedicatedHosts | SwitchParameter | No | Place VMs on Dedicated Hosts |
| UserAssignedIdentityIds | String[] | No | User-assigned managed identity ARM IDs to attach to session host VMs.Null = no change. |
| VMTimezone | String | No | Set windows timezone on VM |
| VTpmEnabled | SwitchParameter | No | Allow VTpm if Trusted launch or Confidential security type is enabled |
| WatermarkingEnabled | SwitchParameter | No |  |
| WatermarkingHeightFactor | Int32 | No | Determines the distance between the QR codes in percent |
| WatermarkingOpacity | Int32 | No | Determines the distance between the QR codes in percent |
| WatermarkingScale | Int32 | No | The size in pixels of each QR code dot |
| WatermarkingWidthFactor | Int32 | No | Determines the distance between the QR codes in percent |

## Examples

```powershell
$shadowUserAssignments = New-NmeHostPoolAssignmentModel `
    -ObjectId "<ObjectId>" `
    -ObjectType "User"
Update-NmeHostPoolVMDeploymentProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -AlwaysPromptForPassword `
    -DedicatedHostGroupId "/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.Compute/hostGroups/host-group-name" `
    -DedicatedHostId "/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.Compute/hostGroups/host-group-name/hosts/host-name" `
    -EnableAppvClientService `
    -EnableHevc `
    -EnableTimezoneRedirection `
    -EnableVMDeallocation `
    -ForceVMRestart `
    -InstallCertificates `
    -InstallGpuDrivers `
    -IntegrityMonitoring `
    -IsAcceleratedNetworkingEnabled `
    -IsShadowUsersEnabled `
    -SecureBootEnabled `
    -SecurityType "TrustedLaunch" `
    -ShadowUserAssignments @($shadowUserAssignments) `
    -UseAvailabilityZones `
    -UseDedicatedHosts `
    -VMTimezone "Central Standard Time" `
    -VTpmEnabled
```

