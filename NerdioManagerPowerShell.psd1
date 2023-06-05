#
# Module manifest for module 'NerdioManagerPowerShell'
#
# Generated by: Nick Wagner
#
# Generated on: 06/05/2023
#

@{

    # Script module or binary module file associated with this manifest.
    RootModule = 'NerdioManagerPowerShell.psm1'
    
    # Version number of this module.
    ModuleVersion = '0.2.8'
    
    # Supported PSEditions
    # CompatiblePSEditions = @()
    
    # ID used to uniquely identify this module
    GUID = '6b34a792-4773-4786-8711-fd3987b174cc'
    
    # Author of this module
    Author = 'Nick Wagner'
    
    # Company or vendor of this module
    CompanyName = 'Nerdio, Inc.'
    
    # Copyright statement for this module
    Copyright = '2023 Nerdio, Inc. All rights reserved'
    
    # Description of the functionality provided by this module
    Description = 'A PowerShell module for managing Nerdio Manager for Enterprise (NME)'
    
    # Minimum version of the Windows PowerShell engine required by this module
    # PowerShellVersion = ''
    
    # Name of the Windows PowerShell host required by this module
    # PowerShellHostName = ''
    
    # Minimum version of the Windows PowerShell host required by this module
    # PowerShellHostVersion = ''
    
    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''
    
    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # CLRVersion = ''
    
    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''
    
    # Modules that must be imported into the global environment prior to importing this module
    # RequiredModules = @()
    
    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()
    
    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()
    
    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()
    
    # Format files (.ps1xml) to be loaded when importing this module
    FormatsToProcess = @('Private\Formatting.format.ps1xml')
    
    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    NestedModules = @('Public\ADConfig.ps1','Public\DesktopImage.ps1','Public\HostPool.ps1','Public\Job.ps1','Public\MSIXAppAttach.ps1','Public\Networks.ps1','Public\RBACroles.ps1','Public\ResourceGroup.ps1','Public\ScriptedActions.ps1','Public\SecureVariables.ps1','Public\SessionHost.ps1','Public\Storage.ps1','Public\Subscriptions.ps1','Public\Test.ps1','Public\Usages.ps1','Public\UserSession.ps1','Public\Workspace.ps1','Public\Components\Components.ps1')
    
    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = @('Connect-Nme','Set-NmeAuthHeaders','Test-NmeApi','Get-NmeAdConfig','Get-NmeAppAttachImage','New-NmeAppAttachImage','Get-NmeAppAttachImageVersion','Get-NmeMSIXAppAttachStorageLocations','Set-NmeAppAttachImageId','New-NmeMSIXPackage','New-NmeMSIXPackageDirectUpload','New-NmeMSIXImageVersion','New-NmeMSIXImageCertificate','Remove-NmeDesktopImageScriptSchedule','Get-NmeDesktopImageScriptSchedule','New-NmeDesktopImageScriptSchedule','Get-NmeDesktopImageSetAsImageSchedule','Get-NmeDesktopImageScheduledTask','New-NmeDesktopImageSetAsImageTask','New-NmeDesktopImageCreateFromLibraryTask','Start-NmeDesktopImageScript','Remove-NmeHostPool','Get-NmeHostPool','New-NmeHostPool','Get-NmeHostPoolAutoScaleConfig','Update-NmeHostPoolAutoScaleConfig','ConvertTo-NmeDynamicHostPool','Set-NmeHostPoolAutoScaleConfig','Get-NmeHostPoolScheduledReimageJob','Get-NmeHostPoolScheduledScriptConfig','Get-NmeHostPoolADConfig','Set-NmeHostPoolADConfig','Get-NmeHostPoolFslConfig','Set-NmeHostPoolFslConfig','Get-NmeHostPoolAVDConfig','Set-NmeHostPoolAVDConfig','Get-NmeVmDeploymentConfig','Update-NmeVmDeploymentConfig','Set-NmeVmDeploymentConfig','Get-NmeHostPoolSessionTimeoutConfig','Set-NmeHostPoolSessionTimeoutConfig','Get-NmeHostPoolScheduledTasks','Get-NmeHostPoolCustomTags','Set-NmeHostPoolCustomTags','Get-NmeHostPoolRdpConfig','Set-NmeHostPoolRdpConfig','Get-NmeHostPoolUsageTracking','Set-NmeHostPoolUsageTracking','Get-NmeHostPoolBackupConfig','Set-NmeHostPoolBackupConfig','Get-NmeHostPoolSelfServiceConfig','Set-NmeHostPoolSelfServiceConfig','New-NmeHostPoolReimageTask','New-NmeHostPoolScheduleReimageTask','New-NmeHostPoolScriptTask','New-NmeHostPoolScriptedActionSchedule','New-NmeHostPoolUserAssignment','New-NmeHostPoolUserUnassignment','Get-NmeJob','Get-NmeJobTasks','Get-NmeLinkedNetworks','New-NmeLinkedNetworks','Get-NmeRbacAssignments','Get-NmeRbacRolesAssignment','Set-NmeRbacRolesAssignment','Remove-NmeLinkedResourceGroup','New-NmeLinkedResourceGroup','Get-NmeLinkedResourceGroup','Remove-NmeScriptedAction','Set-NmeScriptedAction','Remove-NmeScriptedActionSchedule','Get-NmeScriptedActionSchedule','New-NmeScriptedActionSchedule','Get-NmeScriptedActions','New-NmeScriptedActions','New-NmeRunbookScriptedAction','Remove-NmeSecureVariable','Get-NmeSecureVariable','Update-NmeSecureVariable','New-NmeSecureVariable','Set-NmeSecureVariable','Remove-NmeSessionHost','Get-NmeSessionHost','Get-NmeSessionHostByAssignedUser','Get-NmeHostPoolSessionHosts','New-NmeSessionHost','Get-NmeWorkspaceSessionHost','Start-NmeSessionHostReimageJob','Set-NmeSessionHostPowerState','Set-NmeUserSessionHostPowerState','Get-NmeAzureFilesAutoScaleConfig','Update-NmeAzureFilesAutoScaleConfig','Set-NmeAzureFilesAutoScaleConfig','Get-NmeNetAppFilesAutoScaleConfig','Update-NmeNetAppFilesAutoScaleConfig','Set-NmeNetAppFilesAutoScaleConfig','New-NmeLinkedSubscription','Get-NmeHostPoolUsage','Get-NmeWorkSpaceUsage','Get-NmeAllWorkSpaceUsage','Get-NmeHostPoolSessions','Get-NmeWorkspaceSessions','New-NmeHostPoolSessionAction','Get-NmeWorkspace','New-NmeWorkspace','New-NmeADObjectRestModel','New-NmeADObjectType','New-NmeActiveHostType','New-NmeActiveSessionsConfiguration','New-NmeAdConfigRestProperties','New-NmeAdConfigRestPropertiesWithPassword','New-NmeAdConfigTypeEnum','New-NmeAdConfiguration','New-NmeAdIdentityTypeEnum','New-NmeAppAttachImageRestModel','New-NmeAppAttachImageRestPatchRequest','New-NmeAppAttachImageRestPostRequest','New-NmeAppAttachImageVersionRestModel','New-NmeAppAttachImageVersionRestPostRequest','New-NmeArmHostPoolAssignmentRequest','New-NmeArmHostPoolPropertiesRestModel','New-NmeArmHostpool','New-NmeArmHostpoolId','New-NmeArmSession','New-NmeArmSessionHost','New-NmeArmWorkspace','New-NmeAutoHealAction','New-NmeAutoHealActionType','New-NmeAutoHealConfiguration','New-NmeAutoHealConfigurationItem','New-NmeAutoHealSessionCriteriaEnum','New-NmeAutoScaleCriteriaType','New-NmeAvailableSessionRestrictionEnum','New-NmeAvailableUserSessionsConfiguration','New-NmeAvdAgentUpdateRestModel','New-NmeAvdAgentUpdateTypeEnum','New-NmeAzureFilesAutoScaleTrigger','New-NmeAzureFilesAutoscaleConfig','New-NmeAzureFilesBasicAutoscaleConfig','New-NmeAzureFilesPreStageConfig','New-NmeAzureFilesScalingRestConfig','New-NmeAzureTypeEnum','New-NmeBulkJobParamsWithLogOffAggresiveness','New-NmeBulkJobParamsWithRestart','New-NmeBulkJobParamsWithRestartAndHosts','New-NmeCreateArmHostPoolRequest','New-NmeCreateImageFromLibraryPayload','New-NmeCreateImageFromLibraryRequest','New-NmeCreateOrUpdateSecureVariableRestPayload','New-NmeCreateScriptedActionRequest','New-NmeCreateSessionHostPayload','New-NmeCreateSessionHostRequest','New-NmeCreateWorkspaceRequest','New-NmeCredentials','New-NmeDayOfWeek','New-NmeDeleteScriptedActionRequest','New-NmeDeleteSecureVariableRestPayload','New-NmeDesktopImageScheduleRestModel','New-NmeDesktopImageSetAsImageScheduleRest','New-NmeDynamicPoolConfig','New-NmeDynamicPoolConfiguration','New-NmeEphemeralOSDiskPlacementEnum','New-NmeExecutionEnvironmentEnum','New-NmeExistingScheduleConfigurationPayloadRest','New-NmeExtensionsRestConfiguration','New-NmeFsLogixConfigType','New-NmeFsLogixRestProperties','New-NmeGalleryImageRestConfiguration','New-NmeHostChange','New-NmeHostLoadBalancingEnum','New-NmeHostPoolActiveDirectoryRestModel','New-NmeHostPoolAssignmentRestModel','New-NmeHostPoolBackupMode','New-NmeHostPoolBackupModelRest','New-NmeHostPoolEndUserRecoveryMode','New-NmeHostPoolFsLogixRestModel','New-NmeHostPoolPropertiesRestModel','New-NmeHostPoolRdpModelRest','New-NmeHostPoolScriptedActionsConfigRestModel','New-NmeHostPoolScriptedActionsRestModel','New-NmeHostPoolSessionTimeoutRestModel','New-NmeHostPoolTagsRest','New-NmeHostPoolTrackingModelRest','New-NmeHostPoolUserSelfServiceDesktopImageRest','New-NmeHostPoolUserSelfServiceModelRest','New-NmeHostPoolVmDeploymentRestModel','New-NmeHostPoolVmDeploymentRestPutRequest','New-NmeHostUsage','New-NmeHostUsageConfiguration','New-NmeHostpoolScheduleRestModel','New-NmeJob','New-NmeJobFailurePolicy','New-NmeJobRunModeEnum','New-NmeJobShortInfo','New-NmeJobStatusEnum','New-NmeJobTask','New-NmeLinkNetworkRestPayload','New-NmeLinkResourceGroupRequest','New-NmeLinkSubscriptionRestPayload','New-NmeLinkedNetworkRestModel','New-NmeLinkedResourceGroupRestModel','New-NmeLinkedStorageLocationRestModel','New-NmeLinkedSubscriptionRestModel','New-NmeLogOffAggressiveness','New-NmeMaintenanceWindowRestModel','New-NmeMinCountCreatedVmsTypeEnum','New-NmeNetAppFilesAutoScaleTrigger','New-NmeNetAppFilesAutoscaleConfig','New-NmeNetAppFilesBasicAutoscaleConfig','New-NmeNetAppFilesPreStageConfig','New-NmeNetAppFilesScalingConfig','New-NmeNetAppFilesScalingMode','New-NmeNetAppFilesWorkTimeSetModel','New-NmeNonArmHostPoolAssignmentRequest','New-NmeNonArmHostPoolUnassignmentRequest','New-NmeNonArmHostpool','New-NmeNonArmHostpoolId','New-NmeNonArmSession','New-NmeNonArmSessionHost','New-NmeParamBindingRest','New-NmePersonalAutoGrowRestConfiguration','New-NmePersonalAutoGrowUnit','New-NmePersonalAutoShrinkAction','New-NmePersonalAutoShrinkRestConfiguration','New-NmePersonalHostPoolAssignmentType','New-NmePersonalParams','New-NmePooledParams','New-NmePowerStateCommand','New-NmePowerStateCommandPayload','New-NmePowerStateCommandRequest','New-NmePreStageHostsConfigurationItem','New-NmePreStateHostsConfiguration','New-NmeQuotaUnit','New-NmeRbacAssignmentAdObjectType','New-NmeRbacAssignmentRestModel','New-NmeRbacAssignmentUpdateRestModel','New-NmeRefreshVmRestConfiguration','New-NmeReimageConcurrency','New-NmeReimageHostPayload','New-NmeReimageHostRequest','New-NmeReimageMessaging','New-NmeReimageParams','New-NmeReimagePoolPayload','New-NmeReimagePoolRequest','New-NmeReimageScheduledBulkJobParams','New-NmeRemoveSessionHostPayload','New-NmeRemoveSessionHostRequest','New-NmeResponseWithJob','New-NmeResponseWithJobAndAppAttachImageRestModel','New-NmeResponseWithJobAndArmWorkspace','New-NmeResponseWithJobAndRbacAssignmentRestModel','New-NmeResponseWithJobAndScriptedAction','New-NmeResponseWithMultipleJobs_BackwardCompatibility','New-NmeRunAzureScripedActionPayload','New-NmeRunCustomScriptOnVmRestModel','New-NmeRunHostPoolScriptRestPayload','New-NmeRunHostPoolScriptRestRequest','New-NmeRunScriptParams','New-NmeRunScriptScheduledBulkJobParams','New-NmeScaleInAggressivenessEnum','New-NmeScaleIntimeRestrictionConfiguration','New-NmeScalingModeEnum','New-NmeScheduleAzureScripedActionPayload','New-NmeScheduleConfigurationPayloadRest','New-NmeScheduleHostPoolScriptRestPayload','New-NmeScheduleRecurrenceTypeEnum','New-NmeScheduleReimagePoolRestPayload','New-NmeScheduleRunCustomScriptOnVmRestModel','New-NmeScriptExecutionMode','New-NmeScriptedAction','New-NmeScriptedActionScheduleRestModel','New-NmeSecondaryRegionConfigurationRestModel','New-NmeSecondaryRegionRestModel','New-NmeSecureVariableRestModel','New-NmeSecurityTypes','New-NmeServicePrincipalRestParams','New-NmeSessionHostParams','New-NmeSessionHostStatus','New-NmeSetAsImagePayload','New-NmeSetAsImageRequest','New-NmeSetAsImageRestConfiguration','New-NmeTaskStatusEnum','New-NmeTempVmId','New-NmeTempVmRestModel','New-NmeTimeIntervalWithTimeZone','New-NmeTimeRangeWithTimeZone','New-NmeTriggerInfo','New-NmeUpdateAutoScaleRequest','New-NmeUpdateHostPoolActiveDirectoryRestModel','New-NmeUpdateHostPoolFsLogixRestModel','New-NmeUpdateHostPoolTagsRest','New-NmeUpdateHostPoolTagsResultRest','New-NmeUploadMsixPackageRestRequest','New-NmeUsageRestModel','New-NmeUserDrivenRestConfiguration','New-NmeUserSessionAction','New-NmeUserSessionActionPayload','New-NmeUserSessionActionRequest','New-NmeVmObjectId','New-NmeVmTemplateParams','New-NmeWarningMessageSettings','New-NmeWeekNumber','New-NmeWorkingHoursScalingBehaviorEnum','New-NmeWorkspaceScopeRestModel','New-NmeWorkspaceScopeUpdateRestModel','New-NmeWvdObjectId')
    
    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport = @()
    
    # Variables to export from this module
    VariablesToExport = '*'
    
    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport = @()
    
    # DSC resources to export from this module
    # DscResourcesToExport = @()
    
    # List of all modules packaged with this module
    # ModuleList = @()
    
    # List of all files packaged with this module
    # FileList = @()
    
    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData = @{
    
        PSData = @{
    
            # Tags applied to this module. These help with module discovery in online galleries.
            # Tags = @()
    
            # A URL to the license for this module.
            # LicenseUri = ''
    
            # A URL to the main website for this project.
            # ProjectUri = ''
    
            # A URL to an icon representing this module.
            # IconUri = ''
    
            # ReleaseNotes of this module
            # ReleaseNotes = ''
    
        } # End of PSData hashtable
    
    } # End of PrivateData hashtable
    
    # HelpInfo URI of this module
    # HelpInfoURI = ''
    
    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''
    
}