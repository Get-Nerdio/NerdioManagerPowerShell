# NerdioManagerPowerShell Module Documentation

## AD Config

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/ad/config` | [Get-NmeAdConfig](cmdlets/Get-NmeAdConfig.md) |

## App Attach

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| POST | `/api/v1/app-attach/certificate` | [New-NmeAppAttachCertificate](cmdlets/New-NmeAppAttachCertificate.md) |
| GET | `/api/v1/app-attach/image` | [Get-NmeAppAttachImage](cmdlets/Get-NmeAppAttachImage.md) |
| POST | `/api/v1/app-attach/image` | [New-NmeAppAttachImage](cmdlets/New-NmeAppAttachImage.md) |
| PATCH | `/api/v1/app-attach/image/{imageId}` | [Update-NmeAppAttachImage](cmdlets/Update-NmeAppAttachImage.md) |
| POST | `/api/v1/app-attach/image/{imageId}/version` | [New-NmeAppAttachImageVersion](cmdlets/New-NmeAppAttachImageVersion.md) |
| PUT | `/api/v1/app-attach/image/{imageId}/version/{versionName}` | [Set-NmeImageVersionGeoDistribution](cmdlets/Set-NmeImageVersionGeoDistribution.md) |
| GET | `/api/v1/app-attach/image/{imageId}/versions` | [Get-NmeAppAttachImageVersion](cmdlets/Get-NmeAppAttachImageVersion.md) |
| GET | `/api/v1/app-attach/locations` | [Get-NmeAppAttachStorageLocation](cmdlets/Get-NmeAppAttachStorageLocation.md) |
| POST | `/api/v1/app-attach/package-msix` | [New-NmeMsixPackage](cmdlets/New-NmeMsixPackage.md) |
| POST | `/api/v1/app-attach/package-msix/direct` | [New-NmeMsixPackageFromFile](cmdlets/New-NmeMsixPackageFromFile.md) |

## App Management

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/app-management/app-group` | [Get-NmeAppManagementAppGroup](cmdlets/Get-NmeAppManagementAppGroup.md) |
| POST | `/api/v1/app-management/app-group` | [New-NmeAppManagementAppGroup](cmdlets/New-NmeAppManagementAppGroup.md) |
| DELETE | `/api/v1/app-management/app-group/{appGroupId}` | [Remove-NmeAppManagementAppGroup](cmdlets/Remove-NmeAppManagementAppGroup.md) |
| PATCH | `/api/v1/app-management/app-group/{appGroupId}` | [Update-NmeAppManagementAppGroup](cmdlets/Update-NmeAppManagementAppGroup.md) |
| GET | `/api/v1/app-management/policy/onetime` | [Get-NmeAppManagementOnetimePolicy](cmdlets/Get-NmeAppManagementOnetimePolicy.md) |
| POST | `/api/v1/app-management/policy/onetime` | [New-NmeAppManagementOnetimePolicy](cmdlets/New-NmeAppManagementOnetimePolicy.md) |
| DELETE | `/api/v1/app-management/policy/onetime/{policyId}` | [Remove-NmeAppManagementOnetimePolicy](cmdlets/Remove-NmeAppManagementOnetimePolicy.md) |
| GET | `/api/v1/app-management/policy/onetime/{policyId}/state` | [Get-NmeAppManagementOnetimePolicySnapshot](cmdlets/Get-NmeAppManagementOnetimePolicySnapshot.md) |
| GET | `/api/v1/app-management/policy/recurrent` | [Get-NmeAppManagementRecurrentPolicy](cmdlets/Get-NmeAppManagementRecurrentPolicy.md) |
| POST | `/api/v1/app-management/policy/recurrent` | [New-NmeAppManagementRecurrentPolicy](cmdlets/New-NmeAppManagementRecurrentPolicy.md) |
| DELETE | `/api/v1/app-management/policy/recurrent/{policyId}` | [Remove-NmeAppManagementRecurrentPolicy](cmdlets/Remove-NmeAppManagementRecurrentPolicy.md) |
| PATCH | `/api/v1/app-management/policy/recurrent/{policyId}` | [Update-NmeAppManagementRecurrentPolicy](cmdlets/Update-NmeAppManagementRecurrentPolicy.md) |
| GET | `/api/v1/app-management/policy/recurrent/{policyId}/state` | [Get-NmeAppManagementRecurrentPolicySnapshot](cmdlets/Get-NmeAppManagementRecurrentPolicySnapshot.md) |
| GET | `/api/v1/app-management/repository` | [Get-NmeAppManagementRepository](cmdlets/Get-NmeAppManagementRepository.md) |
| GET | `/api/v1/app-management/repository/{repoId}/app` | [Get-NmeAppManagementRepositoryApp](cmdlets/Get-NmeAppManagementRepositoryApp.md) |

## Auto-scale profile

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/auto-scale-profile` | [Get-NmeAutoScaleProfile](cmdlets/Get-NmeAutoScaleProfile.md) |
| POST | `/api/v1/auto-scale-profile` | [New-NmeAutoScaleProfile](cmdlets/New-NmeAutoScaleProfile.md) |
| DELETE | `/api/v1/auto-scale-profile/{profileId}` | [Remove-NmeAutoScaleProfile](cmdlets/Remove-NmeAutoScaleProfile.md) |
| GET | `/api/v1/auto-scale-profile/{profileId}` | [Get-NmeAutoScaleProfile](cmdlets/Get-NmeAutoScaleProfile.md) |
| PATCH | `/api/v1/auto-scale-profile/{profileId}` | [Update-NmeAutoScaleProfile](cmdlets/Update-NmeAutoScaleProfile.md) |
| GET | `/api/v1/auto-scale-profile/{profileId}/assignments` | [Get-NmeAutoScaleProfileAssignment](cmdlets/Get-NmeAutoScaleProfileAssignment.md) |
| POST | `/api/v1/auto-scale-profile/{profileId}/assignments` | [Set-NmeAutoScaleProfileAssignment](cmdlets/Set-NmeAutoScaleProfileAssignment.md) |
| DELETE | `/api/v1/auto-scale-profile/{profileId}/assignments/{assignmentId}` | [Remove-NmeAutoScaleProfileAssignment](cmdlets/Remove-NmeAutoScaleProfileAssignment.md) |

## Deployments

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/deployment/current` | [Get-NmeCurrentInstallationInfo](cmdlets/Get-NmeCurrentInstallationInfo.md) |

## Desktop Image

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/desktop-image` | [Get-NmeDesktopImage](cmdlets/Get-NmeDesktopImage.md) |
| GET | `/api/v1/desktop-image/{subscriptionId}/{resourceGroup}/{name}/schedule` | [Get-NmeDesktopImageSchedule](cmdlets/Get-NmeDesktopImageSchedule.md) |
| POST | `/api/v1/desktop-image/{subscriptionId}/{resourceGroup}/{name}/script` | [Invoke-NmeDesktopImageRunScript](cmdlets/Invoke-NmeDesktopImageRunScript.md) |
| POST | `/api/v1/desktop-image/{subscriptionId}/{resourceGroup}/{name}/script/schedule-v2` | [New-NmeDesktopImageRunScriptSchedule](cmdlets/New-NmeDesktopImageRunScriptSchedule.md) |
| DELETE | `/api/v1/desktop-image/{subscriptionId}/{resourceGroup}/{name}/script/schedule-v2/{scheduleId}` | [Remove-NmeDesktopImageRunScriptSchedule](cmdlets/Remove-NmeDesktopImageRunScriptSchedule.md) |
| GET | `/api/v1/desktop-image/{subscriptionId}/{resourceGroup}/{name}/script/schedule-v2/{scheduleId}` | [Get-NmeDesktopImageRunScriptSchedule](cmdlets/Get-NmeDesktopImageRunScriptSchedule.md) |
| PUT | `/api/v1/desktop-image/{subscriptionId}/{resourceGroup}/{name}/script/schedule-v2/{scheduleId}` | [Set-NmeDesktopImageRunScriptSchedule](cmdlets/Set-NmeDesktopImageRunScriptSchedule.md) |
| POST | `/api/v1/desktop-image/{subscriptionId}/{resourceGroup}/{name}/set-as-image` | [Invoke-NmeDesktopImageSetAsImage](cmdlets/Invoke-NmeDesktopImageSetAsImage.md) |
| GET | `/api/v1/desktop-image/{subscriptionId}/{resourceGroup}/{name}/set-as-image/schedule-v2/{scheduleId}` | [Get-NmeDesktopImageSetAsImageSchedule](cmdlets/Get-NmeDesktopImageSetAsImageSchedule.md) |
| POST | `/api/v1/desktop-image/create-from-library` | [New-NmeDesktopImageFromLibrary](cmdlets/New-NmeDesktopImageFromLibrary.md) |

## FSLogix

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/fslogix` | [Get-NmeFsLogixProfile](cmdlets/Get-NmeFsLogixProfile.md) |
| POST | `/api/v1/fslogix` | [New-NmeFsLogixProfile](cmdlets/New-NmeFsLogixProfile.md) |
| DELETE | `/api/v1/fslogix/{id}` | [Remove-NmeFsLogixProfile](cmdlets/Remove-NmeFsLogixProfile.md) |
| PATCH | `/api/v1/fslogix/{id}` | [Update-NmeFsLogixProfile](cmdlets/Update-NmeFsLogixProfile.md) |

## Host Pool

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| DELETE | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}` | [Remove-NmeHostPool](cmdlets/Remove-NmeHostPool.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}` | [Get-NmeHostPool](cmdlets/Get-NmeHostPool.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}` | [New-NmeHostPool](cmdlets/New-NmeHostPool.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/active-directory` | [Get-NmeHostPoolActiveDirectoryConfiguration](cmdlets/Get-NmeHostPoolActiveDirectoryConfiguration.md) |
| PUT | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/active-directory` | [Set-NmeHostPoolActiveDirectoryConfiguration](cmdlets/Set-NmeHostPoolActiveDirectoryConfiguration.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/assign` | [Invoke-NmeHostPoolAssignUser](cmdlets/Invoke-NmeHostPoolAssignUser.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/associate-vms` | [Invoke-NmeHostPoolAssociateVM](cmdlets/Invoke-NmeHostPoolAssociateVM.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/auto-scale` | [Get-NmeHostPoolAutoScale](cmdlets/Get-NmeHostPoolAutoScale.md) |
| PATCH | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/auto-scale` | [Update-NmeHostPoolAutoScale](cmdlets/Update-NmeHostPoolAutoScale.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/auto-scale` | [New-NmeHostPoolAutoScale](cmdlets/New-NmeHostPoolAutoScale.md) |
| PUT | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/auto-scale` | [Set-NmeHostPoolAutoScale](cmdlets/Set-NmeHostPoolAutoScale.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/auto-scale/profile-override/{assignmentType}` | [Get-NmeHostPoolAutoscaleProfile](cmdlets/Get-NmeHostPoolAutoscaleProfile.md) |
| PATCH | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/auto-scale/profile-override/{assignmentType}` | [Update-NmeHostPoolAutoscaleProfile](cmdlets/Update-NmeHostPoolAutoscaleProfile.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/backup` | [Get-NmeHostPoolBackupProperty](cmdlets/Get-NmeHostPoolBackupProperty.md) |
| PATCH | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/backup` | [Update-NmeHostPoolBackupProperty](cmdlets/Update-NmeHostPoolBackupProperty.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/consoleconnect` | [Get-NmeHostPoolConsoleConnectProperty](cmdlets/Get-NmeHostPoolConsoleConnectProperty.md) |
| PATCH | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/consoleconnect` | [Update-NmeHostPoolConsoleConnectProperty](cmdlets/Update-NmeHostPoolConsoleConnectProperty.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/controlup` | [Get-NmeHostPoolControlUpProperty](cmdlets/Get-NmeHostPoolControlUpProperty.md) |
| PATCH | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/controlup` | [Update-NmeHostPoolControlUpProperty](cmdlets/Update-NmeHostPoolControlUpProperty.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/fslogix` | [Get-NmeHostPoolFsLogixConfiguration](cmdlets/Get-NmeHostPoolFsLogixConfiguration.md) |
| PUT | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/fslogix` | [Set-NmeHostPoolFsLogixConfiguration](cmdlets/Set-NmeHostPoolFsLogixConfiguration.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/rdp` | [Get-NmeHostPoolRdpProperty](cmdlets/Get-NmeHostPoolRdpProperty.md) |
| PATCH | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/rdp` | [Update-NmeHostPoolRdpProperty](cmdlets/Update-NmeHostPoolRdpProperty.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/reimage` | [Invoke-NmeHostPoolReimage](cmdlets/Invoke-NmeHostPoolReimage.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/schedule` | [Get-NmeHostPoolSchedule](cmdlets/Get-NmeHostPoolSchedule.md) |
| PUT | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/schedule-v2/{scheduleId}/reimage` | [Set-NmeHostPoolReimageSchedule](cmdlets/Set-NmeHostPoolReimageSchedule.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/schedule-v2/{scheduleId}/reimage/job-params` | [Get-NmeHostPoolReimageSchedule](cmdlets/Get-NmeHostPoolReimageSchedule.md) |
| PUT | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/schedule-v2/{scheduleId}/script-execution` | [Set-NmeHostPoolRunScriptSchedule](cmdlets/Set-NmeHostPoolRunScriptSchedule.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/schedule-v2/{scheduleId}/script-execution/job-params` | [Get-NmeHostPoolRunScriptSchedule](cmdlets/Get-NmeHostPoolRunScriptSchedule.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/schedule-v2/reimage` | [New-NmeHostPoolReimageSchedule](cmdlets/New-NmeHostPoolReimageSchedule.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/schedule-v2/script-execution` | [New-NmeHostPoolRunScriptSchedule](cmdlets/New-NmeHostPoolRunScriptSchedule.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/script-execution` | [Invoke-NmeHostPoolRunScript](cmdlets/Invoke-NmeHostPoolRunScript.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/session-timeout` | [Get-NmeHostPoolSessionTimeout](cmdlets/Get-NmeHostPoolSessionTimeout.md) |
| PUT | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/session-timeout` | [Set-NmeHostPoolSessionTimeout](cmdlets/Set-NmeHostPoolSessionTimeout.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/tag` | [Get-NmeHostPoolTag](cmdlets/Get-NmeHostPoolTag.md) |
| PUT | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/tag` | [Set-NmeHostPoolTag](cmdlets/Set-NmeHostPoolTag.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/tracking` | [Get-NmeHostPoolUsageTrackingProperty](cmdlets/Get-NmeHostPoolUsageTrackingProperty.md) |
| PATCH | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/tracking` | [Update-NmeHostPoolUsageTrackingProperty](cmdlets/Update-NmeHostPoolUsageTrackingProperty.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/unassign` | [Invoke-NmeHostPoolUnassignUser](cmdlets/Invoke-NmeHostPoolUnassignUser.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/user-self-service` | [Get-NmeHostPoolUserSelfServiceProperty](cmdlets/Get-NmeHostPoolUserSelfServiceProperty.md) |
| PATCH | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/user-self-service` | [Update-NmeHostPoolUserSelfServiceProperty](cmdlets/Update-NmeHostPoolUserSelfServiceProperty.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/vm-deployment` | [Get-NmeHostPoolVMDeploymentProperty](cmdlets/Get-NmeHostPoolVMDeploymentProperty.md) |
| PATCH | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/vm-deployment` | [Update-NmeHostPoolVMDeploymentProperty](cmdlets/Update-NmeHostPoolVMDeploymentProperty.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/wvd` | [Get-NmeHostPoolAvdProperty](cmdlets/Get-NmeHostPoolAvdProperty.md) |
| PATCH | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/wvd` | [Update-NmeHostPoolAvdProperty](cmdlets/Update-NmeHostPoolAvdProperty.md) |

## Image

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/image` | [Get-NmeImage](cmdlets/Get-NmeImage.md) |

## Intune Device

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| POST | `/api/v1/intune/tenant/{tenantId}/device/{managedId}/console-connect/connect` | [New-NmeIntuneDeviceConsoleConnectConnection](cmdlets/New-NmeIntuneDeviceConsoleConnectConnection.md) |

## Job

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/job/{jobId}` | [Get-NmeJob](cmdlets/Get-NmeJob.md) |
| GET | `/api/v1/job/{jobId}/tasks` | [Get-NmeJobTask](cmdlets/Get-NmeJobTask.md) |

## Networks

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/networks` | [Get-NmeLinkedNetwork](cmdlets/Get-NmeLinkedNetwork.md) |
| POST | `/api/v1/networks` | [New-NmeLinkedNetwork](cmdlets/New-NmeLinkedNetwork.md) |
| DELETE | `/api/v1/networks/{id}` | [Remove-NmeLinkedNetwork](cmdlets/Remove-NmeLinkedNetwork.md) |

## Packages

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/package` | [Get-NmePackage](cmdlets/Get-NmePackage.md) |

## Portal Notification

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/portal-notification` | [Get-NmePortalNotification](cmdlets/Get-NmePortalNotification.md) |
| POST | `/api/v1/portal-notification` | [New-NmePortalNotification](cmdlets/New-NmePortalNotification.md) |
| DELETE | `/api/v1/portal-notification/{id}` | [Remove-NmePortalNotification](cmdlets/Remove-NmePortalNotification.md) |
| GET | `/api/v1/portal-notification/{id}` | [Get-NmePortalNotification](cmdlets/Get-NmePortalNotification.md) |
| PUT | `/api/v1/portal-notification/{id}` | [Set-NmePortalNotification](cmdlets/Set-NmePortalNotification.md) |

## Portal Settings

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/portal/logo` | [Get-NmeLogo](cmdlets/Get-NmeLogo.md) |
| PATCH | `/api/v1/portal/logo` | [Update-NmeLogo](cmdlets/Update-NmeLogo.md) |

## RBAC roles

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/users-and-roles/assignment` | [Get-NmeRbacAssignment](cmdlets/Get-NmeRbacAssignment.md) |
| GET | `/api/v1/users-and-roles/assignment/{objectId}` | [Get-NmeRbacAssignment](cmdlets/Get-NmeRbacAssignment.md) |
| PUT | `/api/v1/users-and-roles/assignment/{objectId}` | [Set-NmeRbacAssignment](cmdlets/Set-NmeRbacAssignment.md) |
| POST | `/api/v1/users-and-roles/assignment/{objectId}/avd-workspaces` | [Add-NmeRbacAssignmentAvdWorkspace](cmdlets/Add-NmeRbacAssignmentAvdWorkspace.md) |

## Resource Group

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/resourcegroup` | [Get-NmeLinkedResourceGroup](cmdlets/Get-NmeLinkedResourceGroup.md) |
| DELETE | `/api/v1/resourcegroup/{subscriptionId}/{resourceGroup}/linked` | [Remove-NmeLinkedResourceGroup](cmdlets/Remove-NmeLinkedResourceGroup.md) |
| POST | `/api/v1/resourcegroup/{subscriptionId}/{resourceGroup}/linked` | [New-NmeLinkedResourceGroup](cmdlets/New-NmeLinkedResourceGroup.md) |

## Scripted Actions

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/scripted-actions` | [Get-NmeScriptedAction](cmdlets/Get-NmeScriptedAction.md) |
| POST | `/api/v1/scripted-actions` | [New-NmeScriptedAction](cmdlets/New-NmeScriptedAction.md) |
| DELETE | `/api/v1/scripted-actions/{id}` | [Remove-NmeScriptedAction](cmdlets/Remove-NmeScriptedAction.md) |
| PATCH | `/api/v1/scripted-actions/{id}` | [Update-NmeScriptedAction](cmdlets/Update-NmeScriptedAction.md) |
| POST | `/api/v1/scripted-actions/{id}/execution` | [Invoke-NmeRunbookScriptedActionRun](cmdlets/Invoke-NmeRunbookScriptedActionRun.md) |
| GET | `/api/v1/scripted-actions/{id}/schedule-v2` | [Get-NmeRunbookScriptedActionsSchedule](cmdlets/Get-NmeRunbookScriptedActionsSchedule.md) |
| POST | `/api/v1/scripted-actions/{id}/schedule-v2` | [New-NmeRunbookScriptedActionsSchedule](cmdlets/New-NmeRunbookScriptedActionsSchedule.md) |
| DELETE | `/api/v1/scripted-actions/{id}/schedule-v2/{scheduleId}` | [Remove-NmeRunbookScriptedActionsSchedule](cmdlets/Remove-NmeRunbookScriptedActionsSchedule.md) |
| GET | `/api/v1/scripted-actions/{id}/schedule-v2/{scheduleId}` | [Get-NmeRunbookScriptedActionsSchedule](cmdlets/Get-NmeRunbookScriptedActionsSchedule.md) |
| PUT | `/api/v1/scripted-actions/{id}/schedule-v2/{scheduleId}` | [Set-NmeRunbookScriptedActionsSchedule](cmdlets/Set-NmeRunbookScriptedActionsSchedule.md) |

## Scripted Actions Groups

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/scripted-actions-group` | [Get-NmeScriptedActionsGroup](cmdlets/Get-NmeScriptedActionsGroup.md) |
| GET | `/api/v1/scripted-actions-group/{id}` | [Get-NmeScriptedActionsGroup](cmdlets/Get-NmeScriptedActionsGroup.md) |

## Secure Variables

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| DELETE | `/api/v1/secure-variable` | [Remove-NmeSecureVariable](cmdlets/Remove-NmeSecureVariable.md) |
| GET | `/api/v1/secure-variable` | [Get-NmeSecureVariable](cmdlets/Get-NmeSecureVariable.md) |
| PATCH | `/api/v1/secure-variable` | [Update-NmeSecureVariable](cmdlets/Update-NmeSecureVariable.md) |
| POST | `/api/v1/secure-variable` | [New-NmeSecureVariable](cmdlets/New-NmeSecureVariable.md) |

## Session Host

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host` | [Get-NmeSessionHost](cmdlets/Get-NmeSessionHost.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host` | [New-NmeSessionHost](cmdlets/New-NmeSessionHost.md) |
| DELETE | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostName}` | [Remove-NmeSessionHost](cmdlets/Remove-NmeSessionHost.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostname}` | [Get-NmeSessionHostByName](cmdlets/Get-NmeSessionHostByName.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostname}/activate` | [Invoke-NmeSessionHostActivate](cmdlets/Invoke-NmeSessionHostActivate.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostname}/associate-vm` | [Invoke-NmeSessionHostAssociateVM](cmdlets/Invoke-NmeSessionHostAssociateVM.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostname}/console-connect/connection` | [New-NmeSessionConsoleConnectConnectionUrl](cmdlets/New-NmeSessionConsoleConnectConnectionUrl.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostname}/deactivate` | [Invoke-NmeSessionHostDeactivate](cmdlets/Invoke-NmeSessionHostDeactivate.md) |
| DELETE | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostname}/lock` | [Invoke-NmeSessionHostUnlock](cmdlets/Invoke-NmeSessionHostUnlock.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostname}/lock` | [Invoke-NmeSessionHostLock](cmdlets/Invoke-NmeSessionHostLock.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostname}/power-state` | [Set-NmeSessionHostPowerState](cmdlets/Set-NmeSessionHostPowerState.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostName}/reimage` | [Invoke-NmeSessionHostReimage](cmdlets/Invoke-NmeSessionHostReimage.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/user/{username}/host` | [Get-NmeSessionHostByUser](cmdlets/Get-NmeSessionHostByUser.md) |
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/user/{username}/host/power-state` | [Set-NmePersonalSessionHostPowerState](cmdlets/Set-NmePersonalSessionHostPowerState.md) |
| GET | `/api/v1/arm/workspace/{subscriptionId}/{resourceGroup}/{workspaceName}/host` | [Get-NmeSessionHostsByWorkspace](cmdlets/Get-NmeSessionHostsByWorkspace.md) |

## Shell Apps

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/shell-app` | [Get-NmeShellApp](cmdlets/Get-NmeShellApp.md) |
| POST | `/api/v1/shell-app` | [New-NmeShellApp](cmdlets/New-NmeShellApp.md) |
| DELETE | `/api/v1/shell-app/{id}` | [Remove-NmeShellApp](cmdlets/Remove-NmeShellApp.md) |
| GET | `/api/v1/shell-app/{id}` | [Get-NmeShellApp](cmdlets/Get-NmeShellApp.md) |
| PATCH | `/api/v1/shell-app/{id}` | [Update-NmeShellApp](cmdlets/Update-NmeShellApp.md) |
| GET | `/api/v1/shell-app/{id}/version` | [Get-NmeShellAppVersion](cmdlets/Get-NmeShellAppVersion.md) |
| POST | `/api/v1/shell-app/{id}/version` | [New-NmeShellAppVersion](cmdlets/New-NmeShellAppVersion.md) |
| DELETE | `/api/v1/shell-app/{id}/version/{name}` | [Remove-NmeShellAppVersion](cmdlets/Remove-NmeShellAppVersion.md) |
| PATCH | `/api/v1/shell-app/{id}/version/{name}` | [Update-NmeShellAppVersion](cmdlets/Update-NmeShellAppVersion.md) |

## Storage

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/storage/azure-files` | [Get-NmeFileShare](cmdlets/Get-NmeFileShare.md) |
| GET | `/api/v1/storage/azure-files/{subscriptionId}/{resourceGroup}/{accountName}/{shareName}/auto-scale` | [Get-NmeFileShareAutoscale](cmdlets/Get-NmeFileShareAutoscale.md) |
| PATCH | `/api/v1/storage/azure-files/{subscriptionId}/{resourceGroup}/{accountName}/{shareName}/auto-scale` | [Update-NmeFileShareAutoscaleStatus](cmdlets/Update-NmeFileShareAutoscaleStatus.md) |
| PUT | `/api/v1/storage/azure-files/{subscriptionId}/{resourceGroup}/{accountName}/{shareName}/auto-scale` | [Set-NmeFileShareAutoscale](cmdlets/Set-NmeFileShareAutoscale.md) |
| DELETE | `/api/v1/storage/azure-files/{subscriptionId}/{resourceGroup}/{accountName}/{shareName}/link` | [Remove-NmeLinkedFileShare](cmdlets/Remove-NmeLinkedFileShare.md) |
| POST | `/api/v1/storage/azure-files/{subscriptionId}/{resourceGroup}/{accountName}/{shareName}/link` | [New-NmeLinkedFileShare](cmdlets/New-NmeLinkedFileShare.md) |
| GET | `/api/v1/storage/netapp-files/{subscriptionId}/{resourceGroupName}/{accountName}/{poolName}/{volumeName}/auto-scale` | [Get-NmeNetAppFilesAutoscale](cmdlets/Get-NmeNetAppFilesAutoscale.md) |
| PATCH | `/api/v1/storage/netapp-files/{subscriptionId}/{resourceGroupName}/{accountName}/{poolName}/{volumeName}/auto-scale` | [Update-NmeNetAppFilesAutoscaleStatus](cmdlets/Update-NmeNetAppFilesAutoscaleStatus.md) |
| PUT | `/api/v1/storage/netapp-files/{subscriptionId}/{resourceGroupName}/{accountName}/{poolName}/{volumeName}/auto-scale` | [Set-NmeNetAppFilesAutoscale](cmdlets/Set-NmeNetAppFilesAutoscale.md) |

## Subscriptions

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| POST | `/api/v1/subscriptions` | [New-NmeLinkedSubscription](cmdlets/New-NmeLinkedSubscription.md) |
| PATCH | `/api/v1/subscriptions/{subscriptionId}` | [Update-NmeLinkedSubscription](cmdlets/Update-NmeLinkedSubscription.md) |

## Test

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/test` | [Test-Nme](cmdlets/Test-Nme.md) |

## Usages

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/usages/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}` | [Get-NmeHostPoolUsage](cmdlets/Get-NmeHostPoolUsage.md) |
| GET | `/api/v1/usages/arm/workspace` | [Get-NmeWorkspaceUsage](cmdlets/Get-NmeWorkspaceUsage.md) |
| GET | `/api/v1/usages/arm/workspace/{subscriptionId}/{resourceGroup}/{workspaceName}` | [Get-NmeWorkspaceUsage](cmdlets/Get-NmeWorkspaceUsage.md) |

## User Cost Attribution

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/user-cost-attribution/configuration` | [Get-NmeUserCostAttributionConfiguration](cmdlets/Get-NmeUserCostAttributionConfiguration.md) |
| POST | `/api/v1/user-cost-attribution/configuration` | [New-NmeUserCostAttributionConfiguration](cmdlets/New-NmeUserCostAttributionConfiguration.md) |
| DELETE | `/api/v1/user-cost-attribution/configuration/{id}` | [Remove-NmeUserCostAttributionConfiguration](cmdlets/Remove-NmeUserCostAttributionConfiguration.md) |
| GET | `/api/v1/user-cost-attribution/configuration/{id}` | [Get-NmeUserCostAttributionConfiguration](cmdlets/Get-NmeUserCostAttributionConfiguration.md) |
| PATCH | `/api/v1/user-cost-attribution/configuration/{id}` | [Update-NmeUserCostAttributionConfiguration](cmdlets/Update-NmeUserCostAttributionConfiguration.md) |
| GET | `/api/v1/user-cost-attribution/configuration/{id}/report/{year}/{month}` | [Get-NmeUserCostAttributionConfigurationReport](cmdlets/Get-NmeUserCostAttributionConfigurationReport.md) |
| POST | `/api/v1/user-cost-attribution/configuration/{id}/report/{year}/{month}` | [Invoke-NmeUserCostAttributionConfigurationReportBuild](cmdlets/Invoke-NmeUserCostAttributionConfigurationReportBuild.md) |
| GET | `/api/v1/user-cost-attribution/configuration/{id}/report/{year}/{month}/export` | [Get-NmeUserCostAttributionConfigurationReportExportAsCsv](cmdlets/Get-NmeUserCostAttributionConfigurationReportExportAsCsv.md) |
| POST | `/api/v1/user-cost-attribution/configuration/{id}/report/{year}/{month}/export` | [Invoke-NmeUserCostAttributionConfigurationReportExport](cmdlets/Invoke-NmeUserCostAttributionConfigurationReportExport.md) |
| GET | `/api/v1/user-cost-attribution/export/{exportId}` | [Get-NmeUserCostAttributionConfigurationReportExport](cmdlets/Get-NmeUserCostAttributionConfigurationReportExport.md) |

## User Session

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| POST | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostname}/session/{sessionId}/action` | [Invoke-NmeHostPoolUserSessionAction](cmdlets/Invoke-NmeHostPoolUserSessionAction.md) |
| GET | `/api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/session` | [Get-NmeHostPoolUserSession](cmdlets/Get-NmeHostPoolUserSession.md) |
| GET | `/api/v1/arm/workspace/{subscriptionId}/{resourceGroup}/{workspaceName}/session` | [Get-NmeWorkspaceUserSession](cmdlets/Get-NmeWorkspaceUserSession.md) |

## Workspace

| Method | Endpoint | Cmdlet |
|--------|----------|--------|
| GET | `/api/v1/workspace` | [Get-NmeWorkspace](cmdlets/Get-NmeWorkspace.md) |
| POST | `/api/v1/workspace` | [New-NmeWorkspace](cmdlets/New-NmeWorkspace.md) |
| DELETE | `/api/v1/workspace/{subscriptionId}/{resourceGroup}/{workspaceName}` | [Remove-NmeWorkspace](cmdlets/Remove-NmeWorkspace.md) |


### Utility Cmdlets

| Cmdlet | Description |
|--------|-------------|
| [Connect-Nme](cmdlets/Connect-Nme.md) | Authenticates to the Nerdio Manager REST API for subsequent cmdlet calls |
| [Disconnect-Nme](cmdlets/Disconnect-Nme.md) | Clears REST API credentials and session stored in environment variables |

## Model Cmdlets

Model cmdlets create in-memory objects used as parameters for the action cmdlets above.

| Cmdlet | Description |
|--------|-------------|
| [New-NmeActiveSessionsConfigurationModel](models/New-NmeActiveSessionsConfigurationModel.md) | Create an in-memory object for ActiveSessionsConfiguration. |
| [New-NmeAdConfigPropertiesWithPasswordModel](models/New-NmeAdConfigPropertiesWithPasswordModel.md) | Create an in-memory object for AdConfigPropertiesWithPassword. |
| [New-NmeAdObjectCreateModel](models/New-NmeAdObjectCreateModel.md) | Create an in-memory object for AdObjectCreate. |
| [New-NmeAnyAppActionCreateModel](models/New-NmeAnyAppActionCreateModel.md) | Create an in-memory object for AnyAppActionCreate. |
| [New-NmeAnyAppScopeCreateModel](models/New-NmeAnyAppScopeCreateModel.md) | Create an in-memory object for AnyAppScopeCreate. |
| [New-NmeAnySelfServiceAppCreateModel](models/New-NmeAnySelfServiceAppCreateModel.md) | Create an in-memory object for AnySelfServiceAppCreate. |
| [New-NmeAnyUamPolicyActionCreateModel](models/New-NmeAnyUamPolicyActionCreateModel.md) | Create an in-memory object for AnyUamPolicyActionCreate. |
| [New-NmeAppAttachImageCreateModel](models/New-NmeAppAttachImageCreateModel.md) | Create an in-memory object for AppAttachImageCreate. |
| [New-NmeAppAttachImageUpdateModel](models/New-NmeAppAttachImageUpdateModel.md) | Create an in-memory object for AppAttachImageUpdate. |
| [New-NmeAppAttachImageVersionCreateModel](models/New-NmeAppAttachImageVersionCreateModel.md) | Create an in-memory object for AppAttachImageVersionCreate. |
| [New-NmeAppAttachImageVersionUpdateModel](models/New-NmeAppAttachImageVersionUpdateModel.md) | Create an in-memory object for AppAttachImageVersionUpdate. |
| [New-NmeAppGroupCreateModel](models/New-NmeAppGroupCreateModel.md) | Create an in-memory object for AppGroupCreate. |
| [New-NmeAppGroupItemCreateModel](models/New-NmeAppGroupItemCreateModel.md) | Create an in-memory object for AppGroupItemCreate. |
| [New-NmeAppGroupUpdateModel](models/New-NmeAppGroupUpdateModel.md) | Create an in-memory object for AppGroupUpdate. |
| [New-NmeAppPolicyOneTimeCreateModel](models/New-NmeAppPolicyOneTimeCreateModel.md) | Create an in-memory object for AppPolicyOneTimeCreate. |
| [New-NmeAppPolicyRecurrentCreateModel](models/New-NmeAppPolicyRecurrentCreateModel.md) | Create an in-memory object for AppPolicyRecurrentCreate. |
| [New-NmeAppPolicyRecurrentUpdateModel](models/New-NmeAppPolicyRecurrentUpdateModel.md) | Create an in-memory object for AppPolicyRecurrentUpdate. |
| [New-NmeArmHostPoolAssignmentModel](models/New-NmeArmHostPoolAssignmentModel.md) | Create an in-memory object for ArmHostPoolAssignment. |
| [New-NmeArmHostPoolCreateModel](models/New-NmeArmHostPoolCreateModel.md) | Create an in-memory object for ArmHostPoolCreate. |
| [New-NmeArmHostPoolPersonalConfigModel](models/New-NmeArmHostPoolPersonalConfigModel.md) | Create an in-memory object for ArmHostPoolPersonalConfig. |
| [New-NmeArmHostPoolPooledConfigModel](models/New-NmeArmHostPoolPooledConfigModel.md) | Create an in-memory object for ArmHostPoolPooledConfig. |
| [New-NmeArmHostPoolPropertiesModel](models/New-NmeArmHostPoolPropertiesModel.md) | Create an in-memory object for ArmHostPoolProperties. |
| [New-NmeArmHostPoolSourceModel](models/New-NmeArmHostPoolSourceModel.md) | Create an in-memory object for ArmHostPoolSource. |
| [New-NmeAutoHealActionModel](models/New-NmeAutoHealActionModel.md) | Create an in-memory object for AutoHealAction. |
| [New-NmeAutoHealConfigurationItemModel](models/New-NmeAutoHealConfigurationItemModel.md) | Create an in-memory object for AutoHealConfigurationItem. |
| [New-NmeAutoHealConfigurationModel](models/New-NmeAutoHealConfigurationModel.md) | Create an in-memory object for AutoHealConfiguration. |
| [New-NmeAutoScaleAdObjectModel](models/New-NmeAutoScaleAdObjectModel.md) | Create an in-memory object for AutoScaleAdObject. |
| [New-NmeAutoScaleDefaultConfigurationModel](models/New-NmeAutoScaleDefaultConfigurationModel.md) | Create an in-memory object for AutoScaleDefaultConfiguration. |
| [New-NmeAutoScaleDefaultConfigurationUpdateModel](models/New-NmeAutoScaleDefaultConfigurationUpdateModel.md) | Create an in-memory object for AutoScaleDefaultConfigurationUpdate. |
| [New-NmeAutoScaleOverrideProfileFlagsModel](models/New-NmeAutoScaleOverrideProfileFlagsModel.md) | Create an in-memory object for AutoScaleOverrideProfileFlags. |
| [New-NmeAutoScaleProfileAssignmentCreateModel](models/New-NmeAutoScaleProfileAssignmentCreateModel.md) | Create an in-memory object for AutoScaleProfileAssignmentCreate. |
| [New-NmeAutoScaleProfileCreateModel](models/New-NmeAutoScaleProfileCreateModel.md) | Create an in-memory object for AutoScaleProfileCreate. |
| [New-NmeAutoScaleProfileOverrideUpdateModel](models/New-NmeAutoScaleProfileOverrideUpdateModel.md) | Create an in-memory object for AutoScaleProfileOverrideUpdate. |
| [New-NmeAutoScaleProfileScheduleDateRangeModel](models/New-NmeAutoScaleProfileScheduleDateRangeModel.md) | Create an in-memory object for AutoScaleProfileScheduleDateRange. |
| [New-NmeAutoScaleProfileScheduleModel](models/New-NmeAutoScaleProfileScheduleModel.md) | Create an in-memory object for AutoScaleProfileSchedule. |
| [New-NmeAutoScaleProfileUpdateModel](models/New-NmeAutoScaleProfileUpdateModel.md) | Create an in-memory object for AutoScaleProfileUpdate. |
| [New-NmeAutoScaleSecondaryRegionConfigurationModel](models/New-NmeAutoScaleSecondaryRegionConfigurationModel.md) | Create an in-memory object for AutoScaleSecondaryRegionConfiguration. |
| [New-NmeAutoScaleSecondaryRegionModel](models/New-NmeAutoScaleSecondaryRegionModel.md) | Create an in-memory object for AutoScaleSecondaryRegion. |
| [New-NmeAutoScaleUpdateModel](models/New-NmeAutoScaleUpdateModel.md) | Create an in-memory object for AutoScaleUpdate. |
| [New-NmeAutoScaleUserDrivenConfigurationCreateModel](models/New-NmeAutoScaleUserDrivenConfigurationCreateModel.md) | Create an in-memory object for AutoScaleUserDrivenConfigurationCreate. |
| [New-NmeAutoScaleUserDrivenConfigurationUpdateModel](models/New-NmeAutoScaleUserDrivenConfigurationUpdateModel.md) | Create an in-memory object for AutoScaleUserDrivenConfigurationUpdate. |
| [New-NmeAutoScaleWorkingHoursConfigurationModel](models/New-NmeAutoScaleWorkingHoursConfigurationModel.md) | Create an in-memory object for AutoScaleWorkingHoursConfiguration. |
| [New-NmeAutoScaleWorkingHoursConfigurationUpdateModel](models/New-NmeAutoScaleWorkingHoursConfigurationUpdateModel.md) | Create an in-memory object for AutoScaleWorkingHoursConfigurationUpdate. |
| [New-NmeAvailableUserSessionsConfigurationModel](models/New-NmeAvailableUserSessionsConfigurationModel.md) | Create an in-memory object for AvailableUserSessionsConfiguration. |
| [New-NmeAvdAgentMaintenanceWindowModel](models/New-NmeAvdAgentMaintenanceWindowModel.md) | Create an in-memory object for AvdAgentMaintenanceWindow. |
| [New-NmeAvdAgentUpdateModel](models/New-NmeAvdAgentUpdateModel.md) | Create an in-memory object for AvdAgentUpdate. |
| [New-NmeAzureFilesAutoscaleConfigModel](models/New-NmeAzureFilesAutoscaleConfigModel.md) | Create an in-memory object for AzureFilesAutoscaleConfig. |
| [New-NmeAzureFilesAutoscaleConfigUpdateModel](models/New-NmeAzureFilesAutoscaleConfigUpdateModel.md) | Create an in-memory object for AzureFilesAutoscaleConfigUpdate. |
| [New-NmeAzureFilesBasicAutoscaleConfigModel](models/New-NmeAzureFilesBasicAutoscaleConfigModel.md) | Create an in-memory object for AzureFilesBasicAutoscaleConfig. |
| [New-NmeAzureFilesBasicAutoscaleConfigUpdateModel](models/New-NmeAzureFilesBasicAutoscaleConfigUpdateModel.md) | Create an in-memory object for AzureFilesBasicAutoscaleConfigUpdate. |
| [New-NmeAzureFilesPreStageConfigModel](models/New-NmeAzureFilesPreStageConfigModel.md) | Create an in-memory object for AzureFilesPreStageConfig. |
| [New-NmeAzureFilesPreStageConfigUpdateModel](models/New-NmeAzureFilesPreStageConfigUpdateModel.md) | Create an in-memory object for AzureFilesPreStageConfigUpdate. |
| [New-NmeAzureFilesScalingConfigModel](models/New-NmeAzureFilesScalingConfigModel.md) | Create an in-memory object for AzureFilesScalingConfig. |
| [New-NmeAzureFilesScalingConfigUpdateModel](models/New-NmeAzureFilesScalingConfigUpdateModel.md) | Create an in-memory object for AzureFilesScalingConfigUpdate. |
| [New-NmeConsoleConnectConnectionModel](models/New-NmeConsoleConnectConnectionModel.md) | Create an in-memory object for ConsoleConnectConnection. |
| [New-NmeCredentialsModel](models/New-NmeCredentialsModel.md) | Create an in-memory object for Credentials. |
| [New-NmeCustomScriptScheduleCreateModel](models/New-NmeCustomScriptScheduleCreateModel.md) | Create an in-memory object for CustomScriptScheduleCreate. |
| [New-NmeDynamicPoolConfigurationModel](models/New-NmeDynamicPoolConfigurationModel.md) | Create an in-memory object for DynamicPoolConfiguration. |
| [New-NmeDynamicPoolTriggerInfoModel](models/New-NmeDynamicPoolTriggerInfoModel.md) | Create an in-memory object for DynamicPoolTriggerInfo. |
| [New-NmeExtensionsConfigurationModel](models/New-NmeExtensionsConfigurationModel.md) | Create an in-memory object for ExtensionsConfiguration. |
| [New-NmeFsLogixCloudCacheRegistrySettingsModel](models/New-NmeFsLogixCloudCacheRegistrySettingsModel.md) | Create an in-memory object for FsLogixCloudCacheRegistrySettings. |
| [New-NmeFsLogixCloudCacheRegistrySettingsUpdateModel](models/New-NmeFsLogixCloudCacheRegistrySettingsUpdateModel.md) | Create an in-memory object for FsLogixCloudCacheRegistrySettingsUpdate. |
| [New-NmeFsLogixExclusionsModel](models/New-NmeFsLogixExclusionsModel.md) | Create an in-memory object for FsLogixExclusions. |
| [New-NmeFsLogixExclusionsUpdateModel](models/New-NmeFsLogixExclusionsUpdateModel.md) | Create an in-memory object for FsLogixExclusionsUpdate. |
| [New-NmeFsLogixInstallerModel](models/New-NmeFsLogixInstallerModel.md) | Create an in-memory object for FsLogixInstaller. |
| [New-NmeFsLogixInstallerUpdateModel](models/New-NmeFsLogixInstallerUpdateModel.md) | Create an in-memory object for FsLogixInstallerUpdate. |
| [New-NmeFsLogixOptionalRegistrySettingsModel](models/New-NmeFsLogixOptionalRegistrySettingsModel.md) | Create an in-memory object for FsLogixOptionalRegistrySettings. |
| [New-NmeFsLogixOptionalRegistrySettingsUpdateModel](models/New-NmeFsLogixOptionalRegistrySettingsUpdateModel.md) | Create an in-memory object for FsLogixOptionalRegistrySettingsUpdate. |
| [New-NmeFsLogixParamsCreateModel](models/New-NmeFsLogixParamsCreateModel.md) | Create an in-memory object for FsLogixParamsCreate. |
| [New-NmeFsLogixParamsUpdateModel](models/New-NmeFsLogixParamsUpdateModel.md) | Create an in-memory object for FsLogixParamsUpdate. |
| [New-NmeFsLogixPropertiesModel](models/New-NmeFsLogixPropertiesModel.md) | Create an in-memory object for FsLogixProperties. |
| [New-NmeFsLogixPropertiesUpdateModel](models/New-NmeFsLogixPropertiesUpdateModel.md) | Create an in-memory object for FsLogixPropertiesUpdate. |
| [New-NmeFsLogixRegistryModel](models/New-NmeFsLogixRegistryModel.md) | Create an in-memory object for FsLogixRegistry. |
| [New-NmeFsLogixRegistryUpdateModel](models/New-NmeFsLogixRegistryUpdateModel.md) | Create an in-memory object for FsLogixRegistryUpdate. |
| [New-NmeGalleryImageConfigurationModel](models/New-NmeGalleryImageConfigurationModel.md) | Create an in-memory object for GalleryImageConfiguration. |
| [New-NmeHostChangeModel](models/New-NmeHostChangeModel.md) | Create an in-memory object for HostChange. |
| [New-NmeHostPoolActiveDirectoryUpdateModel](models/New-NmeHostPoolActiveDirectoryUpdateModel.md) | Create an in-memory object for HostPoolActiveDirectoryUpdate. |
| [New-NmeHostPoolAdConfigModel](models/New-NmeHostPoolAdConfigModel.md) | Create an in-memory object for HostPoolAdConfig. |
| [New-NmeHostPoolAssignmentModel](models/New-NmeHostPoolAssignmentModel.md) | Create an in-memory object for HostPoolAssignment. |
| [New-NmeHostPoolBackupModel](models/New-NmeHostPoolBackupModel.md) | Create an in-memory object for HostPoolBackup. |
| [New-NmeHostPoolConsoleConnectUpdateModel](models/New-NmeHostPoolConsoleConnectUpdateModel.md) | Create an in-memory object for HostPoolConsoleConnectUpdate. |
| [New-NmeHostPoolControlUpAuthenticationKeyUpdateModel](models/New-NmeHostPoolControlUpAuthenticationKeyUpdateModel.md) | Create an in-memory object for HostPoolControlUpAuthenticationKeyUpdate. |
| [New-NmeHostPoolControlUpMaintenanceWindowModel](models/New-NmeHostPoolControlUpMaintenanceWindowModel.md) | Create an in-memory object for HostPoolControlUpMaintenanceWindow. |
| [New-NmeHostPoolControlUpRegistrationKeyUpdateModel](models/New-NmeHostPoolControlUpRegistrationKeyUpdateModel.md) | Create an in-memory object for HostPoolControlUpRegistrationKeyUpdate. |
| [New-NmeHostPoolControlUpSecondaryConfigModel](models/New-NmeHostPoolControlUpSecondaryConfigModel.md) | Create an in-memory object for HostPoolControlUpSecondaryConfig. |
| [New-NmeHostPoolControlUpUpdateModel](models/New-NmeHostPoolControlUpUpdateModel.md) | Create an in-memory object for HostPoolControlUpUpdate. |
| [New-NmeHostPoolFsLogixPropertiesModel](models/New-NmeHostPoolFsLogixPropertiesModel.md) | Create an in-memory object for HostPoolFsLogixProperties. |
| [New-NmeHostPoolFsLogixUpdateModel](models/New-NmeHostPoolFsLogixUpdateModel.md) | Create an in-memory object for HostPoolFsLogixUpdate. |
| [New-NmeHostPoolRdpShortpathPropertiesModel](models/New-NmeHostPoolRdpShortpathPropertiesModel.md) | Create an in-memory object for HostPoolRdpShortpathProperties. |
| [New-NmeHostPoolRdpUpdateModel](models/New-NmeHostPoolRdpUpdateModel.md) | Create an in-memory object for HostPoolRdpUpdate. |
| [New-NmeHostPoolReimageParamsModel](models/New-NmeHostPoolReimageParamsModel.md) | Create an in-memory object for HostPoolReimageParams. |
| [New-NmeHostPoolReimageRunModel](models/New-NmeHostPoolReimageRunModel.md) | Create an in-memory object for HostPoolReimageRun. |
| [New-NmeHostPoolReimageScheduleModel](models/New-NmeHostPoolReimageScheduleModel.md) | Create an in-memory object for HostPoolReimageSchedule. |
| [New-NmeHostPoolScriptedActionsConfigModel](models/New-NmeHostPoolScriptedActionsConfigModel.md) | Create an in-memory object for HostPoolScriptedActionsConfig. |
| [New-NmeHostPoolScriptedActionsModel](models/New-NmeHostPoolScriptedActionsModel.md) | Create an in-memory object for HostPoolScriptedActions. |
| [New-NmeHostPoolScriptRunModel](models/New-NmeHostPoolScriptRunModel.md) | Create an in-memory object for HostPoolScriptRun. |
| [New-NmeHostPoolScriptRunParamsModel](models/New-NmeHostPoolScriptRunParamsModel.md) | Create an in-memory object for HostPoolScriptRunParams. |
| [New-NmeHostPoolScriptScheduleModel](models/New-NmeHostPoolScriptScheduleModel.md) | Create an in-memory object for HostPoolScriptSchedule. |
| [New-NmeHostPoolSessionTimeoutModel](models/New-NmeHostPoolSessionTimeoutModel.md) | Create an in-memory object for HostPoolSessionTimeout. |
| [New-NmeHostPoolSizeModel](models/New-NmeHostPoolSizeModel.md) | Create an in-memory object for HostPoolSize. |
| [New-NmeHostPoolTagsUpdateModel](models/New-NmeHostPoolTagsUpdateModel.md) | Create an in-memory object for HostPoolTagsUpdate. |
| [New-NmeHostPoolTrackingModel](models/New-NmeHostPoolTrackingModel.md) | Create an in-memory object for HostPoolTracking. |
| [New-NmeHostPoolUserSelfServiceUpdateModel](models/New-NmeHostPoolUserSelfServiceUpdateModel.md) | Create an in-memory object for HostPoolUserSelfServiceUpdate. |
| [New-NmeHostPoolVmDeploymentUpdateModel](models/New-NmeHostPoolVmDeploymentUpdateModel.md) | Create an in-memory object for HostPoolVmDeploymentUpdate. |
| [New-NmeHostReimageParamsModel](models/New-NmeHostReimageParamsModel.md) | Create an in-memory object for HostReimageParams. |
| [New-NmeHostReimageRunModel](models/New-NmeHostReimageRunModel.md) | Create an in-memory object for HostReimageRun. |
| [New-NmeHostUsageConfigurationModel](models/New-NmeHostUsageConfigurationModel.md) | Create an in-memory object for HostUsageConfiguration. |
| [New-NmeHostUsageModel](models/New-NmeHostUsageModel.md) | Create an in-memory object for HostUsage. |
| [New-NmeImageFromLibraryCreateModel](models/New-NmeImageFromLibraryCreateModel.md) | Create an in-memory object for ImageFromLibraryCreate. |
| [New-NmeImageFromLibraryCreateParamsModel](models/New-NmeImageFromLibraryCreateParamsModel.md) | Create an in-memory object for ImageFromLibraryCreateParams. |
| [New-NmeJobFailurePolicyModel](models/New-NmeJobFailurePolicyModel.md) | Create an in-memory object for JobFailurePolicy. |
| [New-NmeLinkedNetworkCreateModel](models/New-NmeLinkedNetworkCreateModel.md) | Create an in-memory object for LinkedNetworkCreate. |
| [New-NmeLinkedResourceGroupCreateModel](models/New-NmeLinkedResourceGroupCreateModel.md) | Create an in-memory object for LinkedResourceGroupCreate. |
| [New-NmeLinkedSubscriptionCreateModel](models/New-NmeLinkedSubscriptionCreateModel.md) | Create an in-memory object for LinkedSubscriptionCreate. |
| [New-NmeLinkedSubscriptionUpdateModel](models/New-NmeLinkedSubscriptionUpdateModel.md) | Create an in-memory object for LinkedSubscriptionUpdate. |
| [New-NmeMsixPackageUploadModel](models/New-NmeMsixPackageUploadModel.md) | Create an in-memory object for MsixPackageUpload. |
| [New-NmeNetAppFilesAutoscaleConfigModel](models/New-NmeNetAppFilesAutoscaleConfigModel.md) | Create an in-memory object for NetAppFilesAutoscaleConfig. |
| [New-NmeNetAppFilesAutoscaleConfigUpdateModel](models/New-NmeNetAppFilesAutoscaleConfigUpdateModel.md) | Create an in-memory object for NetAppFilesAutoscaleConfigUpdate. |
| [New-NmeNetAppFilesBasicAutoscaleConfigModel](models/New-NmeNetAppFilesBasicAutoscaleConfigModel.md) | Create an in-memory object for NetAppFilesBasicAutoscaleConfig. |
| [New-NmeNetAppFilesBasicAutoscaleConfigUpdateModel](models/New-NmeNetAppFilesBasicAutoscaleConfigUpdateModel.md) | Create an in-memory object for NetAppFilesBasicAutoscaleConfigUpdate. |
| [New-NmeNetAppFilesPreStageConfigModel](models/New-NmeNetAppFilesPreStageConfigModel.md) | Create an in-memory object for NetAppFilesPreStageConfig. |
| [New-NmeNetAppFilesPreStageConfigUpdateModel](models/New-NmeNetAppFilesPreStageConfigUpdateModel.md) | Create an in-memory object for NetAppFilesPreStageConfigUpdate. |
| [New-NmeNetAppFilesScalingConfigModel](models/New-NmeNetAppFilesScalingConfigModel.md) | Create an in-memory object for NetAppFilesScalingConfig. |
| [New-NmeNetAppFilesScalingConfigUpdateModel](models/New-NmeNetAppFilesScalingConfigUpdateModel.md) | Create an in-memory object for NetAppFilesScalingConfigUpdate. |
| [New-NmeNetAppFilesWorkTimeSetModel](models/New-NmeNetAppFilesWorkTimeSetModel.md) | Create an in-memory object for NetAppFilesWorkTimeSet. |
| [New-NmeOsDiskPreStageModel](models/New-NmeOsDiskPreStageModel.md) | Create an in-memory object for OsDiskPreStage. |
| [New-NmePersistentAvdPropertiesModel](models/New-NmePersistentAvdPropertiesModel.md) | Create an in-memory object for PersistentAvdProperties. |
| [New-NmePersonalAutoGrowConfigurationModel](models/New-NmePersonalAutoGrowConfigurationModel.md) | Create an in-memory object for PersonalAutoGrowConfiguration. |
| [New-NmePersonalAutoShrinkConfigurationModel](models/New-NmePersonalAutoShrinkConfigurationModel.md) | Create an in-memory object for PersonalAutoShrinkConfiguration. |
| [New-NmePolicyConcurrencyCreateModel](models/New-NmePolicyConcurrencyCreateModel.md) | Create an in-memory object for PolicyConcurrencyCreate. |
| [New-NmePortalNotificationCreateModel](models/New-NmePortalNotificationCreateModel.md) | Create an in-memory object for PortalNotificationCreate. |
| [New-NmePortalNotificationPeriodModel](models/New-NmePortalNotificationPeriodModel.md) | Create an in-memory object for PortalNotificationPeriod. |
| [New-NmePortalNotificationUpdateModel](models/New-NmePortalNotificationUpdateModel.md) | Create an in-memory object for PortalNotificationUpdate. |
| [New-NmePowerStateCommandExtensionsModel](models/New-NmePowerStateCommandExtensionsModel.md) | Create an in-memory object for PowerStateCommandExtensions. |
| [New-NmePowerStateCommandModel](models/New-NmePowerStateCommandModel.md) | Create an in-memory object for PowerStateCommand. |
| [New-NmePowerStateCommandParamsModel](models/New-NmePowerStateCommandParamsModel.md) | Create an in-memory object for PowerStateCommandParams. |
| [New-NmePowerTimingConfigurationModel](models/New-NmePowerTimingConfigurationModel.md) | Create an in-memory object for PowerTimingConfiguration. |
| [New-NmePreStageHostsConfigurationItemModel](models/New-NmePreStageHostsConfigurationItemModel.md) | Create an in-memory object for PreStageHostsConfigurationItem. |
| [New-NmePreStageHostsConfigurationModel](models/New-NmePreStageHostsConfigurationModel.md) | Create an in-memory object for PreStageHostsConfiguration. |
| [New-NmeRbacAssignmentUpdateModel](models/New-NmeRbacAssignmentUpdateModel.md) | Create an in-memory object for RbacAssignmentUpdate. |
| [New-NmeRbacWorkspaceScopeUpdateModel](models/New-NmeRbacWorkspaceScopeUpdateModel.md) | Create an in-memory object for RbacWorkspaceScopeUpdate. |
| [New-NmeReimageConcurrencyModel](models/New-NmeReimageConcurrencyModel.md) | Create an in-memory object for ReimageConcurrency. |
| [New-NmeReimageMessagingModel](models/New-NmeReimageMessagingModel.md) | Create an in-memory object for ReimageMessaging. |
| [New-NmeReimageParamsModel](models/New-NmeReimageParamsModel.md) | Create an in-memory object for ReimageParams. |
| [New-NmeRollingDrainModeConfigurationModel](models/New-NmeRollingDrainModeConfigurationModel.md) | Create an in-memory object for RollingDrainModeConfiguration. |
| [New-NmeRollingDrainModeWindowModel](models/New-NmeRollingDrainModeWindowModel.md) | Create an in-memory object for RollingDrainModeWindow. |
| [New-NmeRunbookScriptedActionRunModel](models/New-NmeRunbookScriptedActionRunModel.md) | Create an in-memory object for RunbookScriptedActionRun. |
| [New-NmeRunbookScriptedActionScheduleModel](models/New-NmeRunbookScriptedActionScheduleModel.md) | Create an in-memory object for RunbookScriptedActionSchedule. |
| [New-NmeRunScriptBulkJobParamsModel](models/New-NmeRunScriptBulkJobParamsModel.md) | Create an in-memory object for RunScriptBulkJobParams. |
| [New-NmeRunScriptBulkJobWithHostsParamsModel](models/New-NmeRunScriptBulkJobWithHostsParamsModel.md) | Create an in-memory object for RunScriptBulkJobWithHostsParams. |
| [New-NmeScaleInPolicyModel](models/New-NmeScaleInPolicyModel.md) | Create an in-memory object for ScaleInPolicy. |
| [New-NmeScaleInTimeRestrictionConfigurationModel](models/New-NmeScaleInTimeRestrictionConfigurationModel.md) | Create an in-memory object for ScaleInTimeRestrictionConfiguration. |
| [New-NmeScheduleConfigurationCreateModel](models/New-NmeScheduleConfigurationCreateModel.md) | Create an in-memory object for ScheduleConfigurationCreate. |
| [New-NmeScriptedActionCreateModel](models/New-NmeScriptedActionCreateModel.md) | Create an in-memory object for ScriptedActionCreate. |
| [New-NmeScriptedActionDeleteModel](models/New-NmeScriptedActionDeleteModel.md) | Create an in-memory object for ScriptedActionDelete. |
| [New-NmeScriptedActionOptionModel](models/New-NmeScriptedActionOptionModel.md) | Create an in-memory object for ScriptedActionOption. |
| [New-NmeScriptedActionUpdateModel](models/New-NmeScriptedActionUpdateModel.md) | Create an in-memory object for ScriptedActionUpdate. |
| [New-NmeScriptRunParamsModel](models/New-NmeScriptRunParamsModel.md) | Create an in-memory object for ScriptRunParams. |
| [New-NmeSecureVariableCreateOrUpdateModel](models/New-NmeSecureVariableCreateOrUpdateModel.md) | Create an in-memory object for SecureVariableCreateOrUpdate. |
| [New-NmeSecureVariableDeleteModel](models/New-NmeSecureVariableDeleteModel.md) | Create an in-memory object for SecureVariableDelete. |
| [New-NmeSecureVariableUpdateModel](models/New-NmeSecureVariableUpdateModel.md) | Create an in-memory object for SecureVariableUpdate. |
| [New-NmeSelfServiceDiskSizeModel](models/New-NmeSelfServiceDiskSizeModel.md) | Create an in-memory object for SelfServiceDiskSize. |
| [New-NmeServicePrincipalParamsModel](models/New-NmeServicePrincipalParamsModel.md) | Create an in-memory object for ServicePrincipalParams. |
| [New-NmeSessionHostAssociateModel](models/New-NmeSessionHostAssociateModel.md) | Create an in-memory object for SessionHostAssociate. |
| [New-NmeSessionHostCreateModel](models/New-NmeSessionHostCreateModel.md) | Create an in-memory object for SessionHostCreate. |
| [New-NmeSessionHostCreateParamsModel](models/New-NmeSessionHostCreateParamsModel.md) | Create an in-memory object for SessionHostCreateParams. |
| [New-NmeSessionHostParamsModel](models/New-NmeSessionHostParamsModel.md) | Create an in-memory object for SessionHostParams. |
| [New-NmeSessionHostRemoveModel](models/New-NmeSessionHostRemoveModel.md) | Create an in-memory object for SessionHostRemove. |
| [New-NmeSessionHostRemoveParamsModel](models/New-NmeSessionHostRemoveParamsModel.md) | Create an in-memory object for SessionHostRemoveParams. |
| [New-NmeSetAsImageModel](models/New-NmeSetAsImageModel.md) | Create an in-memory object for SetAsImage. |
| [New-NmeSetAsImageParamsModel](models/New-NmeSetAsImageParamsModel.md) | Create an in-memory object for SetAsImageParams. |
| [New-NmeSharedAvdPropertiesModel](models/New-NmeSharedAvdPropertiesModel.md) | Create an in-memory object for SharedAvdProperties. |
| [New-NmeShellAppCreateModel](models/New-NmeShellAppCreateModel.md) | Create an in-memory object for ShellAppCreate. |
| [New-NmeShellAppUpdateModel](models/New-NmeShellAppUpdateModel.md) | Create an in-memory object for ShellAppUpdate. |
| [New-NmeShellAppVersionCreateModel](models/New-NmeShellAppVersionCreateModel.md) | Create an in-memory object for ShellAppVersionCreate. |
| [New-NmeShellAppVersionFileCreateModel](models/New-NmeShellAppVersionFileCreateModel.md) | Create an in-memory object for ShellAppVersionFileCreate. |
| [New-NmeShellAppVersionFileOptionCreateModel](models/New-NmeShellAppVersionFileOptionCreateModel.md) | Create an in-memory object for ShellAppVersionFileOptionCreate. |
| [New-NmeShellAppVersionStringOptionCreateModel](models/New-NmeShellAppVersionStringOptionCreateModel.md) | Create an in-memory object for ShellAppVersionStringOptionCreate. |
| [New-NmeShellAppVersionUpdateModel](models/New-NmeShellAppVersionUpdateModel.md) | Create an in-memory object for ShellAppVersionUpdate. |
| [New-NmeTempVmIdModel](models/New-NmeTempVmIdModel.md) | Create an in-memory object for TempVmId. |
| [New-NmeTempVmModel](models/New-NmeTempVmModel.md) | Create an in-memory object for TempVm. |
| [New-NmeTimeIntervalModel](models/New-NmeTimeIntervalModel.md) | Create an in-memory object for TimeInterval. |
| [New-NmeTimeRangeModel](models/New-NmeTimeRangeModel.md) | Create an in-memory object for TimeRange. |
| [New-NmeUserCostAttributionConfigurationCreateModel](models/New-NmeUserCostAttributionConfigurationCreateModel.md) | Create an in-memory object for UserCostAttributionConfigurationCreate. |
| [New-NmeUserCostAttributionConfigurationUpdateModel](models/New-NmeUserCostAttributionConfigurationUpdateModel.md) | Create an in-memory object for UserCostAttributionConfigurationUpdate. |
| [New-NmeUserDrivenConfigurationModel](models/New-NmeUserDrivenConfigurationModel.md) | Create an in-memory object for UserDrivenConfiguration. |
| [New-NmeUserDrivenPreStageHostsConfigurationItemModel](models/New-NmeUserDrivenPreStageHostsConfigurationItemModel.md) | Create an in-memory object for UserDrivenPreStageHostsConfigurationItem. |
| [New-NmeUserDrivenPreStageHostsConfigurationModel](models/New-NmeUserDrivenPreStageHostsConfigurationModel.md) | Create an in-memory object for UserDrivenPreStageHostsConfiguration. |
| [New-NmeUserSelfServiceScriptedActionModel](models/New-NmeUserSelfServiceScriptedActionModel.md) | Create an in-memory object for UserSelfServiceScriptedAction. |
| [New-NmeUserSelfServiceTagModel](models/New-NmeUserSelfServiceTagModel.md) | Create an in-memory object for UserSelfServiceTag. |
| [New-NmeUserSessionActionModel](models/New-NmeUserSessionActionModel.md) | Create an in-memory object for UserSessionAction. |
| [New-NmeUserSessionActionParamsModel](models/New-NmeUserSessionActionParamsModel.md) | Create an in-memory object for UserSessionActionParams. |
| [New-NmeVmCustomScriptRunModel](models/New-NmeVmCustomScriptRunModel.md) | Create an in-memory object for VmCustomScriptRun. |
| [New-NmeVmObjectIdModel](models/New-NmeVmObjectIdModel.md) | Create an in-memory object for VmObjectId. |
| [New-NmeVmsAssociateModel](models/New-NmeVmsAssociateModel.md) | Create an in-memory object for VmsAssociate. |
| [New-NmeVmSecurityProfileModel](models/New-NmeVmSecurityProfileModel.md) | Create an in-memory object for VmSecurityProfile. |
| [New-NmeVmTemplateParamsModel](models/New-NmeVmTemplateParamsModel.md) | Create an in-memory object for VmTemplateParams. |
| [New-NmeWarningMessageSettingsModel](models/New-NmeWarningMessageSettingsModel.md) | Create an in-memory object for WarningMessageSettings. |
| [New-NmeWatermarkingPropertiesModel](models/New-NmeWatermarkingPropertiesModel.md) | Create an in-memory object for WatermarkingProperties. |
| [New-NmeWorkingHoursModel](models/New-NmeWorkingHoursModel.md) | Create an in-memory object for WorkingHours. |
| [New-NmeWorkingHoursScaleInPolicyModel](models/New-NmeWorkingHoursScaleInPolicyModel.md) | Create an in-memory object for WorkingHoursScaleInPolicy. |
| [New-NmeWorkspaceCreateModel](models/New-NmeWorkspaceCreateModel.md) | Create an in-memory object for WorkspaceCreate. |
| [New-NmeWvdObjectIdModel](models/New-NmeWvdObjectIdModel.md) | Create an in-memory object for WvdObjectId. |
