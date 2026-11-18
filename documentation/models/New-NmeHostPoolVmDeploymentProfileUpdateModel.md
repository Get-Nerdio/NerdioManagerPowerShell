# New-NmeHostPoolVmDeploymentProfileUpdateModel

Create an in-memory object for HostPoolVmDeploymentProfileUpdate.

**Output Type:** `HostPoolVmDeploymentProfileUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Configuration | [IHostPoolVMDeploymentProfileConfigurationUpdate](New-NmeHostPoolVMDeploymentProfileConfigurationUpdateModel.md) | No |  |
| Description | String | No |  |
| Name | String | No |  |

## Usage

```powershell
$shadowUserAssignments = New-NmeHostPoolAssignmentModel `
    -ObjectId "<ObjectId>" `
    -ObjectType "User"
$configuration = New-NmeHostPoolVMDeploymentProfileConfigurationUpdateModel `
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
$model = New-NmeHostPoolVmDeploymentProfileUpdateModel `
    -Configuration $configuration `
    -Description "<Description>" `
    -Name "<Name>"
```

