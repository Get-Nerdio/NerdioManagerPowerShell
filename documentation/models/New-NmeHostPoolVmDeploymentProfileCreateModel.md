# New-NmeHostPoolVmDeploymentProfileCreateModel

Create an in-memory object for HostPoolVmDeploymentProfileCreate.

**Output Type:** `HostPoolVmDeploymentProfileCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Configuration | [IHostPoolVMDeploymentProfileConfigurationCreate](New-NmeHostPoolVMDeploymentProfileConfigurationCreateModel.md) | Yes |  |
| Description | String | Yes |  |
| Name | String | Yes |  |

## Usage

```powershell
$shadowUserAssignments = New-NmeHostPoolAssignmentModel `
    -ObjectId "<ObjectId>" `
    -ObjectType "User"
$configuration = New-NmeHostPoolVMDeploymentProfileConfigurationCreateModel `
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
$model = New-NmeHostPoolVmDeploymentProfileCreateModel `
    -Configuration $configuration `
    -Description "<Description>" `
    -Name "<Name>"
```

