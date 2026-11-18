# New-NmeHostPoolVmDeploymentProfileConfigurationCreateModel

Create an in-memory object for HostPoolVmDeploymentProfileConfigurationCreate.

**Output Type:** `HostPoolVmDeploymentProfileConfigurationCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AlwaysPromptForPassword | Boolean | Yes |  |
| ApplicationSecurityGroupIds | Object | Yes |  |
| ApplyVirtualDesktopOptimizations | Boolean | Yes |  |
| BootDiagEnabled | Boolean | Yes |  |
| BootDiagStorageAccountsIds | Object | Yes |  |
| CapacityReservationGroupsIds | Object | Yes |  |
| ComplianceEnforcement | String | Yes | Values: `None`, `CompliancePoliciesOnly`, `AllIntunePolicies` |
| ConfidentialDiskEncryption | Boolean | Yes |  |
| DiskEncryptionSetsIds | Object | Yes |  |
| EnableAppvClientService | Boolean | Yes |  |
| EnableHevc | Boolean | Yes |  |
| EnableTimezoneRedirection | Boolean | Yes |  |
| EnableVMDeallocation | Boolean | Yes |  |
| EncryptionAtHost | Boolean | Yes |  |
| EntraDeviceTimeoutInMinutes | Int32 | Yes |  |
| EntraIdGroups | Object | Yes |  |
| ForceVMRestart | Boolean | Yes |  |
| HciGpuAllocationMode | String | Yes | Values: `None`, `Dda`, `Gpup` |
| HibernationMode | String | Yes | Values: `Disabled`, `Enabled` |
| InstallCertificates | Boolean | Yes |  |
| InstallGpuDrivers | Boolean | Yes |  |
| IntegrityMonitoring | Boolean | Yes |  |
| IsAcceleratedNetworkingEnabled | Boolean | Yes |  |
| IsShadowUsersEnabled | Boolean | Yes |  |
| PatchOrchestration | String | Yes | Values: `Default`, `Manual`, `AutomaticByOS`, `AutomaticByPlatform` |
| PreferredDiskControllerType | String | Yes | Values: `SCSI`, `NVMe` |
| ProximityPlacementGroupIds | Object | Yes |  |
| RunAppPolicies | Boolean | Yes |  |
| SecureBootEnabled | Boolean | Yes |  |
| SecurityType | String | Yes | Values: `None`, `TrustedLaunch`, `Confidential` |
| ShadowUserAssignments | [IHostPoolAssignment[]](New-NmeHostPoolAssignmentModel.md) | Yes | Pass as array. |
| UseAvailabilityZones | Boolean | Yes |  |
| UseDedicatedHosts | Boolean | Yes |  |
| UserAssignedIdentityIds | Object | Yes |  |
| VTpmEnabled | Boolean | Yes |  |
| WatermarkingEnabled | Boolean | Yes |  |
| WatermarkingHeightFactor | Int32 | Yes |  |
| WatermarkingOpacity | Int32 | Yes |  |
| WatermarkingScale | Int32 | Yes |  |
| WatermarkingWidthFactor | Int32 | Yes |  |
| AvailabilityZones | Object | No |  |
| CertificateScriptSigningCertificateId | Int32 | No |  |
| ComplianceTimeout | Int32 | No |  |
| DedicatedHostGroupId | String | No |  |
| DedicatedHostId | String | No |  |
| VMTimezone | String | No |  |

## Usage

```powershell
$shadowUserAssignments = New-NmeHostPoolAssignmentModel `
    -ObjectId "<ObjectId>" `
    -ObjectType "User"
$model = New-NmeHostPoolVmDeploymentProfileConfigurationCreateModel `
    -AlwaysPromptForPassword $true `
    -ApplicationSecurityGroupIds "<ApplicationSecurityGroupIds>" `
    -ApplyVirtualDesktopOptimizations $true `
    -BootDiagEnabled $true `
    -BootDiagStorageAccountsIds "<BootDiagStorageAccountsIds>" `
    -CapacityReservationGroupsIds "<CapacityReservationGroupsIds>" `
    -ComplianceEnforcement "None" `
    -ConfidentialDiskEncryption $true `
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
    -VTpmEnabled $true `
    -WatermarkingEnabled $true `
    -WatermarkingHeightFactor 0 `
    -WatermarkingOpacity 0 `
    -WatermarkingScale 0 `
    -WatermarkingWidthFactor 0
```

