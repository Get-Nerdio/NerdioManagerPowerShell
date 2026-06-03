# New-NmeHostPoolVmDeploymentUpdateModel

Create an in-memory object for HostPoolVmDeploymentUpdate.

**Output Type:** `HostPoolVmDeploymentUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AlwaysPromptForPassword | Boolean | No |  |
| ApplicationSecurityGroupIds | Object | No |  |
| BootDiagEnabled | Boolean | No |  |
| BootDiagStorageAccountsIds | Object | No |  |
| CapacityReservationGroupsIds | Object | No |  |
| ComplianceEnforcement | String | No | Values: `None`, `CompliancePoliciesOnly`, `AllIntunePolicies` |
| ComplianceTimeout | Int32 | No |  |
| ConfidentialDiskEncryption | Boolean | No |  |
| DedicatedHostGroupId | String | No |  |
| DedicatedHostId | String | No |  |
| DiskEncryptionSetsIds | Object | No |  |
| EnableAppvClientService | Boolean | No |  |
| EnableHevc | Boolean | No |  |
| EnableTimezoneRedirection | Boolean | No |  |
| EnableVMDeallocation | Boolean | No |  |
| EncryptionAtHost | Boolean | No |  |
| EntraDeviceTimeoutInMinutes | Int32 | No |  |
| EntraIdGroups | Object | No |  |
| ForceVMRestart | Boolean | No |  |
| InstallCertificates | Boolean | No |  |
| InstallGpuDrivers | Boolean | No |  |
| IntegrityMonitoring | Boolean | No |  |
| IsAcceleratedNetworkingEnabled | Boolean | No |  |
| IsShadowUsersEnabled | Boolean | No |  |
| OnCreateActiveDirectoryId | Int32 | No |  |
| OnCreateEnabled | Boolean | No |  |
| OnCreateScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |
| OnHostCreateActiveDirectoryId | Int32 | No |  |
| OnHostCreateEnabled | Boolean | No |  |
| OnHostCreateScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |
| OnRemoveActiveDirectoryId | Int32 | No |  |
| OnRemoveEnabled | Boolean | No |  |
| OnRemoveScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |
| OnStartActiveDirectoryId | Int32 | No |  |
| OnStartEnabled | Boolean | No |  |
| OnStartScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |
| OnStopActiveDirectoryId | Int32 | No |  |
| OnStopEnabled | Boolean | No |  |
| OnStopScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |
| PatchOrchestration | String | No | Values: `Default`, `Manual`, `AutomaticByOS`, `AutomaticByPlatform` |
| PreferredDiskControllerType | String | No | Values: `SCSI`, `NVMe` |
| ProximityPlacementGroupIds | Object | No |  |
| RdpShortpath | String | No | Values: `DoNothing`, `ForceEnable`, `ForceDisable` |
| RunAppPolicies | Boolean | No |  |
| SecureBootEnabled | Boolean | No |  |
| SecurityType | String | No | Values: `None`, `TrustedLaunch`, `Confidential` |
| ShadowUserAssignments | [IHostPoolAssignment[]](New-NmeHostPoolAssignmentModel.md) | No | Pass as array. |
| UseAvailabilityZones | Boolean | No |  |
| UseDedicatedHosts | Boolean | No |  |
| UserAssignedIdentityIds | Object | No |  |
| VMTimezone | String | No |  |
| VTpmEnabled | Boolean | No |  |
| WatermarkingEnabled | Boolean | No |  |
| WatermarkingHeightFactor | Int32 | No |  |
| WatermarkingOpacity | Int32 | No |  |
| WatermarkingScale | Int32 | No |  |
| WatermarkingWidthFactor | Int32 | No |  |

## Usage

```powershell
$onCreateScriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$shadowUserAssignments = New-NmeHostPoolAssignmentModel `
    -ObjectId "<ObjectId>" `
    -ObjectType "User"
$model = New-NmeHostPoolVmDeploymentUpdateModel `
    -AlwaysPromptForPassword $true `
    -ApplicationSecurityGroupIds "<ApplicationSecurityGroupIds>" `
    -BootDiagEnabled $true `
    -BootDiagStorageAccountsIds "<BootDiagStorageAccountsIds>" `
    -CapacityReservationGroupsIds "<CapacityReservationGroupsIds>" `
    -ComplianceEnforcement "None" `
    -ComplianceTimeout 0 `
    -ConfidentialDiskEncryption $true `
    -DedicatedHostGroupId "<DedicatedHostGroupId>" `
    -DedicatedHostId "<DedicatedHostId>" `
    -DiskEncryptionSetsIds "<DiskEncryptionSetsIds>" `
    -EnableAppvClientService $true `
    -EnableHevc $true `
    -EnableTimezoneRedirection $true `
    -EnableVMDeallocation $true `
    -EncryptionAtHost $true `
    -EntraDeviceTimeoutInMinutes 0 `
    -EntraIdGroups "<EntraIdGroups>" `
    -ForceVMRestart $true `
    -InstallCertificates $true `
    -InstallGpuDrivers $true `
    -IntegrityMonitoring $true `
    -IsAcceleratedNetworkingEnabled $true `
    -IsShadowUsersEnabled $true `
    -OnCreateActiveDirectoryId 0 `
    -OnCreateEnabled $true `
    -OnCreateScriptedActions $onCreateScriptedActions `
    -OnHostCreateActiveDirectoryId 0 `
    -OnHostCreateEnabled $true `
    -OnHostCreateScriptedActions $onHostCreateScriptedActions `
    -OnRemoveActiveDirectoryId 0 `
    -OnRemoveEnabled $true `
    -OnRemoveScriptedActions $onRemoveScriptedActions `
    -OnStartActiveDirectoryId 0 `
    -OnStartEnabled $true `
    -OnStartScriptedActions $onStartScriptedActions `
    -OnStopActiveDirectoryId 0 `
    -OnStopEnabled $true `
    -OnStopScriptedActions $onStopScriptedActions `
    -PatchOrchestration "Default" `
    -PreferredDiskControllerType "SCSI" `
    -ProximityPlacementGroupIds "<ProximityPlacementGroupIds>" `
    -RdpShortpath "DoNothing" `
    -RunAppPolicies $true `
    -SecureBootEnabled $true `
    -SecurityType "None" `
    -ShadowUserAssignments $shadowUserAssignments `
    -UseAvailabilityZones $true `
    -UseDedicatedHosts $true `
    -UserAssignedIdentityIds "<UserAssignedIdentityIds>" `
    -VMTimezone "<VMTimezone>" `
    -VTpmEnabled $true `
    -WatermarkingEnabled $true `
    -WatermarkingHeightFactor 0 `
    -WatermarkingOpacity 0 `
    -WatermarkingScale 0 `
    -WatermarkingWidthFactor 0
```

