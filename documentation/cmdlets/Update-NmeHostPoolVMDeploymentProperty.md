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
| AlwaysPromptForPassword | SwitchParameter | No |  |
| ApplicationSecurityGroupIds | String[] | No |  |
| BootDiagEnabled | SwitchParameter | No |  |
| BootDiagStorageAccountsIds | String[] | No |  |
| CapacityReservationGroupsIds | String[] | No |  |
| ComplianceEnforcement | String | No | Values: `None`, `CompliancePoliciesOnly`, `AllIntunePolicies` |
| ComplianceTimeout | Int32 | No |  |
| ConfidentialDiskEncryption | SwitchParameter | No |  |
| DedicatedHostGroupId | String | No |  |
| DedicatedHostId | String | No |  |
| DiskEncryptionSetsIds | String[] | No |  |
| EnableAppvClientService | SwitchParameter | No |  |
| EnableHevc | SwitchParameter | No |  |
| EnableTimezoneRedirection | SwitchParameter | No |  |
| EnableVMDeallocation | SwitchParameter | No |  |
| EncryptionAtHost | SwitchParameter | No |  |
| EntraDeviceTimeoutInMinutes | Int32 | No |  |
| EntraIdGroups | String[] | No |  |
| ForceVMRestart | SwitchParameter | No |  |
| InstallCertificates | SwitchParameter | No |  |
| InstallGpuDrivers | SwitchParameter | No |  |
| IntegrityMonitoring | SwitchParameter | No |  |
| IsAcceleratedNetworkingEnabled | SwitchParameter | No |  |
| IsShadowUsersEnabled | SwitchParameter | No |  |
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
| ProximityPlacementGroupIds | String[] | No |  |
| RdpShortpath | String | No | Values: `DoNothing`, `ForceEnable`, `ForceDisable` |
| RunAppPolicies | SwitchParameter | No |  |
| SecureBootEnabled | SwitchParameter | No |  |
| SecurityType | String | No | Values: `None`, `TrustedLaunch`, `Confidential` |
| ShadowUserAssignments | [IHostPoolAssignment[]](../models/New-NmeHostPoolAssignmentModel.md) | No |  |
| UseAvailabilityZones | SwitchParameter | No |  |
| UseDedicatedHosts | SwitchParameter | No |  |
| UserAssignedIdentityIds | String[] | No |  |
| VMTimezone | String | No |  |
| VTpmEnabled | SwitchParameter | No |  |
| WatermarkingEnabled | SwitchParameter | No |  |
| WatermarkingHeightFactor | Int32 | No |  |
| WatermarkingOpacity | Int32 | No |  |
| WatermarkingScale | Int32 | No |  |
| WatermarkingWidthFactor | Int32 | No |  |

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

