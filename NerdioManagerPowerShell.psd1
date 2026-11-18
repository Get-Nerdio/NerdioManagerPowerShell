@{
  GUID = '6b34a792-4773-4786-8711-fd3987b174cc'
  RootModule = './NerdioManagerPowerShell.psm1'
  ModuleVersion = '1.4.0'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = 'Nerdio, Inc.'
  CompanyName = 'Nerdio, Inc.'
  Copyright = '2026 Nerdio, Inc. All rights reserved'
  Description = 'A PowerShell module for managing Nerdio Manager for Enterprise (NME)'
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/NerdioManagerPowerShell.private.dll'
  FormatsToProcess = './NerdioManagerPowerShell.format.ps1xml'
  FunctionsToExport = 'Add-NmeRbacAssignmentAvdWorkspace', 'Connect-Nme', 'Disable-NmeConsoleConnectRegion', 'Disconnect-Nme', 'Enable-NmeConsoleConnectRegion', 'Get-NmeAdConfig', 'Get-NmeAppAttachImage', 'Get-NmeAppAttachImageVersion', 'Get-NmeAppAttachStorageLocation', 'Get-NmeAppManagementAppGroup', 'Get-NmeAppManagementOnetimePolicy', 'Get-NmeAppManagementOnetimePolicySnapshot', 'Get-NmeAppManagementRecurrentPolicy', 'Get-NmeAppManagementRecurrentPolicySnapshot', 'Get-NmeAppManagementRepository', 'Get-NmeAppManagementRepositoryApp', 'Get-NmeAutoScaleProfile', 'Get-NmeAutoScaleProfileAssignment', 'Get-NmeCloudPcAlertCondition', 'Get-NmeConsoleConnectRegion', 'Get-NmeCurrentInstallationInfo', 'Get-NmeDesktopImage', 'Get-NmeDesktopImageRunScriptSchedule', 'Get-NmeDesktopImageSchedule', 'Get-NmeDesktopImageSetAsImageSchedule', 'Get-NmeEntraIdTenant', 'Get-NmeFileShare', 'Get-NmeFileShareAutoscale', 'Get-NmeFsLogixProfile', 'Get-NmeHostPool', 'Get-NmeHostPoolActiveDirectoryConfiguration', 'Get-NmeHostPoolAutoScale', 'Get-NmeHostPoolAutoscaleProfile', 'Get-NmeHostPoolAvdProperty', 'Get-NmeHostPoolBackupProperty', 'Get-NmeHostPoolConsoleConnectProperty', 'Get-NmeHostPoolControlUpProperty', 'Get-NmeHostPoolFsLogixConfiguration', 'Get-NmeHostPoolRdpProfile', 'Get-NmeHostPoolRdpProperty', 'Get-NmeHostPoolReimageSchedule', 'Get-NmeHostPoolRunScriptSchedule', 'Get-NmeHostPoolSchedule', 'Get-NmeHostPoolScriptedAction', 'Get-NmeHostPoolScriptedActionProfile', 'Get-NmeHostPoolSessionTimeout', 'Get-NmeHostPoolTag', 'Get-NmeHostPoolUsage', 'Get-NmeHostPoolUsageTrackingProperty', 'Get-NmeHostPoolUserSelfServiceProperty', 'Get-NmeHostPoolUserSession', 'Get-NmeHostPoolVMDeploymentProfile', 'Get-NmeHostPoolVMDeploymentProperty', 'Get-NmeImage', 'Get-NmeIntuneAlertCondition', 'Get-NmeJob', 'Get-NmeJobTask', 'Get-NmeJobType', 'Get-NmeLinkedCapacityReservationGroup', 'Get-NmeLinkedDedicatedHostGroup', 'Get-NmeLinkedDedicatedHostGroupHost', 'Get-NmeLinkedNetwork', 'Get-NmeLinkedNotificationMailbox', 'Get-NmeLinkedNotificationWebhook', 'Get-NmeLinkedProximityPlacementGroup', 'Get-NmeLinkedResourceGroup', 'Get-NmeLinkedSigningCertificate', 'Get-NmeLinkedSubscription', 'Get-NmeLogo', 'Get-NmeNetAppFilesAutoscale', 'Get-NmeNotificationAction', 'Get-NmeNotificationCondition', 'Get-NmeNotificationHealthAlertCondition', 'Get-NmePackage', 'Get-NmePortalNotification', 'Get-NmeRbacAssignment', 'Get-NmeRunbookScriptedActionsSchedule', 'Get-NmeScriptedAction', 'Get-NmeScriptedActionsGroup', 'Get-NmeSecureVariable', 'Get-NmeSessionHost', 'Get-NmeSessionHostByName', 'Get-NmeSessionHostByUser', 'Get-NmeSessionHostsByWorkspace', 'Get-NmeShellApp', 'Get-NmeShellAppVersion', 'Get-NmeUserCostAttributionConfiguration', 'Get-NmeUserCostAttributionConfigurationReport', 'Get-NmeUserCostAttributionConfigurationReportExport', 'Get-NmeUserCostAttributionConfigurationReportExportAsCsv', 'Get-NmeUserEntitlement', 'Get-NmeWorkspace', 'Get-NmeWorkspaceUsage', 'Get-NmeWorkspaceUserSession', 'Import-NmeLinkedSigningCertificate', 'Invoke-NmeDesktopImageRunScript', 'Invoke-NmeDesktopImageSetAsImage', 'Invoke-NmeHostPoolAssignUser', 'Invoke-NmeHostPoolAssociateVM', 'Invoke-NmeHostPoolReimage', 'Invoke-NmeHostPoolRunScript', 'Invoke-NmeHostPoolUnassignUser', 'Invoke-NmeHostPoolUserSessionAction', 'Invoke-NmeRunbookScriptedActionRun', 'Invoke-NmeSessionHostActivate', 'Invoke-NmeSessionHostAssociateVM', 'Invoke-NmeSessionHostDeactivate', 'Invoke-NmeSessionHostLock', 'Invoke-NmeSessionHostReimage', 'Invoke-NmeSessionHostUnlock', 'Invoke-NmeUserCostAttributionConfigurationReportBuild', 'Invoke-NmeUserCostAttributionConfigurationReportExport', 'New-NmeActiveSessionsConfigurationModel', 'New-NmeAdConfigPropertiesWithPasswordModel', 'New-NmeAdObjectCreateModel', 'New-NmeAnyAppActionCreateModel', 'New-NmeAnyAppScopeCreateModel', 'New-NmeAnySelfServiceAppCreateModel', 'New-NmeAnyUamPolicyActionCreateModel', 'New-NmeAppAttachCertificate', 'New-NmeAppAttachImage', 'New-NmeAppAttachImageCreateModel', 'New-NmeAppAttachImageUpdateModel', 'New-NmeAppAttachImageVersion', 'New-NmeAppAttachImageVersionCreateModel', 'New-NmeAppAttachImageVersionUpdateModel', 'New-NmeAppGroupCreateModel', 'New-NmeAppGroupItemCreateModel', 'New-NmeAppGroupUpdateModel', 'New-NmeAppManagementAppGroup', 'New-NmeAppManagementOnetimePolicy', 'New-NmeAppManagementRecurrentPolicy', 'New-NmeAppPolicyOneTimeCreateModel', 'New-NmeAppPolicyRecurrentCreateModel', 'New-NmeAppPolicyRecurrentUpdateModel', 'New-NmeArmHostPoolAssignmentModel', 'New-NmeArmHostPoolCreateModel', 'New-NmeArmHostPoolPersonalConfigModel', 'New-NmeArmHostPoolPooledConfigModel', 'New-NmeArmHostPoolPropertiesModel', 'New-NmeArmHostPoolSourceModel', 'New-NmeAutoHealActionModel', 'New-NmeAutoHealConfigurationItemModel', 'New-NmeAutoHealConfigurationModel', 'New-NmeAutoScaleAdObjectModel', 'New-NmeAutoScaleDefaultConfigurationModel', 'New-NmeAutoScaleDefaultConfigurationUpdateModel', 'New-NmeAutoScaleOverrideProfileFlagsModel', 'New-NmeAutoScaleProfile', 'New-NmeAutoScaleProfileAssignmentCreateModel', 'New-NmeAutoScaleProfileCreateModel', 'New-NmeAutoScaleProfileOverrideUpdateModel', 'New-NmeAutoScaleProfileScheduleDateRangeModel', 'New-NmeAutoScaleProfileScheduleModel', 'New-NmeAutoScaleProfileUpdateModel', 'New-NmeAutoScaleSecondaryRegionConfigurationModel', 'New-NmeAutoScaleSecondaryRegionModel', 'New-NmeAutoScaleUpdateModel', 'New-NmeAutoScaleUserDrivenConfigurationCreateModel', 'New-NmeAutoScaleUserDrivenConfigurationUpdateModel', 'New-NmeAutoScaleWorkingHoursConfigurationModel', 'New-NmeAutoScaleWorkingHoursConfigurationUpdateModel', 'New-NmeAvailableUserSessionsConfigurationModel', 'New-NmeAvdAgentMaintenanceWindowModel', 'New-NmeAvdAgentUpdateModel', 'New-NmeAzureFilesAutoscaleConfigModel', 'New-NmeAzureFilesAutoscaleConfigUpdateModel', 'New-NmeAzureFilesBasicAutoscaleConfigModel', 'New-NmeAzureFilesBasicAutoscaleConfigUpdateModel', 'New-NmeAzureFilesPerformanceBoundsModel', 'New-NmeAzureFilesPreStageConfigModel', 'New-NmeAzureFilesPreStageConfigUpdateModel', 'New-NmeAzureFilesScalingConfigModel', 'New-NmeAzureFilesScalingConfigUpdateModel', 'New-NmeAzureFilesScalingRuleModel', 'New-NmeCloudPcAlertCondition', 'New-NmeCloudPcAlertConditionCreateModel', 'New-NmeCloudPcAlertConditionUpdateModel', 'New-NmeCloudPcAlertRuleConditionUpdateModel', 'New-NmeConsoleConnectConnectionModel', 'New-NmeConsoleConnectRegionEnableModel', 'New-NmeConsoleConnectRegionUpdateModel', 'New-NmeCredentialsModel', 'New-NmeCustomScriptScheduleCreateModel', 'New-NmeDedicatedHostGroupLinkModel', 'New-NmeDesktopImageFromLibrary', 'New-NmeDesktopImageRunScriptSchedule', 'New-NmeDynamicPoolConfigurationModel', 'New-NmeDynamicPoolTriggerInfoModel', 'New-NmeEntraIdTenant', 'New-NmeEntraIdTenantCreateModel', 'New-NmeEntraIdTenantUpdateModel', 'New-NmeExtensionsConfigurationModel', 'New-NmeFsLogixCloudCacheRegistrySettingsModel', 'New-NmeFsLogixCloudCacheRegistrySettingsUpdateModel', 'New-NmeFsLogixExclusionsModel', 'New-NmeFsLogixExclusionsUpdateModel', 'New-NmeFsLogixInstallerModel', 'New-NmeFsLogixInstallerUpdateModel', 'New-NmeFsLogixOptionalRegistrySettingsModel', 'New-NmeFsLogixOptionalRegistrySettingsUpdateModel', 'New-NmeFsLogixParamsCreateModel', 'New-NmeFsLogixParamsUpdateModel', 'New-NmeFsLogixProfile', 'New-NmeFsLogixPropertiesModel', 'New-NmeFsLogixPropertiesUpdateModel', 'New-NmeFsLogixRegistryModel', 'New-NmeFsLogixRegistryUpdateModel', 'New-NmeGalleryImageConfigurationModel', 'New-NmeHostChangeModel', 'New-NmeHostPool', 'New-NmeHostPoolActiveDirectoryUpdateModel', 'New-NmeHostPoolAdConfigModel', 'New-NmeHostPoolAssignmentModel', 'New-NmeHostPoolAutoScale', 'New-NmeHostPoolBackupModel', 'New-NmeHostPoolConsoleConnectUpdateModel', 'New-NmeHostPoolControlUpAuthenticationKeyUpdateModel', 'New-NmeHostPoolControlUpMaintenanceWindowModel', 'New-NmeHostPoolControlUpRegistrationKeyUpdateModel', 'New-NmeHostPoolControlUpSecondaryConfigModel', 'New-NmeHostPoolControlUpUpdateModel', 'New-NmeHostPoolFsLogixPropertiesModel', 'New-NmeHostPoolFsLogixUpdateModel', 'New-NmeHostPoolRdpProfile', 'New-NmeHostPoolRdpProfileCreateModel', 'New-NmeHostPoolRdpProfileUpdateModel', 'New-NmeHostPoolRdpShortpathPropertiesModel', 'New-NmeHostPoolRdpUpdateModel', 'New-NmeHostPoolReimageParamsModel', 'New-NmeHostPoolReimageRunModel', 'New-NmeHostPoolReimageSchedule', 'New-NmeHostPoolReimageScheduleModel', 'New-NmeHostPoolRunScriptSchedule', 'New-NmeHostPoolScriptedActionProfile', 'New-NmeHostPoolScriptedActionProfileConfigurationCreateModel', 'New-NmeHostPoolScriptedActionProfileConfigurationsCreateModel', 'New-NmeHostPoolScriptedActionProfileConfigurationsUpdateModel', 'New-NmeHostPoolScriptedActionProfileConfigurationUpdateModel', 'New-NmeHostPoolScriptedActionProfileCreateModel', 'New-NmeHostPoolScriptedActionProfileUpdateModel', 'New-NmeHostPoolScriptedActionsAssignmentModel', 'New-NmeHostPoolScriptedActionsConfigModel', 'New-NmeHostPoolScriptedActionsModel', 'New-NmeHostPoolScriptRunModel', 'New-NmeHostPoolScriptRunParamsModel', 'New-NmeHostPoolScriptScheduleModel', 'New-NmeHostPoolSessionTimeoutModel', 'New-NmeHostPoolSizeModel', 'New-NmeHostPoolTagsUpdateModel', 'New-NmeHostPoolTrackingModel', 'New-NmeHostPoolUserSelfServiceUpdateModel', 'New-NmeHostPoolVMDeploymentProfile', 'New-NmeHostPoolVmDeploymentProfileCertificatesModel', 'New-NmeHostPoolVmDeploymentProfileConfigurationCreateModel', 'New-NmeHostPoolVmDeploymentProfileConfigurationUpdateModel', 'New-NmeHostPoolVmDeploymentProfileCreateModel', 'New-NmeHostPoolVmDeploymentProfileUpdateModel', 'New-NmeHostPoolVmDeploymentUpdateModel', 'New-NmeHostReimageParamsModel', 'New-NmeHostReimageRunModel', 'New-NmeHostUsageConfigurationModel', 'New-NmeHostUsageModel', 'New-NmeImageFromLibraryCreateModel', 'New-NmeImageFromLibraryCreateParamsModel', 'New-NmeIntuneAlertConditionUpdateModel', 'New-NmeIntuneDeviceConsoleConnectConnection', 'New-NmeJobFailurePolicyModel', 'New-NmeLinkedCapacityReservationGroup', 'New-NmeLinkedDedicatedHostGroup', 'New-NmeLinkedFileShare', 'New-NmeLinkedNetwork', 'New-NmeLinkedNetworkCreateModel', 'New-NmeLinkedProximityPlacementGroup', 'New-NmeLinkedResourceGroup', 'New-NmeLinkedResourceGroupCreateModel', 'New-NmeLinkedSigningCertificate', 'New-NmeLinkedSigningCertificateCreateModel', 'New-NmeLinkedSigningCertificateDeleteModel', 'New-NmeLinkedSigningCertificateImportModel', 'New-NmeLinkedSigningCertificateUpdateModel', 'New-NmeLinkedSubscription', 'New-NmeLinkedSubscriptionCreateModel', 'New-NmeLinkedSubscriptionUpdateModel', 'New-NmeMsixPackage', 'New-NmeMsixPackageFromFile', 'New-NmeMsixPackageUploadModel', 'New-NmeNetAppFilesAutoscaleConfigModel', 'New-NmeNetAppFilesAutoscaleConfigUpdateModel', 'New-NmeNetAppFilesBasicAutoscaleConfigModel', 'New-NmeNetAppFilesBasicAutoscaleConfigUpdateModel', 'New-NmeNetAppFilesPreStageConfigModel', 'New-NmeNetAppFilesPreStageConfigUpdateModel', 'New-NmeNetAppFilesScalingConfigModel', 'New-NmeNetAppFilesScalingConfigUpdateModel', 'New-NmeNetAppFilesWorkTimeSetModel', 'New-NmeNotificationAction', 'New-NmeNotificationActionConditionsModel', 'New-NmeNotificationActionConditionsUpdateModel', 'New-NmeNotificationActionCreateModel', 'New-NmeNotificationActionDeliveryModel', 'New-NmeNotificationActionDeliveryUpdateModel', 'New-NmeNotificationActionEmailDeliveryModel', 'New-NmeNotificationActionEmailDeliveryUpdateModel', 'New-NmeNotificationActionUpdateModel', 'New-NmeNotificationActionWebhookDeliveryModel', 'New-NmeNotificationActionWebhookDeliveryUpdateModel', 'New-NmeNotificationCondition', 'New-NmeNotificationConditionCreateModel', 'New-NmeNotificationConditionRunByUserModel', 'New-NmeNotificationConditionTargetModel', 'New-NmeNotificationConditionUpdateModel', 'New-NmeOsDiskPreStageModel', 'New-NmePersistentAvdPropertiesModel', 'New-NmePersonalAutoGrowConfigurationModel', 'New-NmePersonalAutoShrinkConfigurationModel', 'New-NmePolicyConcurrencyCreateModel', 'New-NmePortalNotification', 'New-NmePortalNotificationCreateModel', 'New-NmePortalNotificationPeriodModel', 'New-NmePortalNotificationUpdateModel', 'New-NmePowerStateCommandExtensionsModel', 'New-NmePowerStateCommandModel', 'New-NmePowerStateCommandParamsModel', 'New-NmePowerTimingConfigurationModel', 'New-NmePreStageHostsConfigurationItemModel', 'New-NmePreStageHostsConfigurationModel', 'New-NmeRbacAssignmentUpdateModel', 'New-NmeRbacWorkspaceScopeUpdateModel', 'New-NmeReimageConcurrencyModel', 'New-NmeReimageMessagingModel', 'New-NmeReimageParamsModel', 'New-NmeRollingDrainModeConfigurationModel', 'New-NmeRollingDrainModeWindowModel', 'New-NmeRunbookScriptedActionRunModel', 'New-NmeRunbookScriptedActionScheduleModel', 'New-NmeRunbookScriptedActionsSchedule', 'New-NmeRunScriptBulkJobParamsModel', 'New-NmeRunScriptBulkJobWithHostsParamsModel', 'New-NmeScaleInPolicyModel', 'New-NmeScaleInTimeRestrictionConfigurationModel', 'New-NmeScheduleConfigurationCreateModel', 'New-NmeScriptedAction', 'New-NmeScriptedActionCreateModel', 'New-NmeScriptedActionDeleteModel', 'New-NmeScriptedActionOptionModel', 'New-NmeScriptedActionsGroup', 'New-NmeScriptedActionsGroupCreateModel', 'New-NmeScriptedActionsGroupDeleteModel', 'New-NmeScriptedActionsGroupItemCreateModel', 'New-NmeScriptedActionsGroupItemUpdateModel', 'New-NmeScriptedActionsGroupUpdateModel', 'New-NmeScriptedActionUpdateModel', 'New-NmeScriptRunParamsModel', 'New-NmeSecureVariable', 'New-NmeSecureVariableCreateOrUpdateModel', 'New-NmeSecureVariableDeleteModel', 'New-NmeSecureVariableUpdateModel', 'New-NmeSelfServiceDiskSizeModel', 'New-NmeServicePrincipalParamsModel', 'New-NmeSessionConsoleConnectConnectionUrl', 'New-NmeSessionHost', 'New-NmeSessionHostAssociateModel', 'New-NmeSessionHostCreateModel', 'New-NmeSessionHostCreateParamsModel', 'New-NmeSessionHostParamsModel', 'New-NmeSessionHostRemoveModel', 'New-NmeSessionHostRemoveParamsModel', 'New-NmeSetAsImageModel', 'New-NmeSetAsImageParamsModel', 'New-NmeSharedAvdPropertiesModel', 'New-NmeShellApp', 'New-NmeShellAppCreateModel', 'New-NmeShellAppUpdateModel', 'New-NmeShellAppVersion', 'New-NmeShellAppVersionCreateModel', 'New-NmeShellAppVersionFileCreateModel', 'New-NmeShellAppVersionFileOptionCreateModel', 'New-NmeShellAppVersionStringOptionCreateModel', 'New-NmeShellAppVersionUpdateModel', 'New-NmeTempVmIdModel', 'New-NmeTempVmModel', 'New-NmeTimeIntervalModel', 'New-NmeTimeRangeModel', 'New-NmeUserCostAttributionConfiguration', 'New-NmeUserCostAttributionConfigurationCreateModel', 'New-NmeUserCostAttributionConfigurationUpdateModel', 'New-NmeUserDrivenConfigurationModel', 'New-NmeUserDrivenPreStageHostsConfigurationItemModel', 'New-NmeUserDrivenPreStageHostsConfigurationModel', 'New-NmeUserSelfServiceScriptedActionModel', 'New-NmeUserSelfServiceTagModel', 'New-NmeUserSessionActionModel', 'New-NmeUserSessionActionParamsModel', 'New-NmeVmCustomScriptRunModel', 'New-NmeVmObjectIdModel', 'New-NmeVmsAssociateModel', 'New-NmeVmSecurityProfileModel', 'New-NmeVmTemplateParamsModel', 'New-NmeWarningMessageSettingsModel', 'New-NmeWatermarkingPropertiesModel', 'New-NmeWorkingHoursModel', 'New-NmeWorkingHoursScaleInPolicyModel', 'New-NmeWorkspace', 'New-NmeWorkspaceCreateModel', 'New-NmeWvdObjectIdModel', 'Remove-NmeAppManagementAppGroup', 'Remove-NmeAppManagementOnetimePolicy', 'Remove-NmeAppManagementRecurrentPolicy', 'Remove-NmeAutoScaleProfile', 'Remove-NmeAutoScaleProfileAssignment', 'Remove-NmeDesktopImageRunScriptSchedule', 'Remove-NmeEntraIdTenant', 'Remove-NmeFsLogixProfile', 'Remove-NmeHostPool', 'Remove-NmeHostPoolRdpProfile', 'Remove-NmeHostPoolScriptedAction', 'Remove-NmeHostPoolScriptedActionProfile', 'Remove-NmeHostPoolVMDeploymentProfile', 'Remove-NmeLinkedCapacityReservationGroup', 'Remove-NmeLinkedDedicatedHostGroup', 'Remove-NmeLinkedFileShare', 'Remove-NmeLinkedNetwork', 'Remove-NmeLinkedProximityPlacementGroup', 'Remove-NmeLinkedResourceGroup', 'Remove-NmeLinkedSigningCertificate', 'Remove-NmeNotificationAction', 'Remove-NmeNotificationCondition', 'Remove-NmePortalNotification', 'Remove-NmeRunbookScriptedActionsSchedule', 'Remove-NmeScriptedAction', 'Remove-NmeScriptedActionsGroup', 'Remove-NmeSecureVariable', 'Remove-NmeSessionHost', 'Remove-NmeShellApp', 'Remove-NmeShellAppVersion', 'Remove-NmeUserCostAttributionConfiguration', 'Remove-NmeWorkspace', 'Set-NmeAutoScaleProfileAssignment', 'Set-NmeDesktopImageRunScriptSchedule', 'Set-NmeFileShareAutoscale', 'Set-NmeHostPoolActiveDirectoryConfiguration', 'Set-NmeHostPoolAutoScale', 'Set-NmeHostPoolFsLogixConfiguration', 'Set-NmeHostPoolReimageSchedule', 'Set-NmeHostPoolRunScriptSchedule', 'Set-NmeHostPoolSessionTimeout', 'Set-NmeHostPoolTag', 'Set-NmeImageVersionGeoDistribution', 'Set-NmeNetAppFilesAutoscale', 'Set-NmePersonalSessionHostPowerState', 'Set-NmePortalNotification', 'Set-NmeRbacAssignment', 'Set-NmeRunbookScriptedActionsSchedule', 'Set-NmeSessionHostPowerState', 'Test-Nme', 'Update-NmeAppAttachImage', 'Update-NmeAppManagementAppGroup', 'Update-NmeAppManagementRecurrentPolicy', 'Update-NmeAutoScaleProfile', 'Update-NmeCloudPcAlertCondition', 'Update-NmeConsoleConnectRegion', 'Update-NmeEntraIdTenant', 'Update-NmeFileShareAutoscaleStatus', 'Update-NmeFsLogixProfile', 'Update-NmeHostPoolAutoScale', 'Update-NmeHostPoolAutoscaleProfile', 'Update-NmeHostPoolAvdProperty', 'Update-NmeHostPoolBackupProperty', 'Update-NmeHostPoolConsoleConnectProperty', 'Update-NmeHostPoolControlUpProperty', 'Update-NmeHostPoolRdpProfile', 'Update-NmeHostPoolRdpProperty', 'Update-NmeHostPoolScriptedAction', 'Update-NmeHostPoolScriptedActionProfile', 'Update-NmeHostPoolUsageTrackingProperty', 'Update-NmeHostPoolUserSelfServiceProperty', 'Update-NmeHostPoolVMDeploymentProfile', 'Update-NmeHostPoolVMDeploymentProperty', 'Update-NmeIntuneAlertCondition', 'Update-NmeLinkedSigningCertificate', 'Update-NmeLinkedSubscription', 'Update-NmeLogo', 'Update-NmeNetAppFilesAutoscaleStatus', 'Update-NmeNotificationAction', 'Update-NmeNotificationCondition', 'Update-NmeScriptedAction', 'Update-NmeScriptedActionsGroup', 'Update-NmeSecureVariable', 'Update-NmeShellApp', 'Update-NmeShellAppVersion', 'Update-NmeUserCostAttributionConfiguration'
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
# MIIvWQYJKoZIhvcNAQcCoIIvSjCCL0YCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAc1oUrqN6qdiNM
# Z4rH4+2HCowLAe0VAHwcMTChDq0LcKCCFAUwggWQMIIDeKADAgECAhAFmxtXno4h
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
# Ymvvxj8r7PzbSci8A4e6MYIaqjCCGqYCAQEwfTBpMQswCQYDVQQGEwJVUzEXMBUG
# A1UEChMORGlnaUNlcnQsIEluYy4xQTA/BgNVBAMTOERpZ2lDZXJ0IFRydXN0ZWQg
# RzQgQ29kZSBTaWduaW5nIFJTQTQwOTYgU0hBMzg0IDIwMjEgQ0ExAhALDOX/BzyG
# PKP6JnAWOAwdMA0GCWCGSAFlAwQCAQUAoIGEMBgGCisGAQQBgjcCAQwxCjAIoAKA
# AKECgAAwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEO
# MAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIGOMQISz53noKiZKY0i3A6Qs
# XhsOUULRbOeKongaNjX5MA0GCSqGSIb3DQEBAQUABIICAEhK+XamA3IMcQrAoVu2
# nDNZ970GtKhJlw9C9/K/C5ZEhshu8yNRf053fHfJmt+g+xY1vgcoL1xXp2PCgO9U
# qE8He4ggVJaaIMZnP1rAR2QzV1fcgrNJmaaBVOZOASFHE/z5Tgizb1PYQs7GQF77
# q2KQXpU7DoSS61cGR90SOH5FLqSsF7KzxIwiZlLJ8LLPMc0KRqS1T1xitUKEkiY2
# I63dUU0uElC5ItawCT8pDbC6XTCRzfL/4Hg/mf9ErPvS6GZStO+Ixgn7+pi6P4Fn
# yFooUWTGJK46BKdaftzCG7QnopdHn7em/HR3m5/utPsE4LPyu+lz9qdblGkT9KSd
# cJIBki0g3783pcujGjaWl6V0SnDvwdWuC2FRVAeJ09wiw5m6s97bJHunYBZodwxT
# brNe2QcCgvjkZYl9Wdl57aiDZ0YGJaqzJv7qWvfWKSlys7MQPbYwY4E+2EjzkEOh
# IQn1/JjyIIqaf3/+OdromtKoqtQxOUGb9C5ypa3NPpF6/pR5G8l3GDXHJBxeqesG
# Z66JLuypHrGFdir2jLgTWJkUcGM8WMN19IGJD53TGFiz3oGHa2XASebItIRkHpQL
# p+5WR5DVu3o0fA89tRJ1XpA5iSYAkxtIC866Sck+PLpNmVIiUVECMfWlq/Uo7dNs
# EbdngeLKzL6vPXweW0j7/xjMoYIXdzCCF3MGCisGAQQBgjcDAwExghdjMIIXXwYJ
# KoZIhvcNAQcCoIIXUDCCF0wCAQMxDzANBglghkgBZQMEAgEFADB4BgsqhkiG9w0B
# CRABBKBpBGcwZQIBAQYJYIZIAYb9bAcBMDEwDQYJYIZIAWUDBAIBBQAEII2EK++N
# NMBvbMPNC16T1PG5rRi7lAI/qS6zpPakqCapAhEAuYelJMJ3b+ihfP7gFVPjNxgP
# MjAyNjExMTgxMTA5MzFaoIITOjCCBu0wggTVoAMCAQICEAhP3DNPfkVO28MPj/mS
# GDUwDQYJKoZIhvcNAQELBQAwaTELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDkRpZ2lD
# ZXJ0LCBJbmMuMUEwPwYDVQQDEzhEaWdpQ2VydCBUcnVzdGVkIEc0IFRpbWVTdGFt
# cGluZyBSU0E0MDk2IFNIQTI1NiAyMDI1IENBMTAeFw0yNjA4MDUwMDAwMDBaFw0z
# NzExMDQyMzU5NTlaMGMxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwg
# SW5jLjE7MDkGA1UEAxMyRGlnaUNlcnQgU0hBMjU2IFJTQTQwOTYgVGltZXN0YW1w
# IFJlc3BvbmRlciAyMDI2IDEwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoIC
# AQC2e6byyf7NSvjUm0xls/04xjD4fAkOkbnGQi7+Wpx81iYxfzViaxSIctuH3KSl
# 5YEYpMuFgGsA31N2D9ATMbfZdw5uaAhuWevQKhDdZIB4NnqcfpfpWQXJiQnDdAEl
# ETC+bhSEvNLGbA8DtwUpFMQ4yyYQSPqomT92osQAv6hBi47ATZS6JfVWe6XxhF4j
# JZ3iSAuf2Cros1czRSmWRHqMv9AfGZvp8ygYElhudpQjtcPpwoOl6QrZJUyV3iIN
# vN4cO05prGV0fkjG426xDr2d3z9lcSIHkdvGPdGUrXdxfVbgOUVcp2/8ISEzwKPW
# ++Wa+E2ujI91EZtukGWDJ/xZ27k3oHKEXBRGfRTqjOU+jE3ba/5++JSE/7oNHnjs
# 5mekExYN96LV/mxUbCKJb8pBNY4r3uD7hEmk/M81XhVgwDA7aMzYC3LZBg9WY5BM
# mbSay5ecmtJuXaB/0nKWmQmVZeqTVDgsmzHP5MQuhAJkiWNuC9MmCg9TZHXbJ2/y
# LVSov9p16UDTLtT0+aa1vN71fHeu1qMLlLNB3WOB/ADCxr3S/1hxI92Z6jKgEED/
# btwIvbfuXkNNhg8MtDg43c4tMZae9FvqMOt/9PvmAxF9TNIsIFB8G6yb36ZJZGUL
# 8N/pL971DyLXcK6HM5PYnH5X+eVtczhCgHCVQCF6XDAlPQIDAQABo4IBlTCCAZEw
# DAYDVR0TAQH/BAIwADAdBgNVHQ4EFgQUFMljijAu1Er7bpTz5uNAfvXszeIwHwYD
# VR0jBBgwFoAU729TSunkBnx6yuKQVvYv1Ensy04wDgYDVR0PAQH/BAQDAgeAMBYG
# A1UdJQEB/wQMMAoGCCsGAQUFBwMIMIGVBggrBgEFBQcBAQSBiDCBhTAkBggrBgEF
# BQcwAYYYaHR0cDovL29jc3AuZGlnaWNlcnQuY29tMF0GCCsGAQUFBzAChlFodHRw
# Oi8vY2FjZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkRzRUaW1lU3Rh
# bXBpbmdSU0E0MDk2U0hBMjU2MjAyNUNBMS5jcnQwXwYDVR0fBFgwVjBUoFKgUIZO
# aHR0cDovL2NybDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0VHJ1c3RlZEc0VGltZVN0
# YW1waW5nUlNBNDA5NlNIQTI1NjIwMjVDQTEuY3JsMCAGA1UdIAQZMBcwCAYGZ4EM
# AQQCMAsGCWCGSAGG/WwHATANBgkqhkiG9w0BAQsFAAOCAgEAjcU6YR6dUgrfmawJ
# gH59KECxa9Ji8sEi2g10CBDaMiqsaxWyW5cwlT/6ZF5sFznazqVsoC85U9dqLOYq
# Qwst+UQQoNlDHgKRLa3xoc+OReFreFhnTXSG0Vrd2E2CZqUfm+5a+He1MJ/h+tNL
# uA+0Zzhn/Fo+FDYAHWZHx4R79ZsfRFYe9UiXpXBDf6DkUo183Y38NYmR/XfDYf7Y
# Z+oR9t3flbDwK+hgGMs0gNNp1w9Z2CyOyI5or/sSwomAuNQ0hWC9xoU4stD8aWsD
# 7RkcmgVRs6vlIk3zPKQ+ylcheWkMlj+CoVRlFE55pv0ZWCaFt04lwP/rdGHE9qEV
# QZtyRE42ox7oNgC/r+Y4bSlZ3dw9K2x1xLtu6PkPKeLBFjzKigwfqm3Hm+k/+lnM
# E8F5kPZTgiy2HLEHklpryqs6QHnPXrRNeIzkAMyylnRN8P0wmirS0WkU+ywpEWFZ
# 4QNg+9xS43tTuW9x0eXh7NDc1P/sV+zWxHXKH8tFt1ncHdVzqrZaYPyYMLSn2TOX
# ajveJW1L3joiQSPsWRGxkbDDW15jERFE4LvjnGu2O9zD1nLJSMdlYZEikl4w2w+q
# 4IN/R+TIe0H4ngCI1moJCTbevGH4punIxM1Uoi0nmX3ZK+XbRT01uowE5ViXWHng
# 0RgsmrX/EdYUo80r3TfMlkD0/YMwgga0MIIEnKADAgECAhANx6xXBf8hmS5AQyIM
# OkmGMA0GCSqGSIb3DQEBCwUAMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdp
# Q2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERp
# Z2lDZXJ0IFRydXN0ZWQgUm9vdCBHNDAeFw0yNTA1MDcwMDAwMDBaFw0zODAxMTQy
# MzU5NTlaMGkxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjFB
# MD8GA1UEAxM4RGlnaUNlcnQgVHJ1c3RlZCBHNCBUaW1lU3RhbXBpbmcgUlNBNDA5
# NiBTSEEyNTYgMjAyNSBDQTEwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoIC
# AQC0eDHTCphBcr48RsAcrHXbo0ZodLRRF51NrY0NlLWZloMsVO1DahGPNRcybEKq
# +RuwOnPhof6pvF4uGjwjqNjfEvUi6wuim5bap+0lgloM2zX4kftn5B1IpYzTqpyF
# Q/4Bt0mAxAHeHYNnQxqXmRinvuNgxVBdJkf77S2uPoCj7GH8BLuxBG5AvftBdsOE
# CS1UkxBvMgEdgkFiDNYiOTx4OtiFcMSkqTtF2hfQz3zQSku2Ws3IfDReb6e3mmdg
# lTcaarps0wjUjsZvkgFkriK9tUKJm/s80FiocSk1VYLZlDwFt+cVFBURJg6zMUjZ
# a/zbCclF83bRVFLeGkuAhHiGPMvSGmhgaTzVyhYn4p0+8y9oHRaQT/aofEnS5xLr
# fxnGpTXiUOeSLsJygoLPp66bkDX1ZlAeSpQl92QOMeRxykvq6gbylsXQskBBBnGy
# 3tW/AMOMCZIVNSaz7BX8VtYGqLt9MmeOreGPRdtBx3yGOP+rx3rKWDEJlIqLXvJW
# nY0v5ydPpOjL6s36czwzsucuoKs7Yk/ehb//Wx+5kMqIMRvUBDx6z1ev+7psNOdg
# JMoiwOrUG2ZdSoQbU2rMkpLiQ6bGRinZbI4OLu9BMIFm1UUl9VnePs6BaaeEWvjJ
# SjNm2qA+sdFUeEY0qVjPKOWug/G6X5uAiynM7Bu2ayBjUwIDAQABo4IBXTCCAVkw
# EgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQU729TSunkBnx6yuKQVvYv1Ens
# y04wHwYDVR0jBBgwFoAU7NfjgtJxXWRM3y5nP+e6mK4cD08wDgYDVR0PAQH/BAQD
# AgGGMBMGA1UdJQQMMAoGCCsGAQUFBwMIMHcGCCsGAQUFBwEBBGswaTAkBggrBgEF
# BQcwAYYYaHR0cDovL29jc3AuZGlnaWNlcnQuY29tMEEGCCsGAQUFBzAChjVodHRw
# Oi8vY2FjZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkUm9vdEc0LmNy
# dDBDBgNVHR8EPDA6MDigNqA0hjJodHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGln
# aUNlcnRUcnVzdGVkUm9vdEc0LmNybDAgBgNVHSAEGTAXMAgGBmeBDAEEAjALBglg
# hkgBhv1sBwEwDQYJKoZIhvcNAQELBQADggIBABfO+xaAHP4HPRF2cTC9vgvItTSm
# f83Qh8WIGjB/T8ObXAZz8OjuhUxjaaFdleMM0lBryPTQM2qEJPe36zwbSI/mS83a
# fsl3YTj+IQhQE7jU/kXjjytJgnn0hvrV6hqWGd3rLAUt6vJy9lMDPjTLxLgXf9r5
# nWMQwr8Myb9rEVKChHyfpzee5kH0F8HABBgr0UdqirZ7bowe9Vj2AIMD8liyrukZ
# 2iA/wdG2th9y1IsA0QF8dTXqvcnTmpfeQh35k5zOCPmSNq1UH410ANVko43+Cdmu
# 4y81hjajV/gxdEkMx1NKU4uHQcKfZxAvBAKqMVuqte69M9J6A47OvgRaPs+2ykgc
# GV00TYr2Lr3ty9qIijanrUR3anzEwlvzZiiyfTPjLbnFRsjsYg39OlV8cipDoq7+
# qNNjqFzeGxcytL5TTLL4ZaoBdqbhOhZ3ZRDUphPvSRmMThi0vw9vODRzW6AxnJll
# 38F0cuJG7uEBYTptMSbhdhGQDpOXgpIUsWTjd6xpR6oaQf/DJbg3s6KCLPAlZ66R
# zIg9sC+NJpud/v4+7RWsWCiKi9EOLLHfMR2ZyJ/+xhCx9yHbxtl5TPau1j/1MIDp
# MPx0LckTetiSuEtQvLsNz3Qbp7wGWqbIiOWCnb5WqxL3/BAPvIXKUjPSxyZsq8Wh
# baM2tszWkPZPubdcMIIFjTCCBHWgAwIBAgIQDpsYjvnQLefv21DiCEAYWjANBgkq
# hkiG9w0BAQwFADBlMQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5j
# MRkwFwYDVQQLExB3d3cuZGlnaWNlcnQuY29tMSQwIgYDVQQDExtEaWdpQ2VydCBB
# c3N1cmVkIElEIFJvb3QgQ0EwHhcNMjIwODAxMDAwMDAwWhcNMzExMTA5MjM1OTU5
# WjBiMQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQL
# ExB3d3cuZGlnaWNlcnQuY29tMSEwHwYDVQQDExhEaWdpQ2VydCBUcnVzdGVkIFJv
# b3QgRzQwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQC/5pBzaN675F1K
# PDAiMGkz7MKnJS7JIT3yithZwuEppz1Yq3aaza57G4QNxDAf8xukOBbrVsaXbR2r
# snnyyhHS5F/WBTxSD1Ifxp4VpX6+n6lXFllVcq9ok3DCsrp1mWpzMpTREEQQLt+C
# 8weE5nQ7bXHiLQwb7iDVySAdYyktzuxeTsiT+CFhmzTrBcZe7FsavOvJz82sNEBf
# sXpm7nfISKhmV1efVFiODCu3T6cw2Vbuyntd463JT17lNecxy9qTXtyOj4DatpGY
# QJB5w3jHtrHEtWoYOAMQjdjUN6QuBX2I9YI+EJFwq1WCQTLX2wRzKm6RAXwhTNS8
# rhsDdV14Ztk6MUSaM0C/CNdaSaTC5qmgZ92kJ7yhTzm1EVgX9yRcRo9k98FpiHaY
# dj1ZXUJ2h4mXaXpI8OCiEhtmmnTK3kse5w5jrubU75KSOp493ADkRSWJtppEGSt+
# wJS00mFt6zPZxd9LBADMfRyVw4/3IbKyEbe7f/LVjHAsQWCqsWMYRJUadmJ+9oCw
# ++hkpjPRiQfhvbfmQ6QYuKZ3AeEPlAwhHbJUKSWJbOUOUlFHdL4mrLZBdd56rF+N
# P8m800ERElvlEFDrMcXKchYiCd98THU/Y+whX8QgUWtvsauGi0/C1kVfnSD8oR7F
# wI+isX4KJpn15GkvmB0t9dmpsh3lGwIDAQABo4IBOjCCATYwDwYDVR0TAQH/BAUw
# AwEB/zAdBgNVHQ4EFgQU7NfjgtJxXWRM3y5nP+e6mK4cD08wHwYDVR0jBBgwFoAU
# Reuir/SSy4IxLVGLp6chnfNtyA8wDgYDVR0PAQH/BAQDAgGGMHkGCCsGAQUFBwEB
# BG0wazAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGlnaWNlcnQuY29tMEMGCCsG
# AQUFBzAChjdodHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRBc3N1
# cmVkSURSb290Q0EuY3J0MEUGA1UdHwQ+MDwwOqA4oDaGNGh0dHA6Ly9jcmwzLmRp
# Z2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcmwwEQYDVR0gBAow
# CDAGBgRVHSAAMA0GCSqGSIb3DQEBDAUAA4IBAQBwoL9DXFXnOF+go3QbPbYW1/e/
# Vwe9mqyhhyzshV6pGrsi+IcaaVQi7aSId229GhT0E0p6Ly23OO/0/4C5+KH38nLe
# JLxSA8hO0Cre+i1Wz/n096wwepqLsl7Uz9FDRJtDIeuWcqFItJnLnU+nBgMTdydE
# 1Od/6Fmo8L8vC6bp8jQ87PcDx4eo0kxAGTVGamlUsLihVo7spNU96LHc/RzY9Hda
# XFSMb++hUD38dglohJ9vytsgjTVgHAIDyyCwrFigDkBjxZgiwbJZ9VVrzyerbHbO
# byMt9H5xaiNrIv8SuFQtJ37YOtnwtoeW/VvRXKwYw02fc7cBqZ9Xql4o4rmUMYID
# fDCCA3gCAQEwfTBpMQswCQYDVQQGEwJVUzEXMBUGA1UEChMORGlnaUNlcnQsIElu
# Yy4xQTA/BgNVBAMTOERpZ2lDZXJ0IFRydXN0ZWQgRzQgVGltZVN0YW1waW5nIFJT
# QTQwOTYgU0hBMjU2IDIwMjUgQ0ExAhAIT9wzT35FTtvDD4/5khg1MA0GCWCGSAFl
# AwQCAQUAoIHRMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRABBDAcBgkqhkiG9w0B
# CQUxDxcNMjYxMTE4MTEwOTMxWjArBgsqhkiG9w0BCRACDDEcMBowGDAWBBRR2ava
# A0lz2E9CZqykgkjms2nEOTAvBgkqhkiG9w0BCQQxIgQghWBJ7j0EKZiSKn94FnhM
# ojWC/TIbpgIdwrTth4lNkpkwNwYLKoZIhvcNAQkQAi8xKDAmMCQwIgQgLaCdp/QT
# H5/nLbbF5unJZWdVrwQ/HqdCzA0hIOFB6/wwDQYJKoZIhvcNAQEBBQAEggIAfGbb
# jYMlNb53ozqoDo69/QYQ4X6u8EcB/3IBOKuvB5mjoPCIWQdDuP0CW2EYqu62dA1S
# /Jbq2Hf+N37r+5Os9BMzAFifai+3OoUeBWvL0Ru2MwX4sLIwD+RYPDzjmeMZ7say
# +59cuxQUQm482AfYDDjddD6nZeihPAyCOLIPLgUI+0Pj1BKXCDnbq6yX3X2ul0nf
# Xa19LH4DQbfJh7z0wcFTGuvAb8kpcQ6of0YNg6oC1s3jjb2vCNUepqnT1tZ0uq86
# GsdA4d5ug/X3gPXQent4g86bzy5kGTvMWWnWAf6mqE8o7TBJUsEZL9HwYrZtu6ul
# uZGnf0+NlTObp1K2V8qkBPnSqGA8UVxImu9H5OTQfv9bbYcPOyztTIrEQRxZ4Q/x
# slPgx8fRM3Qrb+VFpFt/1KernZ6ZAtldxXiUQGiv7X1aAoT3DHKlcachhbV+Tcgl
# 9gvFwkM/wCLwH2tkJ2VyIz1pPGTAuEjZNo3Sxs96R36M86mXLEEfQEYFo50rKomT
# hw5WIh2l3YV0uSryVfaWukQR2bFAC3+Tpeji/Y2hddswc7EJiG0Nt121KNXUwJZ1
# 9uMaC7chDDMfgx7tVR3hYEKnGDUL69tU1S9Ir+543ZvJ2PBaYxAiy0+Tx9QuEAM/
# ag/TeOJGzIZ8qj/R+M00kqt8/iWLqkLkBrP0nYM=
# SIG # End signature block
