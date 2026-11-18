# New-NmeHostPoolVMDeploymentProfile

**Endpoint:** `POST /api/v1/hostpool-vm-deployment-profiles`

## Description

Create hostpool shared VM deployment profile

**Output Type:** `IResponseWithJobAndHostPoolVMDeploymentProfile`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Configuration | [IHostPoolVMDeploymentProfileConfigurationCreate](../models/New-NmeHostPoolVMDeploymentProfileConfigurationCreateModel.md) | Yes |  |
| Description | String | Yes |  |
| Name | String | Yes |  |

## Examples

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
New-NmeHostPoolVMDeploymentProfile `
    -Configuration $configuration `
    -Description "<Description>" `
    -Name "<Name>"
```

