@{
  GUID = '6b34a792-4773-4786-8711-fd3987b174cc'
  RootModule = './NerdioManagerPowerShell.psm1'
  ModuleVersion = '1.3.1'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = 'Nerdio, Inc.'
  CompanyName = 'Nerdio, Inc.'
  Copyright = '2026 Nerdio, Inc. All rights reserved'
  Description = 'A PowerShell module for managing Nerdio Manager for Enterprise (NME)'
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/NerdioManagerPowerShell.private.dll'
  FormatsToProcess = './NerdioManagerPowerShell.format.ps1xml'
  FunctionsToExport = 'Add-NmeRbacAssignmentAvdWorkspace', 'Connect-Nme', 'Disable-NmeConsoleConnectRegion', 'Disconnect-Nme', 'Enable-NmeConsoleConnectRegion', 'Get-NmeAdConfig', 'Get-NmeAppAttachImage', 'Get-NmeAppAttachImageVersion', 'Get-NmeAppAttachStorageLocation', 'Get-NmeAppManagementAppGroup', 'Get-NmeAppManagementOnetimePolicy', 'Get-NmeAppManagementOnetimePolicySnapshot', 'Get-NmeAppManagementRecurrentPolicy', 'Get-NmeAppManagementRecurrentPolicySnapshot', 'Get-NmeAppManagementRepository', 'Get-NmeAppManagementRepositoryApp', 'Get-NmeAutoScaleProfile', 'Get-NmeAutoScaleProfileAssignment', 'Get-NmeCloudPcAlertCondition', 'Get-NmeConsoleConnectRegion', 'Get-NmeCurrentInstallationInfo', 'Get-NmeDesktopImage', 'Get-NmeDesktopImageRunScriptSchedule', 'Get-NmeDesktopImageSchedule', 'Get-NmeDesktopImageSetAsImageSchedule', 'Get-NmeEntraIdTenant', 'Get-NmeFileShare', 'Get-NmeFileShareAutoscale', 'Get-NmeFsLogixProfile', 'Get-NmeHostPool', 'Get-NmeHostPoolActiveDirectoryConfiguration', 'Get-NmeHostPoolAutoScale', 'Get-NmeHostPoolAutoscaleProfile', 'Get-NmeHostPoolAvdProperty', 'Get-NmeHostPoolBackupProperty', 'Get-NmeHostPoolConsoleConnectProperty', 'Get-NmeHostPoolControlUpProperty', 'Get-NmeHostPoolFsLogixConfiguration', 'Get-NmeHostPoolRdpProfile', 'Get-NmeHostPoolRdpProperty', 'Get-NmeHostPoolReimageSchedule', 'Get-NmeHostPoolRunScriptSchedule', 'Get-NmeHostPoolSchedule', 'Get-NmeHostPoolScriptedAction', 'Get-NmeHostPoolScriptedActionProfile', 'Get-NmeHostPoolSessionTimeout', 'Get-NmeHostPoolTag', 'Get-NmeHostPoolUsage', 'Get-NmeHostPoolUsageTrackingProperty', 'Get-NmeHostPoolUserSelfServiceProperty', 'Get-NmeHostPoolUserSession', 'Get-NmeHostPoolVMDeploymentProfile', 'Get-NmeHostPoolVMDeploymentProperty', 'Get-NmeImage', 'Get-NmeIntuneAlertCondition', 'Get-NmeJob', 'Get-NmeJobTask', 'Get-NmeJobType', 'Get-NmeLinkedCapacityReservationGroup', 'Get-NmeLinkedDedicatedHostGroup', 'Get-NmeLinkedDedicatedHostGroupHost', 'Get-NmeLinkedNetwork', 'Get-NmeLinkedNotificationMailbox', 'Get-NmeLinkedNotificationWebhook', 'Get-NmeLinkedProximityPlacementGroup', 'Get-NmeLinkedResourceGroup', 'Get-NmeLinkedSigningCertificate', 'Get-NmeLinkedSubscription', 'Get-NmeLogo', 'Get-NmeNetAppFilesAutoscale', 'Get-NmeNotificationAction', 'Get-NmeNotificationCondition', 'Get-NmePackage', 'Get-NmePortalNotification', 'Get-NmeRbacAssignment', 'Get-NmeRunbookScriptedActionsSchedule', 'Get-NmeScriptedAction', 'Get-NmeScriptedActionsGroup', 'Get-NmeSecureVariable', 'Get-NmeSessionHost', 'Get-NmeSessionHostByName', 'Get-NmeSessionHostByUser', 'Get-NmeSessionHostsByWorkspace', 'Get-NmeShellApp', 'Get-NmeShellAppVersion', 'Get-NmeUserCostAttributionConfiguration', 'Get-NmeUserCostAttributionConfigurationReport', 'Get-NmeUserCostAttributionConfigurationReportExport', 'Get-NmeUserCostAttributionConfigurationReportExportAsCsv', 'Get-NmeUserEntitlement', 'Get-NmeWorkspace', 'Get-NmeWorkspaceUsage', 'Get-NmeWorkspaceUserSession', 'Import-NmeLinkedSigningCertificate', 'Invoke-NmeDesktopImageRunScript', 'Invoke-NmeDesktopImageSetAsImage', 'Invoke-NmeHostPoolAssignUser', 'Invoke-NmeHostPoolAssociateVM', 'Invoke-NmeHostPoolReimage', 'Invoke-NmeHostPoolRunScript', 'Invoke-NmeHostPoolUnassignUser', 'Invoke-NmeHostPoolUserSessionAction', 'Invoke-NmeRunbookScriptedActionRun', 'Invoke-NmeSessionHostActivate', 'Invoke-NmeSessionHostAssociateVM', 'Invoke-NmeSessionHostDeactivate', 'Invoke-NmeSessionHostLock', 'Invoke-NmeSessionHostReimage', 'Invoke-NmeSessionHostUnlock', 'Invoke-NmeUserCostAttributionConfigurationReportBuild', 'Invoke-NmeUserCostAttributionConfigurationReportExport', 'New-NmeActiveSessionsConfigurationModel', 'New-NmeAdConfigPropertiesWithPasswordModel', 'New-NmeAdObjectCreateModel', 'New-NmeAnyAppActionCreateModel', 'New-NmeAnyAppScopeCreateModel', 'New-NmeAnySelfServiceAppCreateModel', 'New-NmeAnyUamPolicyActionCreateModel', 'New-NmeAppAttachCertificate', 'New-NmeAppAttachImage', 'New-NmeAppAttachImageCreateModel', 'New-NmeAppAttachImageUpdateModel', 'New-NmeAppAttachImageVersion', 'New-NmeAppAttachImageVersionCreateModel', 'New-NmeAppAttachImageVersionUpdateModel', 'New-NmeAppGroupCreateModel', 'New-NmeAppGroupItemCreateModel', 'New-NmeAppGroupUpdateModel', 'New-NmeAppManagementAppGroup', 'New-NmeAppManagementOnetimePolicy', 'New-NmeAppManagementRecurrentPolicy', 'New-NmeAppPolicyOneTimeCreateModel', 'New-NmeAppPolicyRecurrentCreateModel', 'New-NmeAppPolicyRecurrentUpdateModel', 'New-NmeArmHostPoolAssignmentModel', 'New-NmeArmHostPoolCreateModel', 'New-NmeArmHostPoolPersonalConfigModel', 'New-NmeArmHostPoolPooledConfigModel', 'New-NmeArmHostPoolPropertiesModel', 'New-NmeArmHostPoolSourceModel', 'New-NmeAutoHealActionModel', 'New-NmeAutoHealConfigurationItemModel', 'New-NmeAutoHealConfigurationModel', 'New-NmeAutoScaleAdObjectModel', 'New-NmeAutoScaleDefaultConfigurationModel', 'New-NmeAutoScaleDefaultConfigurationUpdateModel', 'New-NmeAutoScaleOverrideProfileFlagsModel', 'New-NmeAutoScaleProfile', 'New-NmeAutoScaleProfileAssignmentCreateModel', 'New-NmeAutoScaleProfileCreateModel', 'New-NmeAutoScaleProfileOverrideUpdateModel', 'New-NmeAutoScaleProfileScheduleDateRangeModel', 'New-NmeAutoScaleProfileScheduleModel', 'New-NmeAutoScaleProfileUpdateModel', 'New-NmeAutoScaleSecondaryRegionConfigurationModel', 'New-NmeAutoScaleSecondaryRegionModel', 'New-NmeAutoScaleUpdateModel', 'New-NmeAutoScaleUserDrivenConfigurationCreateModel', 'New-NmeAutoScaleUserDrivenConfigurationUpdateModel', 'New-NmeAutoScaleWorkingHoursConfigurationModel', 'New-NmeAutoScaleWorkingHoursConfigurationUpdateModel', 'New-NmeAvailableUserSessionsConfigurationModel', 'New-NmeAvdAgentMaintenanceWindowModel', 'New-NmeAvdAgentUpdateModel', 'New-NmeAzureFilesAutoscaleConfigModel', 'New-NmeAzureFilesAutoscaleConfigUpdateModel', 'New-NmeAzureFilesBasicAutoscaleConfigModel', 'New-NmeAzureFilesBasicAutoscaleConfigUpdateModel', 'New-NmeAzureFilesPreStageConfigModel', 'New-NmeAzureFilesPreStageConfigUpdateModel', 'New-NmeAzureFilesScalingConfigModel', 'New-NmeAzureFilesScalingConfigUpdateModel', 'New-NmeCloudPcAlertCondition', 'New-NmeCloudPcAlertConditionCreateModel', 'New-NmeCloudPcAlertConditionUpdateModel', 'New-NmeCloudPcAlertRuleConditionUpdateModel', 'New-NmeConsoleConnectConnectionModel', 'New-NmeConsoleConnectRegionEnableModel', 'New-NmeConsoleConnectRegionUpdateModel', 'New-NmeCredentialsModel', 'New-NmeCustomScriptScheduleCreateModel', 'New-NmeDedicatedHostGroupLinkModel', 'New-NmeDesktopImageFromLibrary', 'New-NmeDesktopImageRunScriptSchedule', 'New-NmeDynamicPoolConfigurationModel', 'New-NmeDynamicPoolTriggerInfoModel', 'New-NmeEntraIdTenant', 'New-NmeEntraIdTenantCreateModel', 'New-NmeEntraIdTenantUpdateModel', 'New-NmeExtensionsConfigurationModel', 'New-NmeFsLogixCloudCacheRegistrySettingsModel', 'New-NmeFsLogixCloudCacheRegistrySettingsUpdateModel', 'New-NmeFsLogixExclusionsModel', 'New-NmeFsLogixExclusionsUpdateModel', 'New-NmeFsLogixInstallerModel', 'New-NmeFsLogixInstallerUpdateModel', 'New-NmeFsLogixOptionalRegistrySettingsModel', 'New-NmeFsLogixOptionalRegistrySettingsUpdateModel', 'New-NmeFsLogixParamsCreateModel', 'New-NmeFsLogixParamsUpdateModel', 'New-NmeFsLogixProfile', 'New-NmeFsLogixPropertiesModel', 'New-NmeFsLogixPropertiesUpdateModel', 'New-NmeFsLogixRegistryModel', 'New-NmeFsLogixRegistryUpdateModel', 'New-NmeGalleryImageConfigurationModel', 'New-NmeHostChangeModel', 'New-NmeHostPool', 'New-NmeHostPoolActiveDirectoryUpdateModel', 'New-NmeHostPoolAdConfigModel', 'New-NmeHostPoolAssignmentModel', 'New-NmeHostPoolAutoScale', 'New-NmeHostPoolBackupModel', 'New-NmeHostPoolConsoleConnectUpdateModel', 'New-NmeHostPoolControlUpAuthenticationKeyUpdateModel', 'New-NmeHostPoolControlUpMaintenanceWindowModel', 'New-NmeHostPoolControlUpRegistrationKeyUpdateModel', 'New-NmeHostPoolControlUpSecondaryConfigModel', 'New-NmeHostPoolControlUpUpdateModel', 'New-NmeHostPoolFsLogixPropertiesModel', 'New-NmeHostPoolFsLogixUpdateModel', 'New-NmeHostPoolRdpProfile', 'New-NmeHostPoolRdpProfileCreateModel', 'New-NmeHostPoolRdpProfileUpdateModel', 'New-NmeHostPoolRdpShortpathPropertiesModel', 'New-NmeHostPoolRdpUpdateModel', 'New-NmeHostPoolReimageParamsModel', 'New-NmeHostPoolReimageRunModel', 'New-NmeHostPoolReimageSchedule', 'New-NmeHostPoolReimageScheduleModel', 'New-NmeHostPoolRunScriptSchedule', 'New-NmeHostPoolScriptedActionProfile', 'New-NmeHostPoolScriptedActionProfileConfigurationCreateModel', 'New-NmeHostPoolScriptedActionProfileConfigurationsCreateModel', 'New-NmeHostPoolScriptedActionProfileConfigurationsUpdateModel', 'New-NmeHostPoolScriptedActionProfileConfigurationUpdateModel', 'New-NmeHostPoolScriptedActionProfileCreateModel', 'New-NmeHostPoolScriptedActionProfileUpdateModel', 'New-NmeHostPoolScriptedActionsAssignmentModel', 'New-NmeHostPoolScriptedActionsConfigModel', 'New-NmeHostPoolScriptedActionsModel', 'New-NmeHostPoolScriptRunModel', 'New-NmeHostPoolScriptRunParamsModel', 'New-NmeHostPoolScriptScheduleModel', 'New-NmeHostPoolSessionTimeoutModel', 'New-NmeHostPoolSizeModel', 'New-NmeHostPoolTagsUpdateModel', 'New-NmeHostPoolTrackingModel', 'New-NmeHostPoolUserSelfServiceUpdateModel', 'New-NmeHostPoolVMDeploymentProfile', 'New-NmeHostPoolVmDeploymentProfileCertificatesModel', 'New-NmeHostPoolVmDeploymentProfileConfigurationCreateModel', 'New-NmeHostPoolVmDeploymentProfileConfigurationUpdateModel', 'New-NmeHostPoolVmDeploymentProfileCreateModel', 'New-NmeHostPoolVmDeploymentProfileUpdateModel', 'New-NmeHostPoolVmDeploymentUpdateModel', 'New-NmeHostReimageParamsModel', 'New-NmeHostReimageRunModel', 'New-NmeHostUsageConfigurationModel', 'New-NmeHostUsageModel', 'New-NmeImageFromLibraryCreateModel', 'New-NmeImageFromLibraryCreateParamsModel', 'New-NmeIntuneAlertConditionUpdateModel', 'New-NmeIntuneDeviceConsoleConnectConnection', 'New-NmeJobFailurePolicyModel', 'New-NmeLinkedCapacityReservationGroup', 'New-NmeLinkedDedicatedHostGroup', 'New-NmeLinkedFileShare', 'New-NmeLinkedNetwork', 'New-NmeLinkedNetworkCreateModel', 'New-NmeLinkedProximityPlacementGroup', 'New-NmeLinkedResourceGroup', 'New-NmeLinkedResourceGroupCreateModel', 'New-NmeLinkedSigningCertificate', 'New-NmeLinkedSigningCertificateCreateModel', 'New-NmeLinkedSigningCertificateDeleteModel', 'New-NmeLinkedSigningCertificateImportModel', 'New-NmeLinkedSigningCertificateUpdateModel', 'New-NmeLinkedSubscription', 'New-NmeLinkedSubscriptionCreateModel', 'New-NmeLinkedSubscriptionUpdateModel', 'New-NmeMsixPackage', 'New-NmeMsixPackageFromFile', 'New-NmeMsixPackageUploadModel', 'New-NmeNetAppFilesAutoscaleConfigModel', 'New-NmeNetAppFilesAutoscaleConfigUpdateModel', 'New-NmeNetAppFilesBasicAutoscaleConfigModel', 'New-NmeNetAppFilesBasicAutoscaleConfigUpdateModel', 'New-NmeNetAppFilesPreStageConfigModel', 'New-NmeNetAppFilesPreStageConfigUpdateModel', 'New-NmeNetAppFilesScalingConfigModel', 'New-NmeNetAppFilesScalingConfigUpdateModel', 'New-NmeNetAppFilesWorkTimeSetModel', 'New-NmeNotificationAction', 'New-NmeNotificationActionConditionsModel', 'New-NmeNotificationActionConditionsUpdateModel', 'New-NmeNotificationActionCreateModel', 'New-NmeNotificationActionDeliveryModel', 'New-NmeNotificationActionDeliveryUpdateModel', 'New-NmeNotificationActionEmailDeliveryModel', 'New-NmeNotificationActionEmailDeliveryUpdateModel', 'New-NmeNotificationActionUpdateModel', 'New-NmeNotificationActionWebhookDeliveryModel', 'New-NmeNotificationActionWebhookDeliveryUpdateModel', 'New-NmeNotificationCondition', 'New-NmeNotificationConditionCreateModel', 'New-NmeNotificationConditionRunByUserModel', 'New-NmeNotificationConditionTargetModel', 'New-NmeNotificationConditionUpdateModel', 'New-NmeOsDiskPreStageModel', 'New-NmePersistentAvdPropertiesModel', 'New-NmePersonalAutoGrowConfigurationModel', 'New-NmePersonalAutoShrinkConfigurationModel', 'New-NmePolicyConcurrencyCreateModel', 'New-NmePortalNotification', 'New-NmePortalNotificationCreateModel', 'New-NmePortalNotificationPeriodModel', 'New-NmePortalNotificationUpdateModel', 'New-NmePowerStateCommandExtensionsModel', 'New-NmePowerStateCommandModel', 'New-NmePowerStateCommandParamsModel', 'New-NmePowerTimingConfigurationModel', 'New-NmePreStageHostsConfigurationItemModel', 'New-NmePreStageHostsConfigurationModel', 'New-NmeRbacAssignmentUpdateModel', 'New-NmeRbacWorkspaceScopeUpdateModel', 'New-NmeReimageConcurrencyModel', 'New-NmeReimageMessagingModel', 'New-NmeReimageParamsModel', 'New-NmeRollingDrainModeConfigurationModel', 'New-NmeRollingDrainModeWindowModel', 'New-NmeRunbookScriptedActionRunModel', 'New-NmeRunbookScriptedActionScheduleModel', 'New-NmeRunbookScriptedActionsSchedule', 'New-NmeRunScriptBulkJobParamsModel', 'New-NmeRunScriptBulkJobWithHostsParamsModel', 'New-NmeScaleInPolicyModel', 'New-NmeScaleInTimeRestrictionConfigurationModel', 'New-NmeScheduleConfigurationCreateModel', 'New-NmeScriptedAction', 'New-NmeScriptedActionCreateModel', 'New-NmeScriptedActionDeleteModel', 'New-NmeScriptedActionOptionModel', 'New-NmeScriptedActionsGroup', 'New-NmeScriptedActionsGroupCreateModel', 'New-NmeScriptedActionsGroupDeleteModel', 'New-NmeScriptedActionsGroupItemCreateModel', 'New-NmeScriptedActionsGroupItemUpdateModel', 'New-NmeScriptedActionsGroupUpdateModel', 'New-NmeScriptedActionUpdateModel', 'New-NmeScriptRunParamsModel', 'New-NmeSecureVariable', 'New-NmeSecureVariableCreateOrUpdateModel', 'New-NmeSecureVariableDeleteModel', 'New-NmeSecureVariableUpdateModel', 'New-NmeSelfServiceDiskSizeModel', 'New-NmeServicePrincipalParamsModel', 'New-NmeSessionConsoleConnectConnectionUrl', 'New-NmeSessionHost', 'New-NmeSessionHostAssociateModel', 'New-NmeSessionHostCreateModel', 'New-NmeSessionHostCreateParamsModel', 'New-NmeSessionHostParamsModel', 'New-NmeSessionHostRemoveModel', 'New-NmeSessionHostRemoveParamsModel', 'New-NmeSetAsImageModel', 'New-NmeSetAsImageParamsModel', 'New-NmeSharedAvdPropertiesModel', 'New-NmeShellApp', 'New-NmeShellAppCreateModel', 'New-NmeShellAppUpdateModel', 'New-NmeShellAppVersion', 'New-NmeShellAppVersionCreateModel', 'New-NmeShellAppVersionFileCreateModel', 'New-NmeShellAppVersionFileOptionCreateModel', 'New-NmeShellAppVersionStringOptionCreateModel', 'New-NmeShellAppVersionUpdateModel', 'New-NmeTempVmIdModel', 'New-NmeTempVmModel', 'New-NmeTimeIntervalModel', 'New-NmeTimeRangeModel', 'New-NmeUserCostAttributionConfiguration', 'New-NmeUserCostAttributionConfigurationCreateModel', 'New-NmeUserCostAttributionConfigurationUpdateModel', 'New-NmeUserDrivenConfigurationModel', 'New-NmeUserDrivenPreStageHostsConfigurationItemModel', 'New-NmeUserDrivenPreStageHostsConfigurationModel', 'New-NmeUserSelfServiceScriptedActionModel', 'New-NmeUserSelfServiceTagModel', 'New-NmeUserSessionActionModel', 'New-NmeUserSessionActionParamsModel', 'New-NmeVmCustomScriptRunModel', 'New-NmeVmObjectIdModel', 'New-NmeVmsAssociateModel', 'New-NmeVmSecurityProfileModel', 'New-NmeVmTemplateParamsModel', 'New-NmeWarningMessageSettingsModel', 'New-NmeWatermarkingPropertiesModel', 'New-NmeWorkingHoursModel', 'New-NmeWorkingHoursScaleInPolicyModel', 'New-NmeWorkspace', 'New-NmeWorkspaceCreateModel', 'New-NmeWvdObjectIdModel', 'Remove-NmeAppManagementAppGroup', 'Remove-NmeAppManagementOnetimePolicy', 'Remove-NmeAppManagementRecurrentPolicy', 'Remove-NmeAutoScaleProfile', 'Remove-NmeAutoScaleProfileAssignment', 'Remove-NmeDesktopImageRunScriptSchedule', 'Remove-NmeEntraIdTenant', 'Remove-NmeFsLogixProfile', 'Remove-NmeHostPool', 'Remove-NmeHostPoolRdpProfile', 'Remove-NmeHostPoolScriptedAction', 'Remove-NmeHostPoolScriptedActionProfile', 'Remove-NmeHostPoolVMDeploymentProfile', 'Remove-NmeLinkedCapacityReservationGroup', 'Remove-NmeLinkedDedicatedHostGroup', 'Remove-NmeLinkedFileShare', 'Remove-NmeLinkedNetwork', 'Remove-NmeLinkedProximityPlacementGroup', 'Remove-NmeLinkedResourceGroup', 'Remove-NmeLinkedSigningCertificate', 'Remove-NmeNotificationAction', 'Remove-NmeNotificationCondition', 'Remove-NmePortalNotification', 'Remove-NmeRunbookScriptedActionsSchedule', 'Remove-NmeScriptedAction', 'Remove-NmeScriptedActionsGroup', 'Remove-NmeSecureVariable', 'Remove-NmeSessionHost', 'Remove-NmeShellApp', 'Remove-NmeShellAppVersion', 'Remove-NmeUserCostAttributionConfiguration', 'Remove-NmeWorkspace', 'Set-NmeAutoScaleProfileAssignment', 'Set-NmeDesktopImageRunScriptSchedule', 'Set-NmeFileShareAutoscale', 'Set-NmeHostPoolActiveDirectoryConfiguration', 'Set-NmeHostPoolAutoScale', 'Set-NmeHostPoolFsLogixConfiguration', 'Set-NmeHostPoolReimageSchedule', 'Set-NmeHostPoolRunScriptSchedule', 'Set-NmeHostPoolSessionTimeout', 'Set-NmeHostPoolTag', 'Set-NmeImageVersionGeoDistribution', 'Set-NmeNetAppFilesAutoscale', 'Set-NmePersonalSessionHostPowerState', 'Set-NmePortalNotification', 'Set-NmeRbacAssignment', 'Set-NmeRunbookScriptedActionsSchedule', 'Set-NmeSessionHostPowerState', 'Test-Nme', 'Update-NmeAppAttachImage', 'Update-NmeAppManagementAppGroup', 'Update-NmeAppManagementRecurrentPolicy', 'Update-NmeAutoScaleProfile', 'Update-NmeCloudPcAlertCondition', 'Update-NmeConsoleConnectRegion', 'Update-NmeEntraIdTenant', 'Update-NmeFileShareAutoscaleStatus', 'Update-NmeFsLogixProfile', 'Update-NmeHostPoolAutoScale', 'Update-NmeHostPoolAutoscaleProfile', 'Update-NmeHostPoolAvdProperty', 'Update-NmeHostPoolBackupProperty', 'Update-NmeHostPoolConsoleConnectProperty', 'Update-NmeHostPoolControlUpProperty', 'Update-NmeHostPoolRdpProfile', 'Update-NmeHostPoolRdpProperty', 'Update-NmeHostPoolScriptedAction', 'Update-NmeHostPoolScriptedActionProfile', 'Update-NmeHostPoolUsageTrackingProperty', 'Update-NmeHostPoolUserSelfServiceProperty', 'Update-NmeHostPoolVMDeploymentProfile', 'Update-NmeHostPoolVMDeploymentProperty', 'Update-NmeIntuneAlertCondition', 'Update-NmeLinkedSigningCertificate', 'Update-NmeLinkedSubscription', 'Update-NmeLogo', 'Update-NmeNetAppFilesAutoscaleStatus', 'Update-NmeNotificationAction', 'Update-NmeNotificationCondition', 'Update-NmeScriptedAction', 'Update-NmeScriptedActionsGroup', 'Update-NmeSecureVariable', 'Update-NmeShellApp', 'Update-NmeShellAppVersion', 'Update-NmeUserCostAttributionConfiguration'
  PrivateData = @{
    PSData = @{
      Prerelease = 'preview'
      Tags = 'Nerdio', 'Enterprise', 'NME'
      LicenseUri = ''
      ProjectUri = 'https://github.com/Get-Nerdio/NerdioManagerPowerShell'
      ReleaseNotes = ''
    }
  }
}


# SIG # Begin signature block
# MIIvWAYJKoZIhvcNAQcCoIIvSTCCL0UCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAymJxACt7hkm+j
# YLlwrBoCrBmwjDqvnyl+3jXYgWTIZaCCFAUwggWQMIIDeKADAgECAhAFmxtXno4h
# MuI5B72nd3VcMA0GCSqGSIb3DQEBDAUAMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQK
# EwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNV
# BAMTGERpZ2lDZXJ0IFRydXN0ZWQgUm9vdCBHNDAeFw0xMzA4MDExMjAwMDBaFw0z
# ODAxMTUxMjAwMDBaMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJ
# bmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0
# IFRydXN0ZWQgUm9vdCBHNDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIB
# AL/mkHNo3rvkXUo8MCIwaTPswqclLskhPfKK2FnC4SmnPVirdprNrnsbhA3EMB/z
# G6Q4FutWxpdtHauyefLKEdLkX9YFPFIPUh/GnhWlfr6fqVcWWVVyr2iTcMKyunWZ
# anMylNEQRBAu34LzB4TmdDttceItDBvuINXJIB1jKS3O7F5OyJP4IWGbNOsFxl7s
# Wxq868nPzaw0QF+xembud8hIqGZXV59UWI4MK7dPpzDZVu7Ke13jrclPXuU15zHL
# 2pNe3I6PgNq2kZhAkHnDeMe2scS1ahg4AxCN2NQ3pC4FfYj1gj4QkXCrVYJBMtfb
# BHMqbpEBfCFM1LyuGwN1XXhm2ToxRJozQL8I11pJpMLmqaBn3aQnvKFPObURWBf3
# JFxGj2T3wWmIdph2PVldQnaHiZdpekjw4KISG2aadMreSx7nDmOu5tTvkpI6nj3c
# AORFJYm2mkQZK37AlLTSYW3rM9nF30sEAMx9HJXDj/chsrIRt7t/8tWMcCxBYKqx
# YxhElRp2Yn72gLD76GSmM9GJB+G9t+ZDpBi4pncB4Q+UDCEdslQpJYls5Q5SUUd0
# viastkF13nqsX40/ybzTQRESW+UQUOsxxcpyFiIJ33xMdT9j7CFfxCBRa2+xq4aL
# T8LWRV+dIPyhHsXAj6KxfgommfXkaS+YHS312amyHeUbAgMBAAGjQjBAMA8GA1Ud
# EwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgGGMB0GA1UdDgQWBBTs1+OC0nFdZEzf
# Lmc/57qYrhwPTzANBgkqhkiG9w0BAQwFAAOCAgEAu2HZfalsvhfEkRvDoaIAjeNk
# aA9Wz3eucPn9mkqZucl4XAwMX+TmFClWCzZJXURj4K2clhhmGyMNPXnpbWvWVPjS
# PMFDQK4dUPVS/JA7u5iZaWvHwaeoaKQn3J35J64whbn2Z006Po9ZOSJTROvIXQPK
# 7VB6fWIhCoDIc2bRoAVgX+iltKevqPdtNZx8WorWojiZ83iL9E3SIAveBO6Mm0eB
# cg3AFDLvMFkuruBx8lbkapdvklBtlo1oepqyNhR6BvIkuQkRUNcIsbiJeoQjYUIp
# 5aPNoiBB19GcZNnqJqGLFNdMGbJQQXE9P01wI4YMStyB0swylIQNCAmXHE/A7msg
# dDDS4Dk0EIUhFQEI6FUy3nFJ2SgXUE3mvk3RdazQyvtBuEOlqtPDBURPLDab4vri
# RbgjU2wGb2dVf0a1TD9uKFp5JtKkqGKX0h7i7UqLvBv9R0oN32dmfrJbQdA75PQ7
# 9ARj6e/CVABRoIoqyc54zNXqhwQYs86vSYiv85KZtrPmYQ/ShQDnUBrkG5WdGaG5
# nLGbsQAe79APT0JsyQq87kP6OnGlyE0mpTX9iV28hWIdMtKgK1TtmlfB2/oQzxm3
# i0objwG2J5VT6LaJbVu8aNQj6ItRolb58KaAoNYes7wPD1N1KarqE3fk3oyBIa0H
# EEcRrYc9B9F1vM/zZn4wggawMIIEmKADAgECAhAIrUCyYNKcTJ9ezam9k67ZMA0G
# CSqGSIb3DQEBDAUAMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJ
# bmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0
# IFRydXN0ZWQgUm9vdCBHNDAeFw0yMTA0MjkwMDAwMDBaFw0zNjA0MjgyMzU5NTla
# MGkxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjFBMD8GA1UE
# AxM4RGlnaUNlcnQgVHJ1c3RlZCBHNCBDb2RlIFNpZ25pbmcgUlNBNDA5NiBTSEEz
# ODQgMjAyMSBDQTEwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDVtC9C
# 0CiteLdd1TlZG7GIQvUzjOs9gZdwxbvEhSYwn6SOaNhc9es0JAfhS0/TeEP0F9ce
# 2vnS1WcaUk8OoVf8iJnBkcyBAz5NcCRks43iCH00fUyAVxJrQ5qZ8sU7H/Lvy0da
# E6ZMswEgJfMQ04uy+wjwiuCdCcBlp/qYgEk1hz1RGeiQIXhFLqGfLOEYwhrMxe6T
# SXBCMo/7xuoc82VokaJNTIIRSFJo3hC9FFdd6BgTZcV/sk+FLEikVoQ11vkunKoA
# FdE3/hoGlMJ8yOobMubKwvSnowMOdKWvObarYBLj6Na59zHh3K3kGKDYwSNHR7Oh
# D26jq22YBoMbt2pnLdK9RBqSEIGPsDsJ18ebMlrC/2pgVItJwZPt4bRc4G/rJvmM
# 1bL5OBDm6s6R9b7T+2+TYTRcvJNFKIM2KmYoX7BzzosmJQayg9Rc9hUZTO1i4F4z
# 8ujo7AqnsAMrkbI2eb73rQgedaZlzLvjSFDzd5Ea/ttQokbIYViY9XwCFjyDKK05
# huzUtw1T0PhH5nUwjewwk3YUpltLXXRhTT8SkXbev1jLchApQfDVxW0mdmgRQRNY
# mtwmKwH0iU1Z23jPgUo+QEdfyYFQc4UQIyFZYIpkVMHMIRroOBl8ZhzNeDhFMJlP
# /2NPTLuqDQhTQXxYPUez+rbsjDIJAsxsPAxWEQIDAQABo4IBWTCCAVUwEgYDVR0T
# AQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUaDfg67Y7+F8Rhvv+YXsIiGX0TkIwHwYD
# VR0jBBgwFoAU7NfjgtJxXWRM3y5nP+e6mK4cD08wDgYDVR0PAQH/BAQDAgGGMBMG
# A1UdJQQMMAoGCCsGAQUFBwMDMHcGCCsGAQUFBwEBBGswaTAkBggrBgEFBQcwAYYY
# aHR0cDovL29jc3AuZGlnaWNlcnQuY29tMEEGCCsGAQUFBzAChjVodHRwOi8vY2Fj
# ZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkUm9vdEc0LmNydDBDBgNV
# HR8EPDA6MDigNqA0hjJodHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRU
# cnVzdGVkUm9vdEc0LmNybDAcBgNVHSAEFTATMAcGBWeBDAEDMAgGBmeBDAEEATAN
# BgkqhkiG9w0BAQwFAAOCAgEAOiNEPY0Idu6PvDqZ01bgAhql+Eg08yy25nRm95Ry
# sQDKr2wwJxMSnpBEn0v9nqN8JtU3vDpdSG2V1T9J9Ce7FoFFUP2cvbaF4HZ+N3HL
# IvdaqpDP9ZNq4+sg0dVQeYiaiorBtr2hSBh+3NiAGhEZGM1hmYFW9snjdufE5Btf
# Q/g+lP92OT2e1JnPSt0o618moZVYSNUa/tcnP/2Q0XaG3RywYFzzDaju4ImhvTnh
# OE7abrs2nfvlIVNaw8rpavGiPttDuDPITzgUkpn13c5UbdldAhQfQDN8A+KVssIh
# dXNSy0bYxDQcoqVLjc1vdjcshT8azibpGL6QB7BDf5WIIIJw8MzK7/0pNVwfiThV
# 9zeKiwmhywvpMRr/LhlcOXHhvpynCgbWJme3kuZOX956rEnPLqR0kq3bPKSchh/j
# wVYbKyP/j7XqiHtwa+aguv06P0WmxOgWkVKLQcBIhEuWTatEQOON8BUozu3xGFYH
# Ki8QxAwIZDwzj64ojDzLj4gLDb879M4ee47vtevLt/B3E+bnKD+sEq6lLyJsQfmC
# XBVmzGwOysWGw/YmMwwHS6DTBwJqakAwSEs0qFEgu60bhQjiWQ1tygVQK+pKHJ6l
# /aCnHwZ05/LWUpD9r4VIIflXO7ScA+2GRfS0YW6/aOImYIbqyK+p/pQd52MbOoZW
# eE4wgge5MIIFoaADAgECAhALDOX/BzyGPKP6JnAWOAwdMA0GCSqGSIb3DQEBCwUA
# MGkxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjFBMD8GA1UE
# AxM4RGlnaUNlcnQgVHJ1c3RlZCBHNCBDb2RlIFNpZ25pbmcgUlNBNDA5NiBTSEEz
# ODQgMjAyMSBDQTEwHhcNMjYwODE5MDAwMDAwWhcNMjcwODE4MjM1OTU5WjCBwTET
# MBEGCysGAQQBgjc8AgEDEwJVUzEZMBcGCysGAQQBgjc8AgECEwhEZWxhd2FyZTEd
# MBsGA1UEDwwUUHJpdmF0ZSBPcmdhbml6YXRpb24xEDAOBgNVBAUTBzY2NzU5MTMx
# CzAJBgNVBAYTAlVTMREwDwYDVQQIEwhJbGxpbm9pczEQMA4GA1UEBxMHQ2hpY2Fn
# bzEVMBMGA1UEChMMTmVyZGlvLCBJbmMuMRUwEwYDVQQDEwxOZXJkaW8sIEluYy4w
# ggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQC0GAXkl6ecx6CDQ9QXP+mP
# oa2GWMIs5Tcw0/BtIZY3EjaJXq9Nmm4RHM+XSnRgae88aXnrIixdz9FIzp1uZ30E
# 4ztt8mfowmP7qhX2dS0BMTn3JN53x6vPsTbgrE419zkAMm2d7QjxSxVk+3dzCCDa
# FBiCe68aVGpRkqbRNMpwC3EoE8/2stzyi/njYbcTCzazXmjBqV7kz0DZfF0xLigt
# 4CWGnY1LxS9dJBESnKKH4dQLyKBpkDA2IM29bEiDhLnSg/wWIX+0lufTX0v3euIh
# tTBGB85lBZXjKt/dqKexGMBmou5WZT9sttYRXLsG9pflvBEhLmOAqA+inS98ii9C
# vd6Ly9D5adcR3InBBBHIx8kQFLOglRiEMCyUYoJ9K0AaHl8xxD0to+J4chG9hLvI
# 1bik+Q7z5Ut2NbdJwV22YLe41wJIQEtZynN2vKhM5GX5nokebXescojq0jeprZU6
# oSFpdcNmIOOBb9iGEpFhD9WvaoT0G6dn9GdCPypxZY3JBL+J8LxGwoxX4eaKx/e/
# 8O5a5FBVz/0yYL17hUmuLBZHtZcsw31cAnovm4DQ9jMBce1VlwrUFKevNzCAW3CR
# RVQx2DEcLTyWP8d6Dczsmy4hQEpUfgiLxyrWduxhNRJ9j/FUVq6AV9+J5gBlB/3H
# QaNVjIyplLqs/6yJRIHh6QIDAQABo4ICAjCCAf4wHwYDVR0jBBgwFoAUaDfg67Y7
# +F8Rhvv+YXsIiGX0TkIwHQYDVR0OBBYEFNQPOC7V6GMYGn9bFaoCiWTci1QwMD0G
# A1UdIAQ2MDQwMgYFZ4EMAQMwKTAnBggrBgEFBQcCARYbaHR0cDovL3d3dy5kaWdp
# Y2VydC5jb20vQ1BTMA4GA1UdDwEB/wQEAwIHgDATBgNVHSUEDDAKBggrBgEFBQcD
# AzCBtQYDVR0fBIGtMIGqMFOgUaBPhk1odHRwOi8vY3JsMy5kaWdpY2VydC5jb20v
# RGlnaUNlcnRUcnVzdGVkRzRDb2RlU2lnbmluZ1JTQTQwOTZTSEEzODQyMDIxQ0Ex
# LmNybDBToFGgT4ZNaHR0cDovL2NybDQuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0VHJ1
# c3RlZEc0Q29kZVNpZ25pbmdSU0E0MDk2U0hBMzg0MjAyMUNBMS5jcmwwgZQGCCsG
# AQUFBwEBBIGHMIGEMCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5kaWdpY2VydC5j
# b20wXAYIKwYBBQUHMAKGUGh0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdp
# Q2VydFRydXN0ZWRHNENvZGVTaWduaW5nUlNBNDA5NlNIQTM4NDIwMjFDQTEuY3J0
# MAkGA1UdEwQCMAAwDQYJKoZIhvcNAQELBQADggIBAMrdNPV0udYeYciAelPfj2x0
# VCnkSr1byoRXxsHV2U9jM0xdp0afCHRoaxLIZFvi8M8UzNkvfMelct1gVbIp7ygd
# yYjV0DlOdYVALzmfOuZPzwC02cvtqZkZ3j1sWN/9enqRQiPHv2iZkAdWGWYIvPRW
# q9xT7Qh/+4MsOMdnjleGcb95drHt2s4NagL4/haq1t+Wo+45D6v0r8kUedHLJF4P
# 6MtEbu1vdS1zWysT0SyrK3X3GjaRB6cTLL5S1GtPE92sEc3XU0V4gi8DFKV0Tcko
# ZXaDApg9KTaNii79jr/DLiejN41PODsYNM+zmROUiSHktvAbLV2w0vn0QDB8raCy
# vVBfCkQHqAeuWTQypFRf0NttZ9l9obEGdag2XjibCDZ1qRyjP8dr+XUwRGNZDwIP
# edZN7Bg+F9CA2VHHJHqYzsEOP9GbUAsq6J7i0E5V3ftb4n1327nFKu0HE2BJshz9
# lrRSz2F5fq69O7+imnHedVAUAN4gixuOLBJQMpSJ+YUs9mSlR8wnCCO5wp5kRnKT
# nNXyx6apTwr/ij5YPsH72iApunlJq/ashQd1e8P6ZTcerVXdUHr9Lr3n92sVky+/
# r3Le9IJlhnCQVjAdMsJ9WKa9IkOzC2sgHLe5Ea59kZO0BR/9PXFNyXsB5SAX9pGZ
# Ymvvxj8r7PzbSci8A4e6MYIaqTCCGqUCAQEwfTBpMQswCQYDVQQGEwJVUzEXMBUG
# A1UEChMORGlnaUNlcnQsIEluYy4xQTA/BgNVBAMTOERpZ2lDZXJ0IFRydXN0ZWQg
# RzQgQ29kZSBTaWduaW5nIFJTQTQwOTYgU0hBMzg0IDIwMjEgQ0ExAhALDOX/BzyG
# PKP6JnAWOAwdMA0GCWCGSAFlAwQCAQUAoIGEMBgGCisGAQQBgjcCAQwxCjAIoAKA
# AKECgAAwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEO
# MAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEINf4pzvidUU6gdgsAjZOCfmB
# oGfgaKDc/MLR3b66bVtMMA0GCSqGSIb3DQEBAQUABIICAEfYIy77d1VUAzHFjGoX
# mlrTm7oQX8GBsKk5O7plaNp18XC8HXAHSTcaWNqYioK3wh6E8lrZq3V42oeENVwb
# mgcF3Xag2QjBBqRmQ5L/8CjdaMIN6geIGUXBWNKKuuZDwQhl1P5CUYMhvJQaIGiI
# opynDVxfEtMH5oefUuva+4JcvVLtI49QjPndX/Qyre75pD1M3zz88yHm002H0zYu
# RwwGzmBgY5RKxvpu0devXA08x85MUsKgHc9d8zWWyxX/TXO7llYDnF0FTRTTizrq
# YwSJ1Z2ze5dragxAUbOucWww2PWjzeLECXgfJ4aRkWS/byKnEfgyVkBaU2bRHpKP
# EZymVNEVixNSjhIs1J547ONgt7grjjhdZbRMjGIR80gYauRHMlwFoKmcoby6r6we
# wE92RhMk3vXGavEmEJ0iXYq+Zf90zFwIeZB5rUp91JeJQLG2B9mFjNYDWF4g+7MX
# 87j3Hebx6ixW5aE47DzxpjfVfBlSaEfzUEylTo+MMGVk64pXzUd8muP9BcnzgpW0
# HdrATgPJzX1WX1EyHemByF8owyLeX2ZlvWP3iDWYjcYsqkBEIeS5zkZIHQtV77Bp
# bC4OjsCZE8JwzMaZO8bDyrvfK8E8AEVdgCguUpDMuMBY02M+uVrkdKaIraI9kmTV
# K0dOUDO5dv9jUtjE2iRH8z2woYIXdjCCF3IGCisGAQQBgjcDAwExghdiMIIXXgYJ
# KoZIhvcNAQcCoIIXTzCCF0sCAQMxDzANBglghkgBZQMEAgEFADB3BgsqhkiG9w0B
# CRABBKBoBGYwZAIBAQYJYIZIAYb9bAcBMDEwDQYJYIZIAWUDBAIBBQAEIBeS45BS
# fW4yBLPZgLsC/8nZ+Il9yfKtIkW1ofD/pfmdAhA7M5wnP4qu3JU/odJqaaYAGA8y
# MDI2MTAwMTExMTM0OVqgghM6MIIG7TCCBNWgAwIBAgIQCE/cM09+RU7bww+P+ZIY
# NTANBgkqhkiG9w0BAQsFADBpMQswCQYDVQQGEwJVUzEXMBUGA1UEChMORGlnaUNl
# cnQsIEluYy4xQTA/BgNVBAMTOERpZ2lDZXJ0IFRydXN0ZWQgRzQgVGltZVN0YW1w
# aW5nIFJTQTQwOTYgU0hBMjU2IDIwMjUgQ0ExMB4XDTI2MDgwNTAwMDAwMFoXDTM3
# MTEwNDIzNTk1OVowYzELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDkRpZ2lDZXJ0LCBJ
# bmMuMTswOQYDVQQDEzJEaWdpQ2VydCBTSEEyNTYgUlNBNDA5NiBUaW1lc3RhbXAg
# UmVzcG9uZGVyIDIwMjYgMTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIB
# ALZ7pvLJ/s1K+NSbTGWz/TjGMPh8CQ6RucZCLv5anHzWJjF/NWJrFIhy24fcpKXl
# gRiky4WAawDfU3YP0BMxt9l3Dm5oCG5Z69AqEN1kgHg2epx+l+lZBcmJCcN0ASUR
# ML5uFIS80sZsDwO3BSkUxDjLJhBI+qiZP3aixAC/qEGLjsBNlLol9VZ7pfGEXiMl
# neJIC5/YKuizVzNFKZZEeoy/0B8Zm+nzKBgSWG52lCO1w+nCg6XpCtklTJXeIg28
# 3hw7TmmsZXR+SMbjbrEOvZ3fP2VxIgeR28Y90ZStd3F9VuA5RVynb/whITPAo9b7
# 5Zr4Ta6Mj3URm26QZYMn/FnbuTegcoRcFEZ9FOqM5T6MTdtr/n74lIT/ug0eeOzm
# Z6QTFg33otX+bFRsIolvykE1jive4PuESaT8zzVeFWDAMDtozNgLctkGD1ZjkEyZ
# tJrLl5ya0m5doH/ScpaZCZVl6pNUOCybMc/kxC6EAmSJY24L0yYKD1Nkddsnb/It
# VKi/2nXpQNMu1PT5prW83vV8d67WowuUs0HdY4H8AMLGvdL/WHEj3ZnqMqAQQP9u
# 3Ai9t+5eQ02GDwy0ODjdzi0xlp70W+ow63/0++YDEX1M0iwgUHwbrJvfpklkZQvw
# 3+kv3vUPItdwroczk9icflf55W1zOEKAcJVAIXpcMCU9AgMBAAGjggGVMIIBkTAM
# BgNVHRMBAf8EAjAAMB0GA1UdDgQWBBQUyWOKMC7USvtulPPm40B+9ezN4jAfBgNV
# HSMEGDAWgBTvb1NK6eQGfHrK4pBW9i/USezLTjAOBgNVHQ8BAf8EBAMCB4AwFgYD
# VR0lAQH/BAwwCgYIKwYBBQUHAwgwgZUGCCsGAQUFBwEBBIGIMIGFMCQGCCsGAQUF
# BzABhhhodHRwOi8vb2NzcC5kaWdpY2VydC5jb20wXQYIKwYBBQUHMAKGUWh0dHA6
# Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFRydXN0ZWRHNFRpbWVTdGFt
# cGluZ1JTQTQwOTZTSEEyNTYyMDI1Q0ExLmNydDBfBgNVHR8EWDBWMFSgUqBQhk5o
# dHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkRzRUaW1lU3Rh
# bXBpbmdSU0E0MDk2U0hBMjU2MjAyNUNBMS5jcmwwIAYDVR0gBBkwFzAIBgZngQwB
# BAIwCwYJYIZIAYb9bAcBMA0GCSqGSIb3DQEBCwUAA4ICAQCNxTphHp1SCt+ZrAmA
# fn0oQLFr0mLywSLaDXQIENoyKqxrFbJblzCVP/pkXmwXOdrOpWygLzlT12os5ipD
# Cy35RBCg2UMeApEtrfGhz45F4Wt4WGdNdIbRWt3YTYJmpR+b7lr4d7Uwn+H600u4
# D7RnOGf8Wj4UNgAdZkfHhHv1mx9EVh71SJelcEN/oORSjXzdjfw1iZH9d8Nh/thn
# 6hH23d+VsPAr6GAYyzSA02nXD1nYLI7Ijmiv+xLCiYC41DSFYL3GhTiy0PxpawPt
# GRyaBVGzq+UiTfM8pD7KVyF5aQyWP4KhVGUUTnmm/RlYJoW3TiXA/+t0YcT2oRVB
# m3JETjajHug2AL+v5jhtKVnd3D0rbHXEu27o+Q8p4sEWPMqKDB+qbceb6T/6WcwT
# wXmQ9lOCLLYcsQeSWmvKqzpAec9etE14jOQAzLKWdE3w/TCaKtLRaRT7LCkRYVnh
# A2D73FLje1O5b3HR5eHs0NzU/+xX7NbEdcofy0W3Wdwd1XOqtlpg/JgwtKfZM5dq
# O94lbUveOiJBI+xZEbGRsMNbXmMREUTgu+Oca7Y73MPWcslIx2VhkSKSXjDbD6rg
# g39H5Mh7QfieAIjWagkJNt68Yfim6cjEzVSiLSeZfdkr5dtFPTW6jATlWJdYeeDR
# GCyatf8R1hSjzSvdN8yWQPT9gzCCBrQwggScoAMCAQICEA3HrFcF/yGZLkBDIgw6
# SYYwDQYJKoZIhvcNAQELBQAwYjELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lD
# ZXJ0IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEhMB8GA1UEAxMYRGln
# aUNlcnQgVHJ1c3RlZCBSb290IEc0MB4XDTI1MDUwNzAwMDAwMFoXDTM4MDExNDIz
# NTk1OVowaTELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDkRpZ2lDZXJ0LCBJbmMuMUEw
# PwYDVQQDEzhEaWdpQ2VydCBUcnVzdGVkIEc0IFRpbWVTdGFtcGluZyBSU0E0MDk2
# IFNIQTI1NiAyMDI1IENBMTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIB
# ALR4MdMKmEFyvjxGwBysddujRmh0tFEXnU2tjQ2UtZmWgyxU7UNqEY81FzJsQqr5
# G7A6c+Gh/qm8Xi4aPCOo2N8S9SLrC6Kbltqn7SWCWgzbNfiR+2fkHUiljNOqnIVD
# /gG3SYDEAd4dg2dDGpeZGKe+42DFUF0mR/vtLa4+gKPsYfwEu7EEbkC9+0F2w4QJ
# LVSTEG8yAR2CQWIM1iI5PHg62IVwxKSpO0XaF9DPfNBKS7Zazch8NF5vp7eaZ2CV
# NxpqumzTCNSOxm+SAWSuIr21Qomb+zzQWKhxKTVVgtmUPAW35xUUFREmDrMxSNlr
# /NsJyUXzdtFUUt4aS4CEeIY8y9IaaGBpPNXKFifinT7zL2gdFpBP9qh8SdLnEut/
# GcalNeJQ55IuwnKCgs+nrpuQNfVmUB5KlCX3ZA4x5HHKS+rqBvKWxdCyQEEGcbLe
# 1b8Aw4wJkhU1JrPsFfxW1gaou30yZ46t4Y9F20HHfIY4/6vHespYMQmUiote8lad
# jS/nJ0+k6MvqzfpzPDOy5y6gqztiT96Fv/9bH7mQyogxG9QEPHrPV6/7umw052Ak
# yiLA6tQbZl1KhBtTasySkuJDpsZGKdlsjg4u70EwgWbVRSX1Wd4+zoFpp4Ra+MlK
# M2baoD6x0VR4RjSpWM8o5a6D8bpfm4CLKczsG7ZrIGNTAgMBAAGjggFdMIIBWTAS
# BgNVHRMBAf8ECDAGAQH/AgEAMB0GA1UdDgQWBBTvb1NK6eQGfHrK4pBW9i/USezL
# TjAfBgNVHSMEGDAWgBTs1+OC0nFdZEzfLmc/57qYrhwPTzAOBgNVHQ8BAf8EBAMC
# AYYwEwYDVR0lBAwwCgYIKwYBBQUHAwgwdwYIKwYBBQUHAQEEazBpMCQGCCsGAQUF
# BzABhhhodHRwOi8vb2NzcC5kaWdpY2VydC5jb20wQQYIKwYBBQUHMAKGNWh0dHA6
# Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFRydXN0ZWRSb290RzQuY3J0
# MEMGA1UdHwQ8MDowOKA2oDSGMmh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9EaWdp
# Q2VydFRydXN0ZWRSb290RzQuY3JsMCAGA1UdIAQZMBcwCAYGZ4EMAQQCMAsGCWCG
# SAGG/WwHATANBgkqhkiG9w0BAQsFAAOCAgEAF877FoAc/gc9EXZxML2+C8i1NKZ/
# zdCHxYgaMH9Pw5tcBnPw6O6FTGNpoV2V4wzSUGvI9NAzaoQk97frPBtIj+ZLzdp+
# yXdhOP4hCFATuNT+ReOPK0mCefSG+tXqGpYZ3essBS3q8nL2UwM+NMvEuBd/2vmd
# YxDCvwzJv2sRUoKEfJ+nN57mQfQXwcAEGCvRR2qKtntujB71WPYAgwPyWLKu6Rna
# ID/B0ba2H3LUiwDRAXx1Neq9ydOal95CHfmTnM4I+ZI2rVQfjXQA1WSjjf4J2a7j
# LzWGNqNX+DF0SQzHU0pTi4dBwp9nEC8EAqoxW6q17r0z0noDjs6+BFo+z7bKSBwZ
# XTRNivYuve3L2oiKNqetRHdqfMTCW/NmKLJ9M+MtucVGyOxiDf06VXxyKkOirv6o
# 02OoXN4bFzK0vlNMsvhlqgF2puE6FndlENSmE+9JGYxOGLS/D284NHNboDGcmWXf
# wXRy4kbu4QFhOm0xJuF2EZAOk5eCkhSxZON3rGlHqhpB/8MluDezooIs8CVnrpHM
# iD2wL40mm53+/j7tFaxYKIqL0Q4ssd8xHZnIn/7GELH3IdvG2XlM9q7WP/UwgOkw
# /HQtyRN62JK4S1C8uw3PdBunvAZapsiI5YKdvlarEvf8EA+8hcpSM9LHJmyrxaFt
# oza2zNaQ9k+5t1wwggWNMIIEdaADAgECAhAOmxiO+dAt5+/bUOIIQBhaMA0GCSqG
# SIb3DQEBDAUAMGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMx
# GTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xJDAiBgNVBAMTG0RpZ2lDZXJ0IEFz
# c3VyZWQgSUQgUm9vdCBDQTAeFw0yMjA4MDEwMDAwMDBaFw0zMTExMDkyMzU5NTla
# MGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsT
# EHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0IFRydXN0ZWQgUm9v
# dCBHNDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAL/mkHNo3rvkXUo8
# MCIwaTPswqclLskhPfKK2FnC4SmnPVirdprNrnsbhA3EMB/zG6Q4FutWxpdtHauy
# efLKEdLkX9YFPFIPUh/GnhWlfr6fqVcWWVVyr2iTcMKyunWZanMylNEQRBAu34Lz
# B4TmdDttceItDBvuINXJIB1jKS3O7F5OyJP4IWGbNOsFxl7sWxq868nPzaw0QF+x
# embud8hIqGZXV59UWI4MK7dPpzDZVu7Ke13jrclPXuU15zHL2pNe3I6PgNq2kZhA
# kHnDeMe2scS1ahg4AxCN2NQ3pC4FfYj1gj4QkXCrVYJBMtfbBHMqbpEBfCFM1Lyu
# GwN1XXhm2ToxRJozQL8I11pJpMLmqaBn3aQnvKFPObURWBf3JFxGj2T3wWmIdph2
# PVldQnaHiZdpekjw4KISG2aadMreSx7nDmOu5tTvkpI6nj3cAORFJYm2mkQZK37A
# lLTSYW3rM9nF30sEAMx9HJXDj/chsrIRt7t/8tWMcCxBYKqxYxhElRp2Yn72gLD7
# 6GSmM9GJB+G9t+ZDpBi4pncB4Q+UDCEdslQpJYls5Q5SUUd0viastkF13nqsX40/
# ybzTQRESW+UQUOsxxcpyFiIJ33xMdT9j7CFfxCBRa2+xq4aLT8LWRV+dIPyhHsXA
# j6KxfgommfXkaS+YHS312amyHeUbAgMBAAGjggE6MIIBNjAPBgNVHRMBAf8EBTAD
# AQH/MB0GA1UdDgQWBBTs1+OC0nFdZEzfLmc/57qYrhwPTzAfBgNVHSMEGDAWgBRF
# 66Kv9JLLgjEtUYunpyGd823IDzAOBgNVHQ8BAf8EBAMCAYYweQYIKwYBBQUHAQEE
# bTBrMCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5kaWdpY2VydC5jb20wQwYIKwYB
# BQUHMAKGN2h0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3Vy
# ZWRJRFJvb3RDQS5jcnQwRQYDVR0fBD4wPDA6oDigNoY0aHR0cDovL2NybDMuZGln
# aWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJlZElEUm9vdENBLmNybDARBgNVHSAECjAI
# MAYGBFUdIAAwDQYJKoZIhvcNAQEMBQADggEBAHCgv0NcVec4X6CjdBs9thbX979X
# B72arKGHLOyFXqkauyL4hxppVCLtpIh3bb0aFPQTSnovLbc47/T/gLn4offyct4k
# vFIDyE7QKt76LVbP+fT3rDB6mouyXtTP0UNEm0Mh65ZyoUi0mcudT6cGAxN3J0TU
# 53/oWajwvy8LpunyNDzs9wPHh6jSTEAZNUZqaVSwuKFWjuyk1T3osdz9HNj0d1pc
# VIxv76FQPfx2CWiEn2/K2yCNNWAcAgPLILCsWKAOQGPFmCLBsln1VWvPJ6tsds5v
# Iy30fnFqI2si/xK4VC0nftg62fC2h5b9W9FcrBjDTZ9ztwGpn1eqXijiuZQxggN8
# MIIDeAIBATB9MGkxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5j
# LjFBMD8GA1UEAxM4RGlnaUNlcnQgVHJ1c3RlZCBHNCBUaW1lU3RhbXBpbmcgUlNB
# NDA5NiBTSEEyNTYgMjAyNSBDQTECEAhP3DNPfkVO28MPj/mSGDUwDQYJYIZIAWUD
# BAIBBQCggdEwGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEEMBwGCSqGSIb3DQEJ
# BTEPFw0yNjEwMDExMTEzNDlaMCsGCyqGSIb3DQEJEAIMMRwwGjAYMBYEFFHZq9oD
# SXPYT0JmrKSCSOazacQ5MC8GCSqGSIb3DQEJBDEiBCD3WuKcrWC0T6H9knQTgWJx
# YHHuqtdGyVOc/PbRKOunOzA3BgsqhkiG9w0BCRACLzEoMCYwJDAiBCAtoJ2n9BMf
# n+cttsXm6cllZ1WvBD8ep0LMDSEg4UHr/DANBgkqhkiG9w0BAQEFAASCAgAnNSja
# HRzoxQMIL6ttm7cmZar7WOuRPJs4E6fMA3TkEOD4eXRu4Jb7aC7AgK4NKi+uz0RB
# IWDyt+pBKJrPULz1L6mYDNcHa+R6sSEB42mw6kWDVh/AsMN9Y9cZ3K0RgDClHFXS
# DvFOM+eaJxk9VjrZcOJcg3XFhBgVhSYHZ5bbrav+ABwIpQ4mN8c3joUR307RWeoe
# U8VmVW12cd/V8esCigte7VWJKMgOUama4lTdxIOKje8leGxfxm+3eLSi1TfvkRO3
# lUk7MIMvFbJwAmNYm9DETM0g3MJ3FXm+MNEev98v1Ulv/Fy0dEVUYQDgfmxUgPfq
# u1jrxtHcxBwciPF3h34vFhhpsCsjp+/K3ve+O7uPrOP2b36P1P+3TTgvR0YZUhe6
# ZsD2S3NL/hHYbcO0YTFMvtOgDNAZXaDzN3MO5Th5jF1O4eKjVgcO5EXp7YkG/lzB
# 0vx3ewhnmE3LLxg2lL7WokHvAzaosbANftxdSLPkwv3Rcf/2hX7dsm6kOsvHQRuK
# wX53tOesCUwWlrim+qc3wAsjLut/QyZIlXiBPjn88681BtE111QhP4y3Ik8fYEt4
# lCME0oELRb3iXSUxlnLk7B+ww8wfnHKmhMnHm02tKjIlXFWtH99eoKdXbmAIPkIE
# 1qY94KyXg7qxptGM3Wcd3E6Jc9UX9iEG+dSP6A==
# SIG # End signature block
