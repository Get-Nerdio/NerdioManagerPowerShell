# New-NmeHostPoolVmDeploymentProfileConfigurationUpdateModel

Create an in-memory object for HostPoolVmDeploymentProfileConfigurationUpdate.

**Output Type:** `HostPoolVmDeploymentProfileConfigurationUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AlwaysPromptForPassword | Boolean | No |  |
| ApplicationSecurityGroupIds | Object | No |  |
| ApplyVirtualDesktopOptimizations | Boolean | No |  |
| AvailabilityZones | Object | No |  |
| BootDiagEnabled | Boolean | No |  |
| BootDiagStorageAccountsIds | Object | No |  |
| CapacityReservationGroupsIds | Object | No |  |
| CertificateScriptSigningCertificateId | Int32 | No |  |
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
| HciGpuAllocationMode | String | No | Values: `None`, `Dda`, `Gpup` |
| HibernationMode | String | No | Values: `Disabled`, `Enabled` |
| InstallCertificates | Boolean | No |  |
| InstallGpuDrivers | Boolean | No |  |
| IntegrityMonitoring | Boolean | No |  |
| IsAcceleratedNetworkingEnabled | Boolean | No |  |
| IsShadowUsersEnabled | Boolean | No |  |
| PatchOrchestration | String | No | Values: `Default`, `Manual`, `AutomaticByOS`, `AutomaticByPlatform` |
| PreferredDiskControllerType | String | No | Values: `SCSI`, `NVMe` |
| ProximityPlacementGroupIds | Object | No |  |
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
$shadowUserAssignments = New-NmeHostPoolAssignmentModel `
    -ObjectId "<ObjectId>" `
    -ObjectType "User"
$model = New-NmeHostPoolVmDeploymentProfileConfigurationUpdateModel `
    -AlwaysPromptForPassword $true `
    -ApplicationSecurityGroupIds "<ApplicationSecurityGroupIds>" `
    -ApplyVirtualDesktopOptimizations $true `
    -AvailabilityZones "<AvailabilityZones>" `
    -BootDiagEnabled $true `
    -BootDiagStorageAccountsIds "<BootDiagStorageAccountsIds>" `
    -CapacityReservationGroupsIds "<CapacityReservationGroupsIds>" `
    -CertificateScriptSigningCertificateId 0 `
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
    -HciGpuAllocationMode "None" `
    -HibernationMode "Disabled" `
    -InstallCertificates $true `
    -InstallGpuDrivers $true `
    -IntegrityMonitoring $true `
    -IsAcceleratedNetworkingEnabled $true `
    -IsShadowUsersEnabled $true `
    -PatchOrchestration "Default" `
    -PreferredDiskControllerType "SCSI" `
    -ProximityPlacementGroupIds "<ProximityPlacementGroupIds>" `
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

