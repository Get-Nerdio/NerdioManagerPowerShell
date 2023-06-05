function New-NmeADObjectRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeADObjectRestModel, for use in other Nme module commands

	.PARAMETER ObjectId

	The GUID of an Azure AD object (user, group, or service principal) to which this RBAC role is assigned

	.PARAMETER ObjectType

	string. Valid values are: User, Group

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$ObjectId,
		[Parameter(Mandatory=$true)][ValidateSet("User","Group")][string]$ObjectType
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("ObjectId")){ $PropertyHash += @{ObjectId = $ObjectId} }
	if ($PSBoundParameters.containskey("ObjectType")){ $PropertyHash += @{ObjectType = $ObjectType} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeADObjectRestModel')
	Return $ReturnObject	
}
function New-NmeActiveSessionsConfiguration {
	<#

	.SYNOPSIS

	Creates an object of type NmeActiveSessionsConfiguration, for use in other Nme module commands

	.PARAMETER ScaleOut

	An object of type NmeHostChange. Can be created using New-NmeHostChange

	.PARAMETER ScaleIn

	An object of type NmeHostChange. Can be created using New-NmeHostChange

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeHostChange"){$true} else{throw "$_ is not a NmeHostChange object. Use New-NmeHostChange to create before calling this function"}})][psobject]$ScaleOut,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeHostChange"){$true} else{throw "$_ is not a NmeHostChange object. Use New-NmeHostChange to create before calling this function"}})][psobject]$ScaleIn
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("ScaleOut")){ $PropertyHash += @{ScaleOut = $ScaleOut} }
	if ($PSBoundParameters.containskey("ScaleIn")){ $PropertyHash += @{ScaleIn = $ScaleIn} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeActiveSessionsConfiguration')
	Return $ReturnObject	
}
function New-NmeAdConfigRestProperties {
	<#

	.SYNOPSIS

	Creates an object of type NmeAdConfigRestProperties, for use in other Nme module commands

	.PARAMETER FriendlyName

	string. 

	.PARAMETER AdIdentityType

	string. Valid values are: AD, AzureAD, AzureADDS

	.PARAMETER Domain

	string. 

	.PARAMETER Username

	Username of assigned user

	.PARAMETER OrganizationUnit

	string. 

	.PARAMETER EnrollWithIntune

	boolean. Specify -EnrollWithIntune $True or -EnrollWithIntune $False. 

	#>
	[cmdletbinding()]
	Param(
		[string]$FriendlyName,
		[ValidateSet("AD","AzureAD","AzureADDS")][string]$AdIdentityType,
		[string]$Domain,
		[string]$Username,
		[string]$OrganizationUnit,
		[bool]$EnrollWithIntune
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("FriendlyName")){ $PropertyHash += @{FriendlyName = $FriendlyName} }
	if ($PSBoundParameters.containskey("AdIdentityType")){ $PropertyHash += @{AdIdentityType = $AdIdentityType} }
	if ($PSBoundParameters.containskey("Domain")){ $PropertyHash += @{Domain = $Domain} }
	if ($PSBoundParameters.containskey("Username")){ $PropertyHash += @{Username = $Username} }
	if ($PSBoundParameters.containskey("OrganizationUnit")){ $PropertyHash += @{OrganizationUnit = $OrganizationUnit} }
	if ($PSBoundParameters.containskey("EnrollWithIntune")){ $PropertyHash += @{EnrollWithIntune = $EnrollWithIntune} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeAdConfigRestProperties')
	Return $ReturnObject	
}
function New-NmeAdConfigRestPropertiesWithPassword {
	<#

	.SYNOPSIS

	Creates an object of type NmeAdConfigRestPropertiesWithPassword, for use in other Nme module commands

	.PARAMETER FriendlyName

	string. 

	.PARAMETER AdIdentityType

	string. Valid values are: AD, AzureAD, AzureADDS

	.PARAMETER Domain

	string. 

	.PARAMETER Username

	Username of assigned user

	.PARAMETER OrganizationUnit

	string. 

	.PARAMETER EnrollWithIntune

	boolean. Specify -EnrollWithIntune $True or -EnrollWithIntune $False. 

	.PARAMETER Password

	string. 

	#>
	[cmdletbinding()]
	Param(
		[string]$FriendlyName,
		[ValidateSet("AD","AzureAD","AzureADDS")][string]$AdIdentityType,
		[string]$Domain,
		[string]$Username,
		[string]$OrganizationUnit,
		[bool]$EnrollWithIntune,
		[SecureString]$Password
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("FriendlyName")){ $PropertyHash += @{FriendlyName = $FriendlyName} }
	if ($PSBoundParameters.containskey("AdIdentityType")){ $PropertyHash += @{AdIdentityType = $AdIdentityType} }
	if ($PSBoundParameters.containskey("Domain")){ $PropertyHash += @{Domain = $Domain} }
	if ($PSBoundParameters.containskey("Username")){ $PropertyHash += @{Username = $Username} }
	if ($PSBoundParameters.containskey("OrganizationUnit")){ $PropertyHash += @{OrganizationUnit = $OrganizationUnit} }
	if ($PSBoundParameters.containskey("EnrollWithIntune")){ $PropertyHash += @{EnrollWithIntune = $EnrollWithIntune} }
	if ($PSBoundParameters.containskey("Password")){ $PropertyHash += @{Password = $(ConvertFrom-SecureString -SecureString $Password -AsPlainText)} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeAdConfigRestPropertiesWithPassword')
	Return $ReturnObject	
}
function New-NmeAdConfiguration {
	<#

	.SYNOPSIS

	Creates an object of type NmeAdConfiguration, for use in other Nme module commands

	.PARAMETER FriendlyName

	string. 

	.PARAMETER AdIdentityType

	string. Valid values are: AD, AzureAD, AzureADDS

	.PARAMETER Domain

	string. 

	.PARAMETER Username

	Username of assigned user

	.PARAMETER OrganizationUnit

	string. 

	.PARAMETER EnrollWithIntune

	boolean. Specify -EnrollWithIntune $True or -EnrollWithIntune $False. 

	.PARAMETER Id

	ID of scripted Action

	.PARAMETER IsDefault

	boolean. Specify -IsDefault $True or -IsDefault $False. 

	#>
	[cmdletbinding()]
	Param(
		[string]$FriendlyName,
		[ValidateSet("AD","AzureAD","AzureADDS")][string]$AdIdentityType,
		[string]$Domain,
		[string]$Username,
		[string]$OrganizationUnit,
		[bool]$EnrollWithIntune,
		[int]$Id,
		[bool]$IsDefault
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("FriendlyName")){ $PropertyHash += @{FriendlyName = $FriendlyName} }
	if ($PSBoundParameters.containskey("AdIdentityType")){ $PropertyHash += @{AdIdentityType = $AdIdentityType} }
	if ($PSBoundParameters.containskey("Domain")){ $PropertyHash += @{Domain = $Domain} }
	if ($PSBoundParameters.containskey("Username")){ $PropertyHash += @{Username = $Username} }
	if ($PSBoundParameters.containskey("OrganizationUnit")){ $PropertyHash += @{OrganizationUnit = $OrganizationUnit} }
	if ($PSBoundParameters.containskey("EnrollWithIntune")){ $PropertyHash += @{EnrollWithIntune = $EnrollWithIntune} }
	if ($PSBoundParameters.containskey("Id")){ $PropertyHash += @{Id = $Id} }
	if ($PSBoundParameters.containskey("IsDefault")){ $PropertyHash += @{IsDefault = $IsDefault} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeAdConfiguration')
	Return $ReturnObject	
}
function New-NmeAppAttachImageRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeAppAttachImageRestModel, for use in other Nme module commands

	.PARAMETER Id

	ID of scripted Action

	.PARAMETER StorageLocationId

	string. 

	.PARAMETER CreationDate

	string. 

	.PARAMETER Name

	The name of the resource

	.PARAMETER Description

	string. 

	.PARAMETER CurrentVersion

	string. 

	#>
	[cmdletbinding()]
	Param(
		[string]$Id,
		[string]$StorageLocationId,
		[string]$CreationDate,
		[string]$Name,
		[string]$Description,
		[string]$CurrentVersion
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Id")){ $PropertyHash += @{Id = $Id} }
	if ($PSBoundParameters.containskey("StorageLocationId")){ $PropertyHash += @{StorageLocationId = $StorageLocationId} }
	if ($PSBoundParameters.containskey("CreationDate")){ $PropertyHash += @{CreationDate = $CreationDate} }
	if ($PSBoundParameters.containskey("Name")){ $PropertyHash += @{Name = $Name} }
	if ($PSBoundParameters.containskey("Description")){ $PropertyHash += @{Description = $Description} }
	if ($PSBoundParameters.containskey("CurrentVersion")){ $PropertyHash += @{CurrentVersion = $CurrentVersion} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeAppAttachImageRestModel')
	Return $ReturnObject	
}
function New-NmeAppAttachImageRestPatchRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeAppAttachImageRestPatchRequest, for use in other Nme module commands

	.PARAMETER ImageName

	string. 

	.PARAMETER Description

	string. 

	#>
	[cmdletbinding()]
	Param(
		[string]$ImageName,
		[string]$Description
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("ImageName")){ $PropertyHash += @{ImageName = $ImageName} }
	if ($PSBoundParameters.containskey("Description")){ $PropertyHash += @{Description = $Description} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeAppAttachImageRestPatchRequest')
	Return $ReturnObject	
}
function New-NmeAppAttachImageRestPostRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeAppAttachImageRestPostRequest, for use in other Nme module commands

	.PARAMETER LocationId

	string. 

	.PARAMETER ImageName

	string. 

	.PARAMETER Description

	string. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$LocationId,
		[Parameter(Mandatory=$true)][string]$ImageName,
		[string]$Description
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("LocationId")){ $PropertyHash += @{LocationId = $LocationId} }
	if ($PSBoundParameters.containskey("ImageName")){ $PropertyHash += @{ImageName = $ImageName} }
	if ($PSBoundParameters.containskey("Description")){ $PropertyHash += @{Description = $Description} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeAppAttachImageRestPostRequest')
	Return $ReturnObject	
}
function New-NmeAppAttachImageVersionRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeAppAttachImageVersionRestModel, for use in other Nme module commands

	.PARAMETER Name

	The name of the resource

	.PARAMETER Size

	integer. 

	.PARAMETER ImagePath

	string. 

	.PARAMETER CreationDate

	string. 

	#>
	[cmdletbinding()]
	Param(
		[string]$Name,
		[int]$Size,
		[string]$ImagePath,
		[string]$CreationDate
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Name")){ $PropertyHash += @{Name = $Name} }
	if ($PSBoundParameters.containskey("Size")){ $PropertyHash += @{Size = $Size} }
	if ($PSBoundParameters.containskey("ImagePath")){ $PropertyHash += @{ImagePath = $ImagePath} }
	if ($PSBoundParameters.containskey("CreationDate")){ $PropertyHash += @{CreationDate = $CreationDate} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeAppAttachImageVersionRestModel')
	Return $ReturnObject	
}
function New-NmeAppAttachImageVersionRestPostRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeAppAttachImageVersionRestPostRequest, for use in other Nme module commands

	.PARAMETER Version

	string. 

	.PARAMETER PackageLink

	string. 

	.PARAMETER Extension

	string. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$Version,
		[Parameter(Mandatory=$true)][string]$PackageLink,
		[string]$Extension
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Version")){ $PropertyHash += @{Version = $Version} }
	if ($PSBoundParameters.containskey("PackageLink")){ $PropertyHash += @{PackageLink = $PackageLink} }
	if ($PSBoundParameters.containskey("Extension")){ $PropertyHash += @{Extension = $Extension} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeAppAttachImageVersionRestPostRequest')
	Return $ReturnObject	
}
function New-NmeArmHostPoolAssignmentRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeArmHostPoolAssignmentRequest, for use in other Nme module commands

	.PARAMETER Users

	array. 

	.PARAMETER Groups

	array. 

	.PARAMETER AppGroups

	array. 

	#>
	[cmdletbinding()]
	Param(
		[string[]]$Users,
		[string[]]$Groups,
		[string[]]$AppGroups
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Users")){ $PropertyHash += @{Users = $Users} }
	if ($PSBoundParameters.containskey("Groups")){ $PropertyHash += @{Groups = $Groups} }
	if ($PSBoundParameters.containskey("AppGroups")){ $PropertyHash += @{AppGroups = $AppGroups} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeArmHostPoolAssignmentRequest')
	Return $ReturnObject	
}
function New-NmeArmHostPoolPropertiesRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeArmHostPoolPropertiesRestModel, for use in other Nme module commands

	.PARAMETER FriendlyName

	string. 

	.PARAMETER Description

	string. 

	.PARAMETER LoadBalancerType

	string. Valid values are: BreadthFirst, DepthFirst, Persistent

	.PARAMETER MaxSessionLimit

	integer. 

	.PARAMETER ValidationEnv

	boolean. Specify -ValidationEnv $True or -ValidationEnv $False. 

	.PARAMETER PowerOnPooledHosts

	boolean. Specify -PowerOnPooledHosts $True or -PowerOnPooledHosts $False. Allow end users power on host in a pooled host pool

	.PARAMETER StartVMOnConnect

	boolean. Specify -StartVMOnConnect $True or -StartVMOnConnect $False. Auto-start host on connect

	.PARAMETER AgentUpdate

	An object of type NmeAvdAgentUpdateRestModel. Can be created using New-NmeAvdAgentUpdateRestModel

	#>
	[cmdletbinding()]
	Param(
		[string]$FriendlyName,
		[string]$Description,
		[ValidateSet("BreadthFirst","DepthFirst","Persistent")][string]$LoadBalancerType,
		[int]$MaxSessionLimit,
		[bool]$ValidationEnv,
		[bool]$PowerOnPooledHosts,
		[bool]$StartVMOnConnect,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeAvdAgentUpdateRestModel"){$true} else{throw "$_ is not a NmeAvdAgentUpdateRestModel object. Use New-NmeAvdAgentUpdateRestModel to create before calling this function"}})][psobject]$AgentUpdate
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("FriendlyName")){ $PropertyHash += @{FriendlyName = $FriendlyName} }
	if ($PSBoundParameters.containskey("Description")){ $PropertyHash += @{Description = $Description} }
	if ($PSBoundParameters.containskey("LoadBalancerType")){ $PropertyHash += @{LoadBalancerType = $LoadBalancerType} }
	if ($PSBoundParameters.containskey("MaxSessionLimit")){ $PropertyHash += @{MaxSessionLimit = $MaxSessionLimit} }
	if ($PSBoundParameters.containskey("ValidationEnv")){ $PropertyHash += @{ValidationEnv = $ValidationEnv} }
	if ($PSBoundParameters.containskey("PowerOnPooledHosts")){ $PropertyHash += @{PowerOnPooledHosts = $PowerOnPooledHosts} }
	if ($PSBoundParameters.containskey("StartVMOnConnect")){ $PropertyHash += @{StartVMOnConnect = $StartVMOnConnect} }
	if ($PSBoundParameters.containskey("AgentUpdate")){ $PropertyHash += @{AgentUpdate = $AgentUpdate} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeArmHostPoolPropertiesRestModel')
	Return $ReturnObject	
}
function New-NmeArmHostpool {
	<#

	.SYNOPSIS

	Creates an object of type NmeArmHostpool, for use in other Nme module commands

	.PARAMETER DynamicPoolConfig

	An object of type NmeDynamicPoolConfig. Can be created using New-NmeDynamicPoolConfig

	.PARAMETER Id

	ID of scripted Action

	.PARAMETER SubscriptionName

	string. 

	#>
	[cmdletbinding()]
	Param(
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeDynamicPoolConfig"){$true} else{throw "$_ is not a NmeDynamicPoolConfig object. Use New-NmeDynamicPoolConfig to create before calling this function"}})][psobject]$DynamicPoolConfig,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeArmHostpoolId"){$true} else{throw "$_ is not a NmeArmHostpoolId object. Use New-NmeArmHostpoolId to create before calling this function"}})][psobject]$Id,
		[string]$SubscriptionName
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("DynamicPoolConfig")){ $PropertyHash += @{DynamicPoolConfig = $DynamicPoolConfig} }
	if ($PSBoundParameters.containskey("Id")){ $PropertyHash += @{Id = $Id} }
	if ($PSBoundParameters.containskey("SubscriptionName")){ $PropertyHash += @{SubscriptionName = $SubscriptionName} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeArmHostpool')
	Return $ReturnObject	
}
function New-NmeArmHostpoolId {
	<#

	.SYNOPSIS

	Creates an object of type NmeArmHostpoolId, for use in other Nme module commands

	.PARAMETER Subscription

	string. 

	.PARAMETER ResourceGroup

	The Azure resource group where the resource resides

	.PARAMETER HostpoolName

	The name of the Host Pool

	#>
	[cmdletbinding()]
	Param(
		[string]$Subscription,
		[string]$ResourceGroup,
		[string]$HostpoolName
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Subscription")){ $PropertyHash += @{Subscription = $Subscription} }
	if ($PSBoundParameters.containskey("ResourceGroup")){ $PropertyHash += @{ResourceGroup = $ResourceGroup} }
	if ($PSBoundParameters.containskey("HostpoolName")){ $PropertyHash += @{HostpoolName = $HostpoolName} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeArmHostpoolId')
	Return $ReturnObject	
}
function New-NmeArmSession {
	<#

	.SYNOPSIS

	Creates an object of type NmeArmSession, for use in other Nme module commands

	.PARAMETER SessionId

	The session id

	.PARAMETER SessionState

	string. 

	.PARAMETER Username

	Username of assigned user

	.PARAMETER HostName

	Name of AVD host

	.PARAMETER Hostpool

	An object of type NmeArmHostpoolId. Can be created using New-NmeArmHostpoolId

	#>
	[cmdletbinding()]
	Param(
		[string]$SessionId,
		[string]$SessionState,
		[string]$Username,
		[string]$HostName,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeArmHostpoolId"){$true} else{throw "$_ is not a NmeArmHostpoolId object. Use New-NmeArmHostpoolId to create before calling this function"}})][psobject]$Hostpool
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("SessionId")){ $PropertyHash += @{SessionId = $SessionId} }
	if ($PSBoundParameters.containskey("SessionState")){ $PropertyHash += @{SessionState = $SessionState} }
	if ($PSBoundParameters.containskey("Username")){ $PropertyHash += @{Username = $Username} }
	if ($PSBoundParameters.containskey("HostName")){ $PropertyHash += @{HostName = $HostName} }
	if ($PSBoundParameters.containskey("Hostpool")){ $PropertyHash += @{Hostpool = $Hostpool} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeArmSession')
	Return $ReturnObject	
}
function New-NmeArmSessionHost {
	<#

	.SYNOPSIS

	Creates an object of type NmeArmSessionHost, for use in other Nme module commands

	.PARAMETER HostName

	Name of AVD host

	.PARAMETER AssignedUser

	string. 

	.PARAMETER VmId

	string. 

	.PARAMETER PowerState

	string. 

	.PARAMETER Status

	string. Valid values are: Available, Unavailable, Shutdown, Disconnected, Upgrading, UpgradeFailed, NoHeartbeat, NotJoinedToDomain, DomainTrustRelationshipLost, SxSStackListenerNotReady, FSLogixNotHealthy, NeedsAssistance

	.PARAMETER Hostpool

	An object of type NmeArmHostpoolId. Can be created using New-NmeArmHostpoolId

	#>
	[cmdletbinding()]
	Param(
		[string]$HostName,
		[string]$AssignedUser,
		[string]$VmId,
		[string]$PowerState,
		[ValidateSet("Available","Unavailable","Shutdown","Disconnected","Upgrading","UpgradeFailed","NoHeartbeat","NotJoinedToDomain","DomainTrustRelationshipLost","SxSStackListenerNotReady","FSLogixNotHealthy","NeedsAssistance")][string]$Status,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeArmHostpoolId"){$true} else{throw "$_ is not a NmeArmHostpoolId object. Use New-NmeArmHostpoolId to create before calling this function"}})][psobject]$Hostpool
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("HostName")){ $PropertyHash += @{HostName = $HostName} }
	if ($PSBoundParameters.containskey("AssignedUser")){ $PropertyHash += @{AssignedUser = $AssignedUser} }
	if ($PSBoundParameters.containskey("VmId")){ $PropertyHash += @{VmId = $VmId} }
	if ($PSBoundParameters.containskey("PowerState")){ $PropertyHash += @{PowerState = $PowerState} }
	if ($PSBoundParameters.containskey("Status")){ $PropertyHash += @{Status = $Status} }
	if ($PSBoundParameters.containskey("Hostpool")){ $PropertyHash += @{Hostpool = $Hostpool} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeArmSessionHost')
	Return $ReturnObject	
}
function New-NmeArmWorkspace {
	<#

	.SYNOPSIS

	Creates an object of type NmeArmWorkspace, for use in other Nme module commands

	.PARAMETER Id

	ID of scripted Action

	.PARAMETER Location

	string. 

	.PARAMETER FriendlyName

	string. 

	.PARAMETER Description

	string. 

	#>
	[cmdletbinding()]
	Param(
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeWvdObjectId"){$true} else{throw "$_ is not a NmeWvdObjectId object. Use New-NmeWvdObjectId to create before calling this function"}})][psobject]$Id,
		[string]$Location,
		[string]$FriendlyName,
		[string]$Description
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Id")){ $PropertyHash += @{Id = $Id} }
	if ($PSBoundParameters.containskey("Location")){ $PropertyHash += @{Location = $Location} }
	if ($PSBoundParameters.containskey("FriendlyName")){ $PropertyHash += @{FriendlyName = $FriendlyName} }
	if ($PSBoundParameters.containskey("Description")){ $PropertyHash += @{Description = $Description} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeArmWorkspace')
	Return $ReturnObject	
}
function New-NmeAutoHealAction {
	<#

	.SYNOPSIS

	Creates an object of type NmeAutoHealAction, for use in other Nme module commands

	.PARAMETER Type

	string. Valid values are: RestartVm, ScriptedAction, RemoveVm

	.PARAMETER ScriptedActionId

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[ValidateSet("RestartVm","ScriptedAction","RemoveVm")][string]$Type,
		[int]$ScriptedActionId
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Type")){ $PropertyHash += @{Type = $Type} }
	if ($PSBoundParameters.containskey("ScriptedActionId")){ $PropertyHash += @{ScriptedActionId = $ScriptedActionId} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeAutoHealAction')
	Return $ReturnObject	
}
function New-NmeAutoHealConfiguration {
	<#

	.SYNOPSIS

	Creates an object of type NmeAutoHealConfiguration, for use in other Nme module commands

	.PARAMETER Enable

	boolean. Specify -Enable $True or -Enable $False. 

	.PARAMETER Config

	An object of type NmeAutoHealConfigurationItem. Can be created using New-NmeAutoHealConfigurationItem

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][bool]$Enable,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeAutoHealConfigurationItem"){$true} else{throw "$_ is not a NmeAutoHealConfigurationItem object. Use New-NmeAutoHealConfigurationItem to create before calling this function"}})][psobject]$Config
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Enable")){ $PropertyHash += @{Enable = $Enable} }
	if ($PSBoundParameters.containskey("Config")){ $PropertyHash += @{Config = $Config} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeAutoHealConfiguration')
	Return $ReturnObject	
}
function New-NmeAutoHealConfigurationItem {
	<#

	.SYNOPSIS

	Creates an object of type NmeAutoHealConfigurationItem, for use in other Nme module commands

	.PARAMETER WvdStatuses

	string. Valid values are: Available, Unavailable, Shutdown, Disconnected, Upgrading, UpgradeFailed, NoHeartbeat, NotJoinedToDomain, DomainTrustRelationshipLost, SxSStackListenerNotReady, FSLogixNotHealthy, NeedsAssistance

	.PARAMETER SessionCriteria

	string. Valid values are: WithoutSessions, WithoutActive, WithActive

	.PARAMETER StaleHeartbeatMinutes

	integer. 

	.PARAMETER RestartAttempts

	DEPRECATED

	.PARAMETER WaitMinutesBeforeFirstAction

	integer. 

	.PARAMETER WaitMinutes

	integer. 

	.PARAMETER FinalAction

	DEPRECATED

	.PARAMETER Actions

	An array of objects of type NmeAutoHealAction. Can be created using New-NmeAutoHealAction

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateSet("Available","Unavailable","Shutdown","Disconnected","Upgrading","UpgradeFailed","NoHeartbeat","NotJoinedToDomain","DomainTrustRelationshipLost","SxSStackListenerNotReady","FSLogixNotHealthy","NeedsAssistance")][String]$WvdStatuses,
		[Parameter(Mandatory=$true)][ValidateSet("WithoutSessions","WithoutActive","WithActive")][string]$SessionCriteria,
		[int]$StaleHeartbeatMinutes,
		[int]$RestartAttempts,
		[int]$WaitMinutesBeforeFirstAction,
		[Parameter(Mandatory=$true)][int]$WaitMinutes,
		[string]$FinalAction,
		[psobject[]][ValidateScript({$_.PSObject.TypeNames -contains "NmeAutoHealAction"})]$Actions
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("WvdStatuses")){ $PropertyHash += @{WvdStatuses = $WvdStatuses} }
	if ($PSBoundParameters.containskey("SessionCriteria")){ $PropertyHash += @{SessionCriteria = $SessionCriteria} }
	if ($PSBoundParameters.containskey("StaleHeartbeatMinutes")){ $PropertyHash += @{StaleHeartbeatMinutes = $StaleHeartbeatMinutes} }
	if ($PSBoundParameters.containskey("RestartAttempts")){ $PropertyHash += @{RestartAttempts = $RestartAttempts} }
	if ($PSBoundParameters.containskey("WaitMinutesBeforeFirstAction")){ $PropertyHash += @{WaitMinutesBeforeFirstAction = $WaitMinutesBeforeFirstAction} }
	if ($PSBoundParameters.containskey("WaitMinutes")){ $PropertyHash += @{WaitMinutes = $WaitMinutes} }
	if ($PSBoundParameters.containskey("FinalAction")){ $PropertyHash += @{FinalAction = $FinalAction} }
	if ($PSBoundParameters.containskey("Actions")){ $PropertyHash += @{Actions = $Actions} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeAutoHealConfigurationItem')
	Return $ReturnObject	
}
function New-NmeAvailableUserSessionsConfiguration {
	<#

	.SYNOPSIS

	Creates an object of type NmeAvailableUserSessionsConfiguration, for use in other Nme module commands

	.PARAMETER MaxSessionsPerHost

	DEPRECATED

	.PARAMETER MinAvailableUserSessions

	integer. 

	.PARAMETER MaxAvailableUserSessions

	integer. 

	.PARAMETER AvailableSessionRestriction

	string. Valid values are: Always, DuringWorkHours

	.PARAMETER OutsideWorkHoursSessions

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[int]$MaxSessionsPerHost,
		[Parameter(Mandatory=$true)][int]$MinAvailableUserSessions,
		[Parameter(Mandatory=$true)][int]$MaxAvailableUserSessions,
		[Parameter(Mandatory=$true)][ValidateSet("Always","DuringWorkHours")][string]$AvailableSessionRestriction,
		[int]$OutsideWorkHoursSessions
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("MaxSessionsPerHost")){ $PropertyHash += @{MaxSessionsPerHost = $MaxSessionsPerHost} }
	if ($PSBoundParameters.containskey("MinAvailableUserSessions")){ $PropertyHash += @{MinAvailableUserSessions = $MinAvailableUserSessions} }
	if ($PSBoundParameters.containskey("MaxAvailableUserSessions")){ $PropertyHash += @{MaxAvailableUserSessions = $MaxAvailableUserSessions} }
	if ($PSBoundParameters.containskey("AvailableSessionRestriction")){ $PropertyHash += @{AvailableSessionRestriction = $AvailableSessionRestriction} }
	if ($PSBoundParameters.containskey("OutsideWorkHoursSessions")){ $PropertyHash += @{OutsideWorkHoursSessions = $OutsideWorkHoursSessions} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeAvailableUserSessionsConfiguration')
	Return $ReturnObject	
}
function New-NmeAvdAgentUpdateRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeAvdAgentUpdateRestModel, for use in other Nme module commands

	.PARAMETER MaintenanceWindowTimeZone

	string. 

	.PARAMETER PrimaryWindow

	An object of type NmeMaintenanceWindowRestModel. Can be created using New-NmeMaintenanceWindowRestModel

	.PARAMETER SecondaryWindow

	An object of type NmeMaintenanceWindowRestModel. Can be created using New-NmeMaintenanceWindowRestModel

	.PARAMETER UseSessionHostLocalTime

	boolean. Specify -UseSessionHostLocalTime $True or -UseSessionHostLocalTime $False. 

	.PARAMETER Type

	string. Valid values are: Default, Scheduled

	.PARAMETER PowerOnHostsInMaintenanceWindow

	boolean. Specify -PowerOnHostsInMaintenanceWindow $True or -PowerOnHostsInMaintenanceWindow $False. 

	#>
	[cmdletbinding()]
	Param(
		[string]$MaintenanceWindowTimeZone,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeMaintenanceWindowRestModel"){$true} else{throw "$_ is not a NmeMaintenanceWindowRestModel object. Use New-NmeMaintenanceWindowRestModel to create before calling this function"}})][psobject]$PrimaryWindow,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeMaintenanceWindowRestModel"){$true} else{throw "$_ is not a NmeMaintenanceWindowRestModel object. Use New-NmeMaintenanceWindowRestModel to create before calling this function"}})][psobject]$SecondaryWindow,
		[bool]$UseSessionHostLocalTime,
		[ValidateSet("Default","Scheduled")][string]$Type,
		[bool]$PowerOnHostsInMaintenanceWindow
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("MaintenanceWindowTimeZone")){ $PropertyHash += @{MaintenanceWindowTimeZone = $MaintenanceWindowTimeZone} }
	if ($PSBoundParameters.containskey("PrimaryWindow")){ $PropertyHash += @{PrimaryWindow = $PrimaryWindow} }
	if ($PSBoundParameters.containskey("SecondaryWindow")){ $PropertyHash += @{SecondaryWindow = $SecondaryWindow} }
	if ($PSBoundParameters.containskey("UseSessionHostLocalTime")){ $PropertyHash += @{UseSessionHostLocalTime = $UseSessionHostLocalTime} }
	if ($PSBoundParameters.containskey("Type")){ $PropertyHash += @{Type = $Type} }
	if ($PSBoundParameters.containskey("PowerOnHostsInMaintenanceWindow")){ $PropertyHash += @{PowerOnHostsInMaintenanceWindow = $PowerOnHostsInMaintenanceWindow} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeAvdAgentUpdateRestModel')
	Return $ReturnObject	
}
function New-NmeAzureFilesAutoscaleConfig {
	<#

	.SYNOPSIS

	Creates an object of type NmeAzureFilesAutoscaleConfig, for use in other Nme module commands

	.PARAMETER IsEnabled

	boolean. Specify -IsEnabled $True or -IsEnabled $False. 

	.PARAMETER Unit

	string. Valid values are: Percent, SizeGb, SizeTb

	.PARAMETER Basic

	An object of type NmeAzureFilesBasicAutoscaleConfig. Can be created using New-NmeAzureFilesBasicAutoscaleConfig

	.PARAMETER Scaling

	An object of type NmeAzureFilesScalingRestConfig. Can be created using New-NmeAzureFilesScalingRestConfig

	.PARAMETER PreStage

	An object of type NmeAzureFilesPreStageConfig. Can be created using New-NmeAzureFilesPreStageConfig

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][bool]$IsEnabled,
		[Parameter(Mandatory=$true)][ValidateSet("Percent","SizeGb","SizeTb")][string]$Unit,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeAzureFilesBasicAutoscaleConfig"){$true} else{throw "$_ is not a NmeAzureFilesBasicAutoscaleConfig object. Use New-NmeAzureFilesBasicAutoscaleConfig to create before calling this function"}})][psobject]$Basic,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeAzureFilesScalingRestConfig"){$true} else{throw "$_ is not a NmeAzureFilesScalingRestConfig object. Use New-NmeAzureFilesScalingRestConfig to create before calling this function"}})][psobject]$Scaling,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeAzureFilesPreStageConfig"){$true} else{throw "$_ is not a NmeAzureFilesPreStageConfig object. Use New-NmeAzureFilesPreStageConfig to create before calling this function"}})][psobject]$PreStage
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("IsEnabled")){ $PropertyHash += @{IsEnabled = $IsEnabled} }
	if ($PSBoundParameters.containskey("Unit")){ $PropertyHash += @{Unit = $Unit} }
	if ($PSBoundParameters.containskey("Basic")){ $PropertyHash += @{Basic = $Basic} }
	if ($PSBoundParameters.containskey("Scaling")){ $PropertyHash += @{Scaling = $Scaling} }
	if ($PSBoundParameters.containskey("PreStage")){ $PropertyHash += @{PreStage = $PreStage} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeAzureFilesAutoscaleConfig')
	Return $ReturnObject	
}
function New-NmeAzureFilesBasicAutoscaleConfig {
	<#

	.SYNOPSIS

	Creates an object of type NmeAzureFilesBasicAutoscaleConfig, for use in other Nme module commands

	.PARAMETER MinQuotaBuffer

	integer. 

	.PARAMETER MaxQuotaBuffer

	integer. 

	.PARAMETER MaxQuotaLimitGb

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][int]$MinQuotaBuffer,
		[Parameter(Mandatory=$true)][int]$MaxQuotaBuffer,
		[Parameter(Mandatory=$true)][int]$MaxQuotaLimitGb
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("MinQuotaBuffer")){ $PropertyHash += @{MinQuotaBuffer = $MinQuotaBuffer} }
	if ($PSBoundParameters.containskey("MaxQuotaBuffer")){ $PropertyHash += @{MaxQuotaBuffer = $MaxQuotaBuffer} }
	if ($PSBoundParameters.containskey("MaxQuotaLimitGb")){ $PropertyHash += @{MaxQuotaLimitGb = $MaxQuotaLimitGb} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeAzureFilesBasicAutoscaleConfig')
	Return $ReturnObject	
}
function New-NmeAzureFilesPreStageConfig {
	<#

	.SYNOPSIS

	Creates an object of type NmeAzureFilesPreStageConfig, for use in other Nme module commands

	.PARAMETER IsEnabled

	boolean. Specify -IsEnabled $True or -IsEnabled $False. 

	.PARAMETER WorkDays

	integer. Valid values are: 0, 1, 2, 3, 4, 5, 6

	.PARAMETER TimezoneId

	string. 

	.PARAMETER QuotaBuffer

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][bool]$IsEnabled,
		[ValidateSet(0,1,2,3,4,5,6)][Int]$WorkDays,
		[string]$TimezoneId,
		[int]$QuotaBuffer
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("IsEnabled")){ $PropertyHash += @{IsEnabled = $IsEnabled} }
	if ($PSBoundParameters.containskey("WorkDays")){ $PropertyHash += @{WorkDays = $WorkDays} }
	if ($PSBoundParameters.containskey("TimezoneId")){ $PropertyHash += @{TimezoneId = $TimezoneId} }
	if ($PSBoundParameters.containskey("QuotaBuffer")){ $PropertyHash += @{QuotaBuffer = $QuotaBuffer} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeAzureFilesPreStageConfig')
	Return $ReturnObject	
}
function New-NmeAzureFilesScalingRestConfig {
	<#

	.SYNOPSIS

	Creates an object of type NmeAzureFilesScalingRestConfig, for use in other Nme module commands

	.PARAMETER Trigger

	string. Valid values are: MaxSuccessServerLatency, AvgSuccessServerLatency

	.PARAMETER ScaleOutBy

	integer. 

	.PARAMETER ScaleOutHighLatency

	integer. 

	.PARAMETER ScaleOutInterval

	integer. 

	.PARAMETER ScaleInBy

	integer. 

	.PARAMETER ScaleInLowLatency

	integer. 

	.PARAMETER ScaleInInterval

	integer. 

	.PARAMETER TransactionThreshold

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateSet("MaxSuccessServerLatency","AvgSuccessServerLatency")][string]$Trigger,
		[Parameter(Mandatory=$true)][int]$ScaleOutBy,
		[Parameter(Mandatory=$true)][int]$ScaleOutHighLatency,
		[Parameter(Mandatory=$true)][int]$ScaleOutInterval,
		[Parameter(Mandatory=$true)][int]$ScaleInBy,
		[Parameter(Mandatory=$true)][int]$ScaleInLowLatency,
		[Parameter(Mandatory=$true)][int]$ScaleInInterval,
		[Parameter(Mandatory=$true)][int]$TransactionThreshold
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Trigger")){ $PropertyHash += @{Trigger = $Trigger} }
	if ($PSBoundParameters.containskey("ScaleOutBy")){ $PropertyHash += @{ScaleOutBy = $ScaleOutBy} }
	if ($PSBoundParameters.containskey("ScaleOutHighLatency")){ $PropertyHash += @{ScaleOutHighLatency = $ScaleOutHighLatency} }
	if ($PSBoundParameters.containskey("ScaleOutInterval")){ $PropertyHash += @{ScaleOutInterval = $ScaleOutInterval} }
	if ($PSBoundParameters.containskey("ScaleInBy")){ $PropertyHash += @{ScaleInBy = $ScaleInBy} }
	if ($PSBoundParameters.containskey("ScaleInLowLatency")){ $PropertyHash += @{ScaleInLowLatency = $ScaleInLowLatency} }
	if ($PSBoundParameters.containskey("ScaleInInterval")){ $PropertyHash += @{ScaleInInterval = $ScaleInInterval} }
	if ($PSBoundParameters.containskey("TransactionThreshold")){ $PropertyHash += @{TransactionThreshold = $TransactionThreshold} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeAzureFilesScalingRestConfig')
	Return $ReturnObject	
}
function New-NmeBulkJobParamsWithLogOffAggresiveness {
	<#

	.SYNOPSIS

	Creates an object of type NmeBulkJobParamsWithLogOffAggresiveness, for use in other Nme module commands

	.PARAMETER TaskParallelism

	integer. 

	.PARAMETER CountFailedTaskToStopWork

	integer. 

	.PARAMETER MinutesBeforeRemove

	integer. 

	.PARAMETER Message

	string. 

	.PARAMETER DeactivateBeforeOperation

	boolean. Specify -DeactivateBeforeOperation $True or -DeactivateBeforeOperation $False. 

	.PARAMETER LogOffAggressiveness

	string. Valid values are: Force, Wait

	.PARAMETER GlobalTimeoutInMinutes

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][int]$TaskParallelism,
		[Parameter(Mandatory=$true)][int]$CountFailedTaskToStopWork,
		[int]$MinutesBeforeRemove,
		[string]$Message,
		[bool]$DeactivateBeforeOperation,
		[ValidateSet("Force","Wait")][string]$LogOffAggressiveness,
		[int]$GlobalTimeoutInMinutes
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("TaskParallelism")){ $PropertyHash += @{TaskParallelism = $TaskParallelism} }
	if ($PSBoundParameters.containskey("CountFailedTaskToStopWork")){ $PropertyHash += @{CountFailedTaskToStopWork = $CountFailedTaskToStopWork} }
	if ($PSBoundParameters.containskey("MinutesBeforeRemove")){ $PropertyHash += @{MinutesBeforeRemove = $MinutesBeforeRemove} }
	if ($PSBoundParameters.containskey("Message")){ $PropertyHash += @{Message = $Message} }
	if ($PSBoundParameters.containskey("DeactivateBeforeOperation")){ $PropertyHash += @{DeactivateBeforeOperation = $DeactivateBeforeOperation} }
	if ($PSBoundParameters.containskey("LogOffAggressiveness")){ $PropertyHash += @{LogOffAggressiveness = $LogOffAggressiveness} }
	if ($PSBoundParameters.containskey("GlobalTimeoutInMinutes")){ $PropertyHash += @{GlobalTimeoutInMinutes = $GlobalTimeoutInMinutes} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeBulkJobParamsWithLogOffAggresiveness')
	Return $ReturnObject	
}
function New-NmeBulkJobParamsWithRestart {
	<#

	.SYNOPSIS

	Creates an object of type NmeBulkJobParamsWithRestart, for use in other Nme module commands

	.PARAMETER TaskParallelism

	integer. 

	.PARAMETER CountFailedTaskToStopWork

	integer. 

	.PARAMETER MinutesBeforeRemove

	integer. 

	.PARAMETER Message

	string. 

	.PARAMETER RestartVms

	boolean. Specify -RestartVms $True or -RestartVms $False. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][int]$TaskParallelism,
		[Parameter(Mandatory=$true)][int]$CountFailedTaskToStopWork,
		[int]$MinutesBeforeRemove,
		[string]$Message,
		[bool]$RestartVms
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("TaskParallelism")){ $PropertyHash += @{TaskParallelism = $TaskParallelism} }
	if ($PSBoundParameters.containskey("CountFailedTaskToStopWork")){ $PropertyHash += @{CountFailedTaskToStopWork = $CountFailedTaskToStopWork} }
	if ($PSBoundParameters.containskey("MinutesBeforeRemove")){ $PropertyHash += @{MinutesBeforeRemove = $MinutesBeforeRemove} }
	if ($PSBoundParameters.containskey("Message")){ $PropertyHash += @{Message = $Message} }
	if ($PSBoundParameters.containskey("RestartVms")){ $PropertyHash += @{RestartVms = $RestartVms} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeBulkJobParamsWithRestart')
	Return $ReturnObject	
}
function New-NmeBulkJobParamsWithRestartAndHosts {
	<#

	.SYNOPSIS

	Creates an object of type NmeBulkJobParamsWithRestartAndHosts, for use in other Nme module commands

	.PARAMETER TaskParallelism

	integer. 

	.PARAMETER CountFailedTaskToStopWork

	integer. 

	.PARAMETER MinutesBeforeRemove

	integer. 

	.PARAMETER Message

	string. 

	.PARAMETER RestartVms

	boolean. Specify -RestartVms $True or -RestartVms $False. 

	.PARAMETER SessionHostsToProcessNames

	array. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][int]$TaskParallelism,
		[Parameter(Mandatory=$true)][int]$CountFailedTaskToStopWork,
		[int]$MinutesBeforeRemove,
		[string]$Message,
		[bool]$RestartVms,
		[string[]]$SessionHostsToProcessNames
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("TaskParallelism")){ $PropertyHash += @{TaskParallelism = $TaskParallelism} }
	if ($PSBoundParameters.containskey("CountFailedTaskToStopWork")){ $PropertyHash += @{CountFailedTaskToStopWork = $CountFailedTaskToStopWork} }
	if ($PSBoundParameters.containskey("MinutesBeforeRemove")){ $PropertyHash += @{MinutesBeforeRemove = $MinutesBeforeRemove} }
	if ($PSBoundParameters.containskey("Message")){ $PropertyHash += @{Message = $Message} }
	if ($PSBoundParameters.containskey("RestartVms")){ $PropertyHash += @{RestartVms = $RestartVms} }
	if ($PSBoundParameters.containskey("SessionHostsToProcessNames")){ $PropertyHash += @{SessionHostsToProcessNames = $SessionHostsToProcessNames} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeBulkJobParamsWithRestartAndHosts')
	Return $ReturnObject	
}
function New-NmeCreateArmHostPoolRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeCreateArmHostPoolRequest, for use in other Nme module commands

	.PARAMETER WorkspaceId

	Azure resource ID of AVD workspace. E.g.: /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/your-resource-group-name/providers/Microsoft.DesktopVirtualization/workspaces/your-workspace-name

	.PARAMETER PooledParams

	An object of type NmePooledParams. Can be created using New-NmePooledParams

	.PARAMETER PersonalParams

	An object of type NmePersonalParams. Can be created using New-NmePersonalParams

	.PARAMETER Description

	string. 

	.PARAMETER Tags

	object. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeWvdObjectId"){$true} else{throw "$_ is not a NmeWvdObjectId object. Use New-NmeWvdObjectId to create before calling this function"}})][psobject]$WorkspaceId,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmePooledParams"){$true} else{throw "$_ is not a NmePooledParams object. Use New-NmePooledParams to create before calling this function"}})][psobject]$PooledParams,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmePersonalParams"){$true} else{throw "$_ is not a NmePersonalParams object. Use New-NmePersonalParams to create before calling this function"}})][psobject]$PersonalParams,
		[string]$Description,
		[hashtable]$Tags
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("WorkspaceId")){ $PropertyHash += @{WorkspaceId = $WorkspaceId} }
	if ($PSBoundParameters.containskey("PooledParams")){ $PropertyHash += @{PooledParams = $PooledParams} }
	if ($PSBoundParameters.containskey("PersonalParams")){ $PropertyHash += @{PersonalParams = $PersonalParams} }
	if ($PSBoundParameters.containskey("Description")){ $PropertyHash += @{Description = $Description} }
	if ($PSBoundParameters.containskey("Tags")){ $PropertyHash += @{Tags = $Tags} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeCreateArmHostPoolRequest')
	Return $ReturnObject	
}
function New-NmeCreateImageFromLibraryPayload {
	<#

	.SYNOPSIS

	Creates an object of type NmeCreateImageFromLibraryPayload, for use in other Nme module commands

	.PARAMETER ImageId

	GUID of App Attach Image

	.PARAMETER SourceImageId

	string. 

	.PARAMETER VmSize

	string. 

	.PARAMETER StorageType

	string. 

	.PARAMETER DiskSize

	integer. 

	.PARAMETER NetworkId

	string. 

	.PARAMETER Subnet

	string. 

	.PARAMETER AdConfigId

	integer. 

	.PARAMETER LocalAdminCredentials

	An object of type NmeCredentials. Can be created using New-NmeCredentials

	.PARAMETER Description

	string. 

	.PARAMETER NoImageObjectRequired

	boolean. Specify -NoImageObjectRequired $True or -NoImageObjectRequired $False. 

	.PARAMETER EnableTimezoneRedirection

	boolean. Specify -EnableTimezoneRedirection $True or -EnableTimezoneRedirection $False. 

	.PARAMETER VmTimezone

	string. 

	.PARAMETER ScriptedActionsIds

	Array of integers, listed under the ID column in Nerdio Manager Scripted Actions. Can be retrieved by running Get-NmeScriptedActions

	.PARAMETER SkipRemoveProfiles

	boolean. Specify -SkipRemoveProfiles $True or -SkipRemoveProfiles $False. 

	.PARAMETER Tags

	object. 

	.PARAMETER UseTrustedLaunch

	boolean. Specify -UseTrustedLaunch $True or -UseTrustedLaunch $False. 

	.PARAMETER GalleryImage

	An object of type NmeGalleryImageRestConfiguration. Can be created using New-NmeGalleryImageRestConfiguration

	.PARAMETER InstallCertificates

	boolean. Specify -InstallCertificates $True or -InstallCertificates $False. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeWvdObjectId"){$true} else{throw "$_ is not a NmeWvdObjectId object. Use New-NmeWvdObjectId to create before calling this function"}})][psobject]$ImageId,
		[Parameter(Mandatory=$true)][string]$SourceImageId,
		[Parameter(Mandatory=$true)][string]$VmSize,
		[Parameter(Mandatory=$true)][string]$StorageType,
		[Parameter(Mandatory=$true)][int]$DiskSize,
		[Parameter(Mandatory=$true)][string]$NetworkId,
		[Parameter(Mandatory=$true)][string]$Subnet,
		[int]$AdConfigId,
		[System.Management.Automation.PSCredential]$LocalAdminCredentials,
		[string]$Description,
		[bool]$NoImageObjectRequired,
		[bool]$EnableTimezoneRedirection,
		[string]$VmTimezone,
		[int[]]$ScriptedActionsIds,
		[bool]$SkipRemoveProfiles,
		[hashtable]$Tags,
		[bool]$UseTrustedLaunch,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeGalleryImageRestConfiguration"){$true} else{throw "$_ is not a NmeGalleryImageRestConfiguration object. Use New-NmeGalleryImageRestConfiguration to create before calling this function"}})][psobject]$GalleryImage,
		[bool]$InstallCertificates
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("ImageId")){ $PropertyHash += @{ImageId = $ImageId} }
	if ($PSBoundParameters.containskey("SourceImageId")){ $PropertyHash += @{SourceImageId = $SourceImageId} }
	if ($PSBoundParameters.containskey("VmSize")){ $PropertyHash += @{VmSize = $VmSize} }
	if ($PSBoundParameters.containskey("StorageType")){ $PropertyHash += @{StorageType = $StorageType} }
	if ($PSBoundParameters.containskey("DiskSize")){ $PropertyHash += @{DiskSize = $DiskSize} }
	if ($PSBoundParameters.containskey("NetworkId")){ $PropertyHash += @{NetworkId = $NetworkId} }
	if ($PSBoundParameters.containskey("Subnet")){ $PropertyHash += @{Subnet = $Subnet} }
	if ($PSBoundParameters.containskey("AdConfigId")){ $PropertyHash += @{AdConfigId = $AdConfigId} }
	if ($PSBoundParameters.containskey("Description")){ $PropertyHash += @{Description = $Description} }
	if ($PSBoundParameters.containskey("NoImageObjectRequired")){ $PropertyHash += @{NoImageObjectRequired = $NoImageObjectRequired} }
	if ($PSBoundParameters.containskey("EnableTimezoneRedirection")){ $PropertyHash += @{EnableTimezoneRedirection = $EnableTimezoneRedirection} }
	if ($PSBoundParameters.containskey("VmTimezone")){ $PropertyHash += @{VmTimezone = $VmTimezone} }
	if ($PSBoundParameters.containskey("ScriptedActionsIds")){ $PropertyHash += @{ScriptedActionsIds = $ScriptedActionsIds} }
	if ($PSBoundParameters.containskey("SkipRemoveProfiles")){ $PropertyHash += @{SkipRemoveProfiles = $SkipRemoveProfiles} }
	if ($PSBoundParameters.containskey("Tags")){ $PropertyHash += @{Tags = $Tags} }
	if ($PSBoundParameters.containskey("UseTrustedLaunch")){ $PropertyHash += @{UseTrustedLaunch = $UseTrustedLaunch} }
	if ($PSBoundParameters.containskey("GalleryImage")){ $PropertyHash += @{GalleryImage = $GalleryImage} }
	if ($PSBoundParameters.containskey("InstallCertificates")){ $PropertyHash += @{InstallCertificates = $InstallCertificates} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeCreateImageFromLibraryPayload')
	Return $ReturnObject	
}
function New-NmeCreateImageFromLibraryRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeCreateImageFromLibraryRequest, for use in other Nme module commands

	.PARAMETER JobPayload

	An object of type NmeCreateImageFromLibraryPayload. Can be created using New-NmeCreateImageFromLibraryPayload

	.PARAMETER FailurePolicy

	An object of type NmeJobFailurePolicy. Can be created using New-NmeJobFailurePolicy

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeCreateImageFromLibraryPayload"){$true} else{throw "$_ is not a NmeCreateImageFromLibraryPayload object. Use New-NmeCreateImageFromLibraryPayload to create before calling this function"}})][psobject]$JobPayload,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeJobFailurePolicy"){$true} else{throw "$_ is not a NmeJobFailurePolicy object. Use New-NmeJobFailurePolicy to create before calling this function"}})][psobject]$FailurePolicy
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("JobPayload")){ $PropertyHash += @{JobPayload = $JobPayload} }
	if ($PSBoundParameters.containskey("FailurePolicy")){ $PropertyHash += @{FailurePolicy = $FailurePolicy} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeCreateImageFromLibraryRequest')
	Return $ReturnObject	
}
function New-NmeCreateOrUpdateSecureVariableRestPayload {
	<#

	.SYNOPSIS

	Creates an object of type NmeCreateOrUpdateSecureVariableRestPayload, for use in other Nme module commands

	.PARAMETER Name

	The name of the resource

	.PARAMETER ScriptedActions

	array. 

	.PARAMETER Value

	string. 

	.PARAMETER AssignmentRequired

	boolean. Specify -AssignmentRequired $True or -AssignmentRequired $False. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$Name,
		[int[]]$ScriptedActions,
		[Parameter(Mandatory=$true)][string]$Value,
		[Parameter(Mandatory=$true)][bool]$AssignmentRequired
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Name")){ $PropertyHash += @{Name = $Name} }
	if ($PSBoundParameters.containskey("ScriptedActions")){ $PropertyHash += @{ScriptedActions = $ScriptedActions} }
	if ($PSBoundParameters.containskey("Value")){ $PropertyHash += @{Value = $Value} }
	if ($PSBoundParameters.containskey("AssignmentRequired")){ $PropertyHash += @{AssignmentRequired = $AssignmentRequired} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeCreateOrUpdateSecureVariableRestPayload')
	Return $ReturnObject	
}
function New-NmeCreateScriptedActionRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeCreateScriptedActionRequest, for use in other Nme module commands

	.PARAMETER Name

	The name of the resource

	.PARAMETER Script

	string. 

	.PARAMETER ExecutionMode

	string. Valid values are: Combined, Individual, IndividualWithRestart

	.PARAMETER ExecutionEnvironment

	string. Valid values are: CustomScript, AzureAutomation

	.PARAMETER ExecutionTimeout

	integer. 

	.PARAMETER Tags

	array. 

	.PARAMETER Description

	string. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$Name,
		[Parameter(Mandatory=$true)][string]$Script,
		[Parameter(Mandatory=$true)][ValidateSet("Combined","Individual","IndividualWithRestart")][string]$ExecutionMode,
		[Parameter(Mandatory=$true)][ValidateSet("CustomScript","AzureAutomation")][string]$ExecutionEnvironment,
		[int]$ExecutionTimeout,
		[string[]]$Tags,
		[string]$Description
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Name")){ $PropertyHash += @{Name = $Name} }
	if ($PSBoundParameters.containskey("Script")){ $PropertyHash += @{Script = $Script} }
	if ($PSBoundParameters.containskey("ExecutionMode")){ $PropertyHash += @{ExecutionMode = $ExecutionMode} }
	if ($PSBoundParameters.containskey("ExecutionEnvironment")){ $PropertyHash += @{ExecutionEnvironment = $ExecutionEnvironment} }
	if ($PSBoundParameters.containskey("ExecutionTimeout")){ $PropertyHash += @{ExecutionTimeout = $ExecutionTimeout} }
	if ($PSBoundParameters.containskey("Tags")){ $PropertyHash += @{Tags = $Tags} }
	if ($PSBoundParameters.containskey("Description")){ $PropertyHash += @{Description = $Description} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeCreateScriptedActionRequest')
	Return $ReturnObject	
}
function New-NmeCreateSessionHostPayload {
	<#

	.SYNOPSIS

	Creates an object of type NmeCreateSessionHostPayload, for use in other Nme module commands

	.PARAMETER Host

	An object of type NmeSessionHostParams. Can be created using New-NmeSessionHostParams

	.PARAMETER UserToAssign

	string. 

	.PARAMETER HostsCount

	integer. 

	.PARAMETER Tags

	object. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeSessionHostParams"){$true} else{throw "$_ is not a NmeSessionHostParams object. Use New-NmeSessionHostParams to create before calling this function"}})][psobject]$Host,
		[string]$UserToAssign,
		[int]$HostsCount,
		[hashtable]$Tags
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Host")){ $PropertyHash += @{Host = $Host} }
	if ($PSBoundParameters.containskey("UserToAssign")){ $PropertyHash += @{UserToAssign = $UserToAssign} }
	if ($PSBoundParameters.containskey("HostsCount")){ $PropertyHash += @{HostsCount = $HostsCount} }
	if ($PSBoundParameters.containskey("Tags")){ $PropertyHash += @{Tags = $Tags} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeCreateSessionHostPayload')
	Return $ReturnObject	
}
function New-NmeCreateSessionHostRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeCreateSessionHostRequest, for use in other Nme module commands

	.PARAMETER JobPayload

	An object of type NmeCreateSessionHostPayload. Can be created using New-NmeCreateSessionHostPayload

	.PARAMETER FailurePolicy

	An object of type NmeJobFailurePolicy. Can be created using New-NmeJobFailurePolicy

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeCreateSessionHostPayload"){$true} else{throw "$_ is not a NmeCreateSessionHostPayload object. Use New-NmeCreateSessionHostPayload to create before calling this function"}})][psobject]$JobPayload,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeJobFailurePolicy"){$true} else{throw "$_ is not a NmeJobFailurePolicy object. Use New-NmeJobFailurePolicy to create before calling this function"}})][psobject]$FailurePolicy
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("JobPayload")){ $PropertyHash += @{JobPayload = $JobPayload} }
	if ($PSBoundParameters.containskey("FailurePolicy")){ $PropertyHash += @{FailurePolicy = $FailurePolicy} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeCreateSessionHostRequest')
	Return $ReturnObject	
}
function New-NmeCreateWorkspaceRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeCreateWorkspaceRequest, for use in other Nme module commands

	.PARAMETER Id

	An object of type NmeWvdObjectId. Create using New-NmeWvdObjectId. Will contain subscriptionid, resourcegroup, and tenant info

	.PARAMETER Location

	string. 

	.PARAMETER FriendlyName

	string. 

	.PARAMETER Description

	string. 

	.PARAMETER Tags

	object. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeWvdObjectId"){$true} else{throw "$_ is not a NmeWvdObjectId object. Use New-NmeWvdObjectId to create before calling this function"}})][psobject]$Id,
		[Parameter(Mandatory=$true)][string]$Location,
		[string]$FriendlyName,
		[string]$Description,
		[hashtable]$Tags
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Id")){ $PropertyHash += @{Id = $Id} }
	if ($PSBoundParameters.containskey("Location")){ $PropertyHash += @{Location = $Location} }
	if ($PSBoundParameters.containskey("FriendlyName")){ $PropertyHash += @{FriendlyName = $FriendlyName} }
	if ($PSBoundParameters.containskey("Description")){ $PropertyHash += @{Description = $Description} }
	if ($PSBoundParameters.containskey("Tags")){ $PropertyHash += @{Tags = $Tags} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeCreateWorkspaceRequest')
	Return $ReturnObject	
}
function New-NmeCredentials {
	<#

	.SYNOPSIS

	Creates an object of type NmeCredentials, for use in other Nme module commands

	.PARAMETER UserName

	Username of assigned user

	.PARAMETER Password

	string. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$UserName,
		[Parameter(Mandatory=$true)][SecureString]$Password
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("UserName")){ $PropertyHash += @{UserName = $UserName} }
	if ($PSBoundParameters.containskey("Password")){ $PropertyHash += @{Password = $(ConvertFrom-SecureString -SecureString $Password -AsPlainText)} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeCredentials')
	Return $ReturnObject	
}
function New-NmeDeleteScriptedActionRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeDeleteScriptedActionRequest, for use in other Nme module commands

	.PARAMETER Force

	boolean. Specify -Force $True or -Force $False. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][bool]$Force
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Force")){ $PropertyHash += @{Force = $Force} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeDeleteScriptedActionRequest')
	Return $ReturnObject	
}
function New-NmeDeleteSecureVariableRestPayload {
	<#

	.SYNOPSIS

	Creates an object of type NmeDeleteSecureVariableRestPayload, for use in other Nme module commands

	.PARAMETER Name

	The name of the resource

	#>
	[cmdletbinding()]
	Param(
		[string]$Name
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Name")){ $PropertyHash += @{Name = $Name} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeDeleteSecureVariableRestPayload')
	Return $ReturnObject	
}
function New-NmeDesktopImageScheduleRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeDesktopImageScheduleRestModel, for use in other Nme module commands

	.PARAMETER StartDate

	string. 

	.PARAMETER StartHour

	integer. 

	.PARAMETER StartMinutes

	integer. 

	.PARAMETER TimeZoneId

	string. 

	.PARAMETER ScheduleRecurrenceType

	string. Valid values are: Once, Daily, Weekly, Monthly, Hourly, PatchTuesday

	.PARAMETER DayOfWeekNumber

	string. Valid values are: First, Second, Third, Fourth, Last

	.PARAMETER DayOfWeek

	integer. Valid values are: 0, 1, 2, 3, 4, 5, 6

	.PARAMETER OffsetInDays

	integer. 

	.PARAMETER NextRunDateUtc

	string. 

	.PARAMETER JobType

	string. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$StartDate,
		[Parameter(Mandatory=$true)][int]$StartHour,
		[Parameter(Mandatory=$true)][int]$StartMinutes,
		[Parameter(Mandatory=$true)][string]$TimeZoneId,
		[Parameter(Mandatory=$true)][ValidateSet("Once","Daily","Weekly","Monthly","Hourly","PatchTuesday")][string]$ScheduleRecurrenceType,
		[ValidateSet("First","Second","Third","Fourth","Last")][string]$DayOfWeekNumber,
		[ValidateSet("0","1","2","3","4","5","6")][int]$DayOfWeek,
		[int]$OffsetInDays,
		[string]$NextRunDateUtc,
		[string]$JobType
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("StartDate")){ $PropertyHash += @{StartDate = $StartDate} }
	if ($PSBoundParameters.containskey("StartHour")){ $PropertyHash += @{StartHour = $StartHour} }
	if ($PSBoundParameters.containskey("StartMinutes")){ $PropertyHash += @{StartMinutes = $StartMinutes} }
	if ($PSBoundParameters.containskey("TimeZoneId")){ $PropertyHash += @{TimeZoneId = $TimeZoneId} }
	if ($PSBoundParameters.containskey("ScheduleRecurrenceType")){ $PropertyHash += @{ScheduleRecurrenceType = $ScheduleRecurrenceType} }
	if ($PSBoundParameters.containskey("DayOfWeekNumber")){ $PropertyHash += @{DayOfWeekNumber = $DayOfWeekNumber} }
	if ($PSBoundParameters.containskey("DayOfWeek")){ $PropertyHash += @{DayOfWeek = $DayOfWeek} }
	if ($PSBoundParameters.containskey("OffsetInDays")){ $PropertyHash += @{OffsetInDays = $OffsetInDays} }
	if ($PSBoundParameters.containskey("NextRunDateUtc")){ $PropertyHash += @{NextRunDateUtc = $NextRunDateUtc} }
	if ($PSBoundParameters.containskey("JobType")){ $PropertyHash += @{JobType = $JobType} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeDesktopImageScheduleRestModel')
	Return $ReturnObject	
}
function New-NmeDesktopImageSetAsImageScheduleRest {
	<#

	.SYNOPSIS

	Creates an object of type NmeDesktopImageSetAsImageScheduleRest, for use in other Nme module commands

	.PARAMETER JobParams

	An object of type NmeSetAsImageRestConfiguration. Can be created using New-NmeSetAsImageRestConfiguration

	.PARAMETER Schedule

	An object of type NmeDesktopImageScheduleRestModel. Can be created using New-NmeDesktopImageScheduleRestModel

	#>
	[cmdletbinding()]
	Param(
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeSetAsImageRestConfiguration"){$true} else{throw "$_ is not a NmeSetAsImageRestConfiguration object. Use New-NmeSetAsImageRestConfiguration to create before calling this function"}})][psobject]$JobParams,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeDesktopImageScheduleRestModel"){$true} else{throw "$_ is not a NmeDesktopImageScheduleRestModel object. Use New-NmeDesktopImageScheduleRestModel to create before calling this function"}})][psobject]$Schedule
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("JobParams")){ $PropertyHash += @{JobParams = $JobParams} }
	if ($PSBoundParameters.containskey("Schedule")){ $PropertyHash += @{Schedule = $Schedule} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeDesktopImageSetAsImageScheduleRest')
	Return $ReturnObject	
}
function New-NmeDynamicPoolConfig {
	<#

	.SYNOPSIS

	Creates an object of type NmeDynamicPoolConfig, for use in other Nme module commands

	.PARAMETER IsAutoScaleEnabled

	boolean. Specify -IsAutoScaleEnabled $True or -IsAutoScaleEnabled $False. 

	#>
	[cmdletbinding()]
	Param(
		[bool]$IsAutoScaleEnabled
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("IsAutoScaleEnabled")){ $PropertyHash += @{IsAutoScaleEnabled = $IsAutoScaleEnabled} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeDynamicPoolConfig')
	Return $ReturnObject	
}
function New-NmeDynamicPoolConfiguration {
	<#

	.SYNOPSIS

	Creates an object of type NmeDynamicPoolConfiguration, for use in other Nme module commands

	.PARAMETER IsEnabled

	boolean. Specify -IsEnabled $True or -IsEnabled $False. 

	.PARAMETER VmTemplate

	An object of type NmeVmTemplateParams. Can be created using New-NmeVmTemplateParams

	.PARAMETER StoppedDiskType

	string. 

	.PARAMETER ReuseVmNames

	boolean. Specify -ReuseVmNames $True or -ReuseVmNames $False. 

	.PARAMETER EnableFixFailedTask

	boolean. Specify -EnableFixFailedTask $True or -EnableFixFailedTask $False. 

	.PARAMETER IsSingleUserDesktop

	boolean. Specify -IsSingleUserDesktop $True or -IsSingleUserDesktop $False. 

	.PARAMETER ActiveHostType

	string. Valid values are: Running, AvailableForConnection

	.PARAMETER MinCountCreatedVmsType

	string. Valid values are: HostPoolCapacity, MinActiveHostsProperty

	.PARAMETER ScalingMode

	string. Valid values are: Default, WorkingHours, UserDriven

	.PARAMETER HostPoolCapacity

	integer. 

	.PARAMETER MinActiveHostsCount

	integer. 

	.PARAMETER BurstCapacity

	integer. 

	.PARAMETER AutoScaleCriteria

	string. Valid values are: CPUUsage, RAMUsage, AvgActiveSessions, AvailableUserSessionSingle, AvailableUserSessions, UserDriven, PersonalAutoGrow, PersonalAutoShrink

	.PARAMETER ScaleInAggressiveness

	string. Valid values are: High, Medium, Low

	.PARAMETER WorkingHoursScaleOutBehavior

	string. Valid values are: OneTime, Continuously, Never

	.PARAMETER WorkingHoursScaleInBehavior

	string. Valid values are: OneTime, Continuously, Never

	.PARAMETER HostUsageScaleCriteria

	An object of type NmeHostUsageConfiguration. Can be created using New-NmeHostUsageConfiguration

	.PARAMETER ActiveSessionsScaleCriteria

	An object of type NmeActiveSessionsConfiguration. Can be created using New-NmeActiveSessionsConfiguration

	.PARAMETER AvailableUserSessionsScaleCriteria

	An object of type NmeAvailableUserSessionsConfiguration. Can be created using New-NmeAvailableUserSessionsConfiguration

	.PARAMETER ScaleInRestriction

	An object of type NmeScaleIntimeRestrictionConfiguration. Can be created using New-NmeScaleIntimeRestrictionConfiguration

	.PARAMETER PreStageHosts

	An object of type NmePreStateHostsConfiguration. Can be created using New-NmePreStateHostsConfiguration

	.PARAMETER RemoveMessaging

	An object of type NmeWarningMessageSettings. Can be created using New-NmeWarningMessageSettings

	.PARAMETER AutoHeal

	An object of type NmeAutoHealConfiguration. Can be created using New-NmeAutoHealConfiguration

	.PARAMETER SecondaryRegion

	An object of type NmeSecondaryRegionRestModel. Can be created using New-NmeSecondaryRegionRestModel

	.PARAMETER ReImageUsedHosts

	boolean. Specify -ReImageUsedHosts $True or -ReImageUsedHosts $False. 

	.PARAMETER UserDriven

	An object of type NmeUserDrivenRestConfiguration. Can be created using New-NmeUserDrivenRestConfiguration

	.PARAMETER AutoScaleTriggers

	An array of objects of type NmeTriggerInfo. Can be created using New-NmeTriggerInfo

	.PARAMETER Extensions

	An object of type NmeExtensionsRestConfiguration. Can be created using New-NmeExtensionsRestConfiguration

	.PARAMETER AutoScaleInterval

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][bool]$IsEnabled,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeVmTemplateParams"){$true} else{throw "$_ is not a NmeVmTemplateParams object. Use New-NmeVmTemplateParams to create before calling this function"}})][psobject]$VmTemplate,
		[string]$StoppedDiskType,
		[Parameter(Mandatory=$true)][bool]$ReuseVmNames,
		[Parameter(Mandatory=$true)][bool]$EnableFixFailedTask,
		[Parameter(Mandatory=$true)][bool]$IsSingleUserDesktop,
		[Parameter(Mandatory=$true)][ValidateSet("Running","AvailableForConnection")][string]$ActiveHostType,
		[Parameter(Mandatory=$true)][ValidateSet("HostPoolCapacity","MinActiveHostsProperty")][string]$MinCountCreatedVmsType,
		[Parameter(Mandatory=$true)][ValidateSet("Default","WorkingHours","UserDriven")][string]$ScalingMode,
		[Parameter(Mandatory=$true)][int]$HostPoolCapacity,
		[Parameter(Mandatory=$true)][int]$MinActiveHostsCount,
		[Parameter(Mandatory=$true)][int]$BurstCapacity,
		[ValidateSet("CPUUsage","RAMUsage","AvgActiveSessions","AvailableUserSessionSingle","AvailableUserSessions","UserDriven","PersonalAutoGrow","PersonalAutoShrink")][string]$AutoScaleCriteria,
		[Parameter(Mandatory=$true)][ValidateSet("High","Medium","Low")][string]$ScaleInAggressiveness,
		[ValidateSet("OneTime","Continuously","Never")][string]$WorkingHoursScaleOutBehavior,
		[ValidateSet("OneTime","Continuously","Never")][string]$WorkingHoursScaleInBehavior,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeHostUsageConfiguration"){$true} else{throw "$_ is not a NmeHostUsageConfiguration object. Use New-NmeHostUsageConfiguration to create before calling this function"}})][psobject]$HostUsageScaleCriteria,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeActiveSessionsConfiguration"){$true} else{throw "$_ is not a NmeActiveSessionsConfiguration object. Use New-NmeActiveSessionsConfiguration to create before calling this function"}})][psobject]$ActiveSessionsScaleCriteria,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeAvailableUserSessionsConfiguration"){$true} else{throw "$_ is not a NmeAvailableUserSessionsConfiguration object. Use New-NmeAvailableUserSessionsConfiguration to create before calling this function"}})][psobject]$AvailableUserSessionsScaleCriteria,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeScaleIntimeRestrictionConfiguration"){$true} else{throw "$_ is not a NmeScaleIntimeRestrictionConfiguration object. Use New-NmeScaleIntimeRestrictionConfiguration to create before calling this function"}})][psobject]$ScaleInRestriction,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmePreStateHostsConfiguration"){$true} else{throw "$_ is not a NmePreStateHostsConfiguration object. Use New-NmePreStateHostsConfiguration to create before calling this function"}})][psobject]$PreStageHosts,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeWarningMessageSettings"){$true} else{throw "$_ is not a NmeWarningMessageSettings object. Use New-NmeWarningMessageSettings to create before calling this function"}})][psobject]$RemoveMessaging,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeAutoHealConfiguration"){$true} else{throw "$_ is not a NmeAutoHealConfiguration object. Use New-NmeAutoHealConfiguration to create before calling this function"}})][psobject]$AutoHeal,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeSecondaryRegionRestModel"){$true} else{throw "$_ is not a NmeSecondaryRegionRestModel object. Use New-NmeSecondaryRegionRestModel to create before calling this function"}})][psobject]$SecondaryRegion,
		[bool]$ReImageUsedHosts,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeUserDrivenRestConfiguration"){$true} else{throw "$_ is not a NmeUserDrivenRestConfiguration object. Use New-NmeUserDrivenRestConfiguration to create before calling this function"}})][psobject]$UserDriven,
		[psobject[]][ValidateScript({$_.PSObject.TypeNames -contains "NmeTriggerInfo"})]$AutoScaleTriggers,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeExtensionsRestConfiguration"){$true} else{throw "$_ is not a NmeExtensionsRestConfiguration object. Use New-NmeExtensionsRestConfiguration to create before calling this function"}})][psobject]$Extensions,
		[int]$AutoScaleInterval
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("IsEnabled")){ $PropertyHash += @{IsEnabled = $IsEnabled} }
	if ($PSBoundParameters.containskey("VmTemplate")){ $PropertyHash += @{VmTemplate = $VmTemplate} }
	if ($PSBoundParameters.containskey("StoppedDiskType")){ $PropertyHash += @{StoppedDiskType = $StoppedDiskType} }
	if ($PSBoundParameters.containskey("ReuseVmNames")){ $PropertyHash += @{ReuseVmNames = $ReuseVmNames} }
	if ($PSBoundParameters.containskey("EnableFixFailedTask")){ $PropertyHash += @{EnableFixFailedTask = $EnableFixFailedTask} }
	if ($PSBoundParameters.containskey("IsSingleUserDesktop")){ $PropertyHash += @{IsSingleUserDesktop = $IsSingleUserDesktop} }
	if ($PSBoundParameters.containskey("ActiveHostType")){ $PropertyHash += @{ActiveHostType = $ActiveHostType} }
	if ($PSBoundParameters.containskey("MinCountCreatedVmsType")){ $PropertyHash += @{MinCountCreatedVmsType = $MinCountCreatedVmsType} }
	if ($PSBoundParameters.containskey("ScalingMode")){ $PropertyHash += @{ScalingMode = $ScalingMode} }
	if ($PSBoundParameters.containskey("HostPoolCapacity")){ $PropertyHash += @{HostPoolCapacity = $HostPoolCapacity} }
	if ($PSBoundParameters.containskey("MinActiveHostsCount")){ $PropertyHash += @{MinActiveHostsCount = $MinActiveHostsCount} }
	if ($PSBoundParameters.containskey("BurstCapacity")){ $PropertyHash += @{BurstCapacity = $BurstCapacity} }
	if ($PSBoundParameters.containskey("AutoScaleCriteria")){ $PropertyHash += @{AutoScaleCriteria = $AutoScaleCriteria} }
	if ($PSBoundParameters.containskey("ScaleInAggressiveness")){ $PropertyHash += @{ScaleInAggressiveness = $ScaleInAggressiveness} }
	if ($PSBoundParameters.containskey("WorkingHoursScaleOutBehavior")){ $PropertyHash += @{WorkingHoursScaleOutBehavior = $WorkingHoursScaleOutBehavior} }
	if ($PSBoundParameters.containskey("WorkingHoursScaleInBehavior")){ $PropertyHash += @{WorkingHoursScaleInBehavior = $WorkingHoursScaleInBehavior} }
	if ($PSBoundParameters.containskey("HostUsageScaleCriteria")){ $PropertyHash += @{HostUsageScaleCriteria = $HostUsageScaleCriteria} }
	if ($PSBoundParameters.containskey("ActiveSessionsScaleCriteria")){ $PropertyHash += @{ActiveSessionsScaleCriteria = $ActiveSessionsScaleCriteria} }
	if ($PSBoundParameters.containskey("AvailableUserSessionsScaleCriteria")){ $PropertyHash += @{AvailableUserSessionsScaleCriteria = $AvailableUserSessionsScaleCriteria} }
	if ($PSBoundParameters.containskey("ScaleInRestriction")){ $PropertyHash += @{ScaleInRestriction = $ScaleInRestriction} }
	if ($PSBoundParameters.containskey("PreStageHosts")){ $PropertyHash += @{PreStageHosts = $PreStageHosts} }
	if ($PSBoundParameters.containskey("RemoveMessaging")){ $PropertyHash += @{RemoveMessaging = $RemoveMessaging} }
	if ($PSBoundParameters.containskey("AutoHeal")){ $PropertyHash += @{AutoHeal = $AutoHeal} }
	if ($PSBoundParameters.containskey("SecondaryRegion")){ $PropertyHash += @{SecondaryRegion = $SecondaryRegion} }
	if ($PSBoundParameters.containskey("ReImageUsedHosts")){ $PropertyHash += @{ReImageUsedHosts = $ReImageUsedHosts} }
	if ($PSBoundParameters.containskey("UserDriven")){ $PropertyHash += @{UserDriven = $UserDriven} }
	if ($PSBoundParameters.containskey("AutoScaleTriggers")){ $PropertyHash += @{AutoScaleTriggers = $AutoScaleTriggers} }
	if ($PSBoundParameters.containskey("Extensions")){ $PropertyHash += @{Extensions = $Extensions} }
	if ($PSBoundParameters.containskey("AutoScaleInterval")){ $PropertyHash += @{AutoScaleInterval = $AutoScaleInterval} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeDynamicPoolConfiguration')
	Return $ReturnObject	
}
function New-NmeExistingScheduleConfigurationPayloadRest {
	<#

	.SYNOPSIS

	Creates an object of type NmeExistingScheduleConfigurationPayloadRest, for use in other Nme module commands

	.PARAMETER StartDate

	string. 

	.PARAMETER StartHour

	integer. 

	.PARAMETER StartMinutes

	integer. 

	.PARAMETER TimeZoneId

	string. 

	.PARAMETER ScheduleRecurrenceType

	string. Valid values are: Once, Daily, Weekly, Monthly, Hourly, PatchTuesday

	.PARAMETER DayOfWeekNumber

	string. Valid values are: First, Second, Third, Fourth, Last

	.PARAMETER DayOfWeek

	integer. Valid values are: 0, 1, 2, 3, 4, 5, 6

	.PARAMETER OffsetInDays

	integer. 

	.PARAMETER NextRunDateUtc

	string. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$StartDate,
		[Parameter(Mandatory=$true)][int]$StartHour,
		[Parameter(Mandatory=$true)][int]$StartMinutes,
		[Parameter(Mandatory=$true)][string]$TimeZoneId,
		[Parameter(Mandatory=$true)][ValidateSet("Once","Daily","Weekly","Monthly","Hourly","PatchTuesday")][string]$ScheduleRecurrenceType,
		[ValidateSet("First","Second","Third","Fourth","Last")][string]$DayOfWeekNumber,
		[ValidateSet("0","1","2","3","4","5","6")][int]$DayOfWeek,
		[int]$OffsetInDays,
		[string]$NextRunDateUtc
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("StartDate")){ $PropertyHash += @{StartDate = $StartDate} }
	if ($PSBoundParameters.containskey("StartHour")){ $PropertyHash += @{StartHour = $StartHour} }
	if ($PSBoundParameters.containskey("StartMinutes")){ $PropertyHash += @{StartMinutes = $StartMinutes} }
	if ($PSBoundParameters.containskey("TimeZoneId")){ $PropertyHash += @{TimeZoneId = $TimeZoneId} }
	if ($PSBoundParameters.containskey("ScheduleRecurrenceType")){ $PropertyHash += @{ScheduleRecurrenceType = $ScheduleRecurrenceType} }
	if ($PSBoundParameters.containskey("DayOfWeekNumber")){ $PropertyHash += @{DayOfWeekNumber = $DayOfWeekNumber} }
	if ($PSBoundParameters.containskey("DayOfWeek")){ $PropertyHash += @{DayOfWeek = $DayOfWeek} }
	if ($PSBoundParameters.containskey("OffsetInDays")){ $PropertyHash += @{OffsetInDays = $OffsetInDays} }
	if ($PSBoundParameters.containskey("NextRunDateUtc")){ $PropertyHash += @{NextRunDateUtc = $NextRunDateUtc} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeExistingScheduleConfigurationPayloadRest')
	Return $ReturnObject	
}
function New-NmeExtensionsRestConfiguration {
	<#

	.SYNOPSIS

	Creates an object of type NmeExtensionsRestConfiguration, for use in other Nme module commands

	.PARAMETER MaxSessionsPerHost

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[int]$MaxSessionsPerHost
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("MaxSessionsPerHost")){ $PropertyHash += @{MaxSessionsPerHost = $MaxSessionsPerHost} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeExtensionsRestConfiguration')
	Return $ReturnObject	
}
function New-NmeFsLogixRestProperties {
	<#

	.SYNOPSIS

	Creates an object of type NmeFsLogixRestProperties, for use in other Nme module commands

	.PARAMETER ProfilesPath

	string. 

	.PARAMETER RegistryOptions

	string. 

	.PARAMETER CloudCacheEnabled

	boolean. Specify -CloudCacheEnabled $True or -CloudCacheEnabled $False. 

	.PARAMETER OfficeContainerPath

	string. 

	.PARAMETER OfficeContainerRegistryOptions

	string. 

	.PARAMETER SetupRegistryForAADJoinedStorage

	boolean. Specify -SetupRegistryForAADJoinedStorage $True or -SetupRegistryForAADJoinedStorage $False. 

	.PARAMETER ForceUpdate

	boolean. Specify -ForceUpdate $True or -ForceUpdate $False. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$ProfilesPath,
		[Parameter(Mandatory=$true)][string]$RegistryOptions,
		[bool]$CloudCacheEnabled,
		[string]$OfficeContainerPath,
		[string]$OfficeContainerRegistryOptions,
		[bool]$SetupRegistryForAADJoinedStorage,
		[bool]$ForceUpdate
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("ProfilesPath")){ $PropertyHash += @{ProfilesPath = $ProfilesPath} }
	if ($PSBoundParameters.containskey("RegistryOptions")){ $PropertyHash += @{RegistryOptions = $RegistryOptions} }
	if ($PSBoundParameters.containskey("CloudCacheEnabled")){ $PropertyHash += @{CloudCacheEnabled = $CloudCacheEnabled} }
	if ($PSBoundParameters.containskey("OfficeContainerPath")){ $PropertyHash += @{OfficeContainerPath = $OfficeContainerPath} }
	if ($PSBoundParameters.containskey("OfficeContainerRegistryOptions")){ $PropertyHash += @{OfficeContainerRegistryOptions = $OfficeContainerRegistryOptions} }
	if ($PSBoundParameters.containskey("SetupRegistryForAADJoinedStorage")){ $PropertyHash += @{SetupRegistryForAADJoinedStorage = $SetupRegistryForAADJoinedStorage} }
	if ($PSBoundParameters.containskey("ForceUpdate")){ $PropertyHash += @{ForceUpdate = $ForceUpdate} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeFsLogixRestProperties')
	Return $ReturnObject	
}
function New-NmeGalleryImageRestConfiguration {
	<#

	.SYNOPSIS

	Creates an object of type NmeGalleryImageRestConfiguration, for use in other Nme module commands

	.PARAMETER GalleryId

	string. 

	.PARAMETER TargetRegions

	array. 

	.PARAMETER SetInactive

	boolean. Specify -SetInactive $True or -SetInactive $False. 

	.PARAMETER ReplicaCount

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[string]$GalleryId,
		[string[]]$TargetRegions,
		[bool]$SetInactive,
		[int]$ReplicaCount
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("GalleryId")){ $PropertyHash += @{GalleryId = $GalleryId} }
	if ($PSBoundParameters.containskey("TargetRegions")){ $PropertyHash += @{TargetRegions = $TargetRegions} }
	if ($PSBoundParameters.containskey("SetInactive")){ $PropertyHash += @{SetInactive = $SetInactive} }
	if ($PSBoundParameters.containskey("ReplicaCount")){ $PropertyHash += @{ReplicaCount = $ReplicaCount} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeGalleryImageRestConfiguration')
	Return $ReturnObject	
}
function New-NmeHostChange {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostChange, for use in other Nme module commands

	.PARAMETER HostChangeCount

	integer. 

	.PARAMETER Value

	number. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][int]$HostChangeCount,
		[Parameter(Mandatory=$true)][float]$Value
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("HostChangeCount")){ $PropertyHash += @{HostChangeCount = $HostChangeCount} }
	if ($PSBoundParameters.containskey("Value")){ $PropertyHash += @{Value = $Value} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostChange')
	Return $ReturnObject	
}
function New-NmeHostPoolActiveDirectoryRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostPoolActiveDirectoryRestModel, for use in other Nme module commands

	.PARAMETER Type

	string. Valid values are: Default, Predefined, Custom

	.PARAMETER PredefinedConfigId

	integer. 

	.PARAMETER Effective

	An object of type NmeAdConfigRestProperties. Can be created using New-NmeAdConfigRestProperties

	#>
	[cmdletbinding()]
	Param(
		[ValidateSet("Default","Predefined","Custom")][string]$Type,
		[int]$PredefinedConfigId,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeAdConfigRestProperties"){$true} else{throw "$_ is not a NmeAdConfigRestProperties object. Use New-NmeAdConfigRestProperties to create before calling this function"}})][psobject]$Effective
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Type")){ $PropertyHash += @{Type = $Type} }
	if ($PSBoundParameters.containskey("PredefinedConfigId")){ $PropertyHash += @{PredefinedConfigId = $PredefinedConfigId} }
	if ($PSBoundParameters.containskey("Effective")){ $PropertyHash += @{Effective = $Effective} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostPoolActiveDirectoryRestModel')
	Return $ReturnObject	
}
function New-NmeHostPoolAssignmentRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostPoolAssignmentRestModel, for use in other Nme module commands

	.PARAMETER ObjectId

	The GUID of an Azure AD object (user, group, or service principal) to which this RBAC role is assigned

	.PARAMETER ObjectType

	string. Valid values are: User, Group

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$ObjectId,
		[Parameter(Mandatory=$true)][ValidateSet("User","Group")][string]$ObjectType
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("ObjectId")){ $PropertyHash += @{ObjectId = $ObjectId} }
	if ($PSBoundParameters.containskey("ObjectType")){ $PropertyHash += @{ObjectType = $ObjectType} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostPoolAssignmentRestModel')
	Return $ReturnObject	
}
function New-NmeHostPoolBackupModelRest {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostPoolBackupModelRest, for use in other Nme module commands

	.PARAMETER BackupMode

	string. Valid values are: Ignore, TurnOff, TurnOn

	.PARAMETER BackupPolicyId

	string. 

	#>
	[cmdletbinding()]
	Param(
		[ValidateSet("Ignore","TurnOff","TurnOn")][string]$BackupMode,
		[string]$BackupPolicyId
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("BackupMode")){ $PropertyHash += @{BackupMode = $BackupMode} }
	if ($PSBoundParameters.containskey("BackupPolicyId")){ $PropertyHash += @{BackupPolicyId = $BackupPolicyId} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostPoolBackupModelRest')
	Return $ReturnObject	
}
function New-NmeHostPoolFsLogixRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostPoolFsLogixRestModel, for use in other Nme module commands

	.PARAMETER Enable

	boolean. Specify -Enable $True or -Enable $False. 

	.PARAMETER UseDefault

	DEPRECATED

	.PARAMETER Type

	string. Valid values are: Default, Predefined, Custom

	.PARAMETER PredefinedConfigId

	integer. 

	.PARAMETER EffectiveConfig

	An object of type NmeFsLogixRestProperties. Can be created using New-NmeFsLogixRestProperties

	#>
	[cmdletbinding()]
	Param(
		[bool]$Enable,
		[bool]$UseDefault,
		[ValidateSet("Default","Predefined","Custom")][string]$Type,
		[int]$PredefinedConfigId,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeFsLogixRestProperties"){$true} else{throw "$_ is not a NmeFsLogixRestProperties object. Use New-NmeFsLogixRestProperties to create before calling this function"}})][psobject]$EffectiveConfig
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Enable")){ $PropertyHash += @{Enable = $Enable} }
	if ($PSBoundParameters.containskey("UseDefault")){ $PropertyHash += @{UseDefault = $UseDefault} }
	if ($PSBoundParameters.containskey("Type")){ $PropertyHash += @{Type = $Type} }
	if ($PSBoundParameters.containskey("PredefinedConfigId")){ $PropertyHash += @{PredefinedConfigId = $PredefinedConfigId} }
	if ($PSBoundParameters.containskey("EffectiveConfig")){ $PropertyHash += @{EffectiveConfig = $EffectiveConfig} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostPoolFsLogixRestModel')
	Return $ReturnObject	
}
function New-NmeHostPoolPropertiesRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostPoolPropertiesRestModel, for use in other Nme module commands

	.PARAMETER FriendlyName

	string. 

	.PARAMETER Description

	string. 

	.PARAMETER LoadBalancerType

	string. Valid values are: BreadthFirst, DepthFirst, Persistent

	.PARAMETER MaxSessionLimit

	integer. 

	.PARAMETER ValidationEnv

	boolean. Specify -ValidationEnv $True or -ValidationEnv $False. 

	.PARAMETER PowerOnPooledHosts

	boolean. Specify -PowerOnPooledHosts $True or -PowerOnPooledHosts $False. Allow end users power on host in a pooled host pool

	#>
	[cmdletbinding()]
	Param(
		[string]$FriendlyName,
		[string]$Description,
		[ValidateSet("BreadthFirst","DepthFirst","Persistent")][string]$LoadBalancerType,
		[int]$MaxSessionLimit,
		[bool]$ValidationEnv,
		[bool]$PowerOnPooledHosts
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("FriendlyName")){ $PropertyHash += @{FriendlyName = $FriendlyName} }
	if ($PSBoundParameters.containskey("Description")){ $PropertyHash += @{Description = $Description} }
	if ($PSBoundParameters.containskey("LoadBalancerType")){ $PropertyHash += @{LoadBalancerType = $LoadBalancerType} }
	if ($PSBoundParameters.containskey("MaxSessionLimit")){ $PropertyHash += @{MaxSessionLimit = $MaxSessionLimit} }
	if ($PSBoundParameters.containskey("ValidationEnv")){ $PropertyHash += @{ValidationEnv = $ValidationEnv} }
	if ($PSBoundParameters.containskey("PowerOnPooledHosts")){ $PropertyHash += @{PowerOnPooledHosts = $PowerOnPooledHosts} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostPoolPropertiesRestModel')
	Return $ReturnObject	
}
function New-NmeHostPoolRdpModelRest {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostPoolRdpModelRest, for use in other Nme module commands

	.PARAMETER RdpProperties

	string. 

	#>
	[cmdletbinding()]
	Param(
		[string]$RdpProperties
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("RdpProperties")){ $PropertyHash += @{RdpProperties = $RdpProperties} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostPoolRdpModelRest')
	Return $ReturnObject	
}
function New-NmeHostPoolScriptedActionsConfigRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostPoolScriptedActionsConfigRestModel, for use in other Nme module commands

	.PARAMETER Enabled

	boolean. Specify -Enabled $True or -Enabled $False. 

	.PARAMETER ScriptedActionsIds

	Array of integers, listed under the ID column in Nerdio Manager Scripted Actions. Can be retrieved by running Get-NmeScriptedActions

	.PARAMETER ActiveDirectoryId

	ID of Active Directory profile to be sent with this scripted action. Can be retrieved by running Get-NmeAdConfig

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][bool]$Enabled,
		[Parameter(Mandatory=$true)][int[]]$ScriptedActionsIds,
		[int]$ActiveDirectoryId
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Enabled")){ $PropertyHash += @{Enabled = $Enabled} }
	if ($PSBoundParameters.containskey("ScriptedActionsIds")){ $PropertyHash += @{ScriptedActionsIds = $ScriptedActionsIds} }
	if ($PSBoundParameters.containskey("ActiveDirectoryId")){ $PropertyHash += @{ActiveDirectoryId = $ActiveDirectoryId} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostPoolScriptedActionsConfigRestModel')
	Return $ReturnObject	
}
function New-NmeHostPoolScriptedActionsRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostPoolScriptedActionsRestModel, for use in other Nme module commands

	.PARAMETER OnCreate

	An object of type NmeHostPoolScriptedActionsConfigRestModel. Can be created using New-NmeHostPoolScriptedActionsConfigRestModel

	.PARAMETER OnStart

	An object of type NmeHostPoolScriptedActionsConfigRestModel. Can be created using New-NmeHostPoolScriptedActionsConfigRestModel

	.PARAMETER OnStop

	An object of type NmeHostPoolScriptedActionsConfigRestModel. Can be created using New-NmeHostPoolScriptedActionsConfigRestModel

	.PARAMETER OnRemove

	An object of type NmeHostPoolScriptedActionsConfigRestModel. Can be created using New-NmeHostPoolScriptedActionsConfigRestModel

	.PARAMETER OnHostCreate

	An object of type NmeHostPoolScriptedActionsConfigRestModel. Can be created using New-NmeHostPoolScriptedActionsConfigRestModel

	#>
	[cmdletbinding()]
	Param(
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeHostPoolScriptedActionsConfigRestModel"){$true} else{throw "$_ is not a NmeHostPoolScriptedActionsConfigRestModel object. Use New-NmeHostPoolScriptedActionsConfigRestModel to create before calling this function"}})][psobject]$OnCreate,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeHostPoolScriptedActionsConfigRestModel"){$true} else{throw "$_ is not a NmeHostPoolScriptedActionsConfigRestModel object. Use New-NmeHostPoolScriptedActionsConfigRestModel to create before calling this function"}})][psobject]$OnStart,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeHostPoolScriptedActionsConfigRestModel"){$true} else{throw "$_ is not a NmeHostPoolScriptedActionsConfigRestModel object. Use New-NmeHostPoolScriptedActionsConfigRestModel to create before calling this function"}})][psobject]$OnStop,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeHostPoolScriptedActionsConfigRestModel"){$true} else{throw "$_ is not a NmeHostPoolScriptedActionsConfigRestModel object. Use New-NmeHostPoolScriptedActionsConfigRestModel to create before calling this function"}})][psobject]$OnRemove,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeHostPoolScriptedActionsConfigRestModel"){$true} else{throw "$_ is not a NmeHostPoolScriptedActionsConfigRestModel object. Use New-NmeHostPoolScriptedActionsConfigRestModel to create before calling this function"}})][psobject]$OnHostCreate
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("OnCreate")){ $PropertyHash += @{OnCreate = $OnCreate} }
	if ($PSBoundParameters.containskey("OnStart")){ $PropertyHash += @{OnStart = $OnStart} }
	if ($PSBoundParameters.containskey("OnStop")){ $PropertyHash += @{OnStop = $OnStop} }
	if ($PSBoundParameters.containskey("OnRemove")){ $PropertyHash += @{OnRemove = $OnRemove} }
	if ($PSBoundParameters.containskey("OnHostCreate")){ $PropertyHash += @{OnHostCreate = $OnHostCreate} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostPoolScriptedActionsRestModel')
	Return $ReturnObject	
}
function New-NmeHostPoolSessionTimeoutRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostPoolSessionTimeoutRestModel, for use in other Nme module commands

	.PARAMETER IsSessionTimeoutsEnabled

	boolean. Specify -IsSessionTimeoutsEnabled $True or -IsSessionTimeoutsEnabled $False. 

	.PARAMETER FresetBroken

	integer. Log off, instead of disconnecting, ACTIVE and IDLE sessions.
null: not configured;
-1: disabled (property will be removed from registry);
1: enabled

	.PARAMETER MaxIdleTime

	integer. Disconnect IDLE sessions after.
null: not configured;
-1: disabled (property will be removed from registry);
0: never

	.PARAMETER MaxConnectionTime

	integer. Disconnect ACTIVE sessions after.
null: not configured;
-1: disabled (property will be removed from registry);
0: never

	.PARAMETER MaxDisconnectionTime

	integer. Log off DISCONNECTED sessions after.
null: not configured;
-1: disabled (property will be removed from registry);
0: never

	.PARAMETER RemoteAppLogoffTimeLimit

	integer. Log off empty RemoteApp sessions after.
null: not configured;
-1: disabled (property will be removed from registry);
0: immediately

	#>
	[cmdletbinding()]
	Param(
		[bool]$IsSessionTimeoutsEnabled,
		[int]$FresetBroken,
		[int]$MaxIdleTime,
		[int]$MaxConnectionTime,
		[int]$MaxDisconnectionTime,
		[int]$RemoteAppLogoffTimeLimit
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("IsSessionTimeoutsEnabled")){ $PropertyHash += @{IsSessionTimeoutsEnabled = $IsSessionTimeoutsEnabled} }
	if ($PSBoundParameters.containskey("FresetBroken")){ $PropertyHash += @{FresetBroken = $FresetBroken} }
	if ($PSBoundParameters.containskey("MaxIdleTime")){ $PropertyHash += @{MaxIdleTime = $MaxIdleTime} }
	if ($PSBoundParameters.containskey("MaxConnectionTime")){ $PropertyHash += @{MaxConnectionTime = $MaxConnectionTime} }
	if ($PSBoundParameters.containskey("MaxDisconnectionTime")){ $PropertyHash += @{MaxDisconnectionTime = $MaxDisconnectionTime} }
	if ($PSBoundParameters.containskey("RemoteAppLogoffTimeLimit")){ $PropertyHash += @{RemoteAppLogoffTimeLimit = $RemoteAppLogoffTimeLimit} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostPoolSessionTimeoutRestModel')
	Return $ReturnObject	
}
function New-NmeHostPoolTagsRest {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostPoolTagsRest, for use in other Nme module commands

	.PARAMETER Tags

	object. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][hashtable]$Tags
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Tags")){ $PropertyHash += @{Tags = $Tags} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostPoolTagsRest')
	Return $ReturnObject	
}
function New-NmeHostPoolTrackingModelRest {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostPoolTrackingModelRest, for use in other Nme module commands

	.PARAMETER TrackCpuUsage

	boolean. Specify -TrackCpuUsage $True or -TrackCpuUsage $False. 

	.PARAMETER TrackRamUsage

	boolean. Specify -TrackRamUsage $True or -TrackRamUsage $False. 

	.PARAMETER TrackAverageActiveSessions

	boolean. Specify -TrackAverageActiveSessions $True or -TrackAverageActiveSessions $False. 

	#>
	[cmdletbinding()]
	Param(
		[bool]$TrackCpuUsage,
		[bool]$TrackRamUsage,
		[bool]$TrackAverageActiveSessions
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("TrackCpuUsage")){ $PropertyHash += @{TrackCpuUsage = $TrackCpuUsage} }
	if ($PSBoundParameters.containskey("TrackRamUsage")){ $PropertyHash += @{TrackRamUsage = $TrackRamUsage} }
	if ($PSBoundParameters.containskey("TrackAverageActiveSessions")){ $PropertyHash += @{TrackAverageActiveSessions = $TrackAverageActiveSessions} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostPoolTrackingModelRest')
	Return $ReturnObject	
}
function New-NmeHostPoolUserSelfServiceDesktopImageRest {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostPoolUserSelfServiceDesktopImageRest, for use in other Nme module commands

	.PARAMETER Id

	ID of scripted Action

	.PARAMETER Name

	The name of the resource

	#>
	[cmdletbinding()]
	Param(
		[string]$Id,
		[string]$Name
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Id")){ $PropertyHash += @{Id = $Id} }
	if ($PSBoundParameters.containskey("Name")){ $PropertyHash += @{Name = $Name} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostPoolUserSelfServiceDesktopImageRest')
	Return $ReturnObject	
}
function New-NmeHostPoolUserSelfServiceModelRest {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostPoolUserSelfServiceModelRest, for use in other Nme module commands

	.PARAMETER AllowStartDesktops

	boolean. Specify -AllowStartDesktops $True or -AllowStartDesktops $False. 

	.PARAMETER AllowRestartDesktops

	boolean. Specify -AllowRestartDesktops $True or -AllowRestartDesktops $False. 

	.PARAMETER AllowStopDesktops

	boolean. Specify -AllowStopDesktops $True or -AllowStopDesktops $False. 

	.PARAMETER AllowReimageDesktops

	boolean. Specify -AllowReimageDesktops $True or -AllowReimageDesktops $False. 

	.PARAMETER AllowedImages

	An array of objects of type NmeHostPoolUserSelfServiceDesktopImageRest. Can be created using New-NmeHostPoolUserSelfServiceDesktopImageRest

	.PARAMETER AllowRestoreDesktops

	boolean. Specify -AllowRestoreDesktops $True or -AllowRestoreDesktops $False. 

	.PARAMETER RecoveryMode

	string. Valid values are: InstantRestoresOnly, AllRecoveryPoints

	.PARAMETER AllowResizeDesktops

	boolean. Specify -AllowResizeDesktops $True or -AllowResizeDesktops $False. 

	.PARAMETER AllowedVmSizes

	array. 

	.PARAMETER AllowedDiskSizes

	array. 

	#>
	[cmdletbinding()]
	Param(
		[bool]$AllowStartDesktops,
		[bool]$AllowRestartDesktops,
		[bool]$AllowStopDesktops,
		[bool]$AllowReimageDesktops,
		[psobject[]][ValidateScript({$_.PSObject.TypeNames -contains "NmeHostPoolUserSelfServiceDesktopImageRest"})]$AllowedImages,
		[bool]$AllowRestoreDesktops,
		[ValidateSet("InstantRestoresOnly","AllRecoveryPoints")][string]$RecoveryMode,
		[bool]$AllowResizeDesktops,
		[string[]]$AllowedVmSizes,
		[string[]]$AllowedDiskSizes
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("AllowStartDesktops")){ $PropertyHash += @{AllowStartDesktops = $AllowStartDesktops} }
	if ($PSBoundParameters.containskey("AllowRestartDesktops")){ $PropertyHash += @{AllowRestartDesktops = $AllowRestartDesktops} }
	if ($PSBoundParameters.containskey("AllowStopDesktops")){ $PropertyHash += @{AllowStopDesktops = $AllowStopDesktops} }
	if ($PSBoundParameters.containskey("AllowReimageDesktops")){ $PropertyHash += @{AllowReimageDesktops = $AllowReimageDesktops} }
	if ($PSBoundParameters.containskey("AllowedImages")){ $PropertyHash += @{AllowedImages = $AllowedImages} }
	if ($PSBoundParameters.containskey("AllowRestoreDesktops")){ $PropertyHash += @{AllowRestoreDesktops = $AllowRestoreDesktops} }
	if ($PSBoundParameters.containskey("RecoveryMode")){ $PropertyHash += @{RecoveryMode = $RecoveryMode} }
	if ($PSBoundParameters.containskey("AllowResizeDesktops")){ $PropertyHash += @{AllowResizeDesktops = $AllowResizeDesktops} }
	if ($PSBoundParameters.containskey("AllowedVmSizes")){ $PropertyHash += @{AllowedVmSizes = $AllowedVmSizes} }
	if ($PSBoundParameters.containskey("AllowedDiskSizes")){ $PropertyHash += @{AllowedDiskSizes = $AllowedDiskSizes} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostPoolUserSelfServiceModelRest')
	Return $ReturnObject	
}
function New-NmeHostPoolVmDeploymentRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostPoolVmDeploymentRestModel, for use in other Nme module commands

	.PARAMETER ApplyVirtualDesktopOptimizations

	DEPRECATED

	.PARAMETER IsAcceleratedNetworkingEnabled

	boolean. Specify -IsAcceleratedNetworkingEnabled $True or -IsAcceleratedNetworkingEnabled $False. Use accelerated networking when possible

	.PARAMETER ForceVMRestart

	boolean. Specify -ForceVMRestart $True or -ForceVMRestart $False. Restart VM at the end of creation

	.PARAMETER EnableTimezoneRedirection

	boolean. Specify -EnableTimezoneRedirection $True or -EnableTimezoneRedirection $False. Enable time zone redirection

	.PARAMETER VmTimezone

	string. Set windows timezone on VM

	.PARAMETER InstallGPUDrivers

	boolean. Specify -InstallGPUDrivers $True or -InstallGPUDrivers $False. Install GPU drivers if VM have discrete GPU card

	.PARAMETER UseAvailabilityZones

	boolean. Specify -UseAvailabilityZones $True or -UseAvailabilityZones $False. Distribute VMs across availability zones in the azure region

	.PARAMETER ShadowUserAssignments

	An array of objects of type NmeHostPoolAssignmentRestModel. Can be created using New-NmeHostPoolAssignmentRestModel

	.PARAMETER IsShadowUsersEnabled

	boolean. Specify -IsShadowUsersEnabled $True or -IsShadowUsersEnabled $False. Allow session shadowing for non-admin users

	.PARAMETER EnableVmDeallocation

	boolean. Specify -EnableVmDeallocation $True or -EnableVmDeallocation $False. Enable automatic deallocation of stopped VMs

	.PARAMETER InstallCertificates

	boolean. Specify -InstallCertificates $True or -InstallCertificates $False. Install MSIX AppAttach certificates if any

	.PARAMETER ScriptedActions

	An object of type NmeHostPoolScriptedActionsRestModel. Can be created using New-NmeHostPoolScriptedActionsRestModel

	.PARAMETER AlwaysPromptForPassword

	boolean. Specify -AlwaysPromptForPassword $True or -AlwaysPromptForPassword $False. Enforce a password prompt for users logging on to Remote Desktop Services

	.PARAMETER SecurityType

	string. Valid values are: None, TrustedLaunch

	.PARAMETER SecureBootEnabled

	boolean. Specify -SecureBootEnabled $True or -SecureBootEnabled $False. Allow secure boot if Trusted launch is enabled

	.PARAMETER VTpmEnabled

	boolean. Specify -VTpmEnabled $True or -VTpmEnabled $False. Allow VTpm if Trusted launch is enabled

	.PARAMETER UseDedicatedHosts

	boolean. Specify -UseDedicatedHosts $True or -UseDedicatedHosts $False. Place VMs on Dedicated Hosts

	.PARAMETER DedicatedHostGroupId

	string. Host Group resource id

	.PARAMETER DedicatedHostId

	string. Host resource id

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][bool]$ApplyVirtualDesktopOptimizations,
		[Parameter(Mandatory=$true)][bool]$IsAcceleratedNetworkingEnabled,
		[Parameter(Mandatory=$true)][bool]$ForceVMRestart,
		[Parameter(Mandatory=$true)][bool]$EnableTimezoneRedirection,
		[string]$VmTimezone,
		[Parameter(Mandatory=$true)][bool]$InstallGPUDrivers,
		[Parameter(Mandatory=$true)][bool]$UseAvailabilityZones,
		[psobject[]][ValidateScript({$_.PSObject.TypeNames -contains "NmeHostPoolAssignmentRestModel"})]$ShadowUserAssignments,
		[Parameter(Mandatory=$true)][bool]$IsShadowUsersEnabled,
		[Parameter(Mandatory=$true)][bool]$EnableVmDeallocation,
		[Parameter(Mandatory=$true)][bool]$InstallCertificates,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeHostPoolScriptedActionsRestModel"){$true} else{throw "$_ is not a NmeHostPoolScriptedActionsRestModel object. Use New-NmeHostPoolScriptedActionsRestModel to create before calling this function"}})][psobject]$ScriptedActions,
		[Parameter(Mandatory=$true)][bool]$AlwaysPromptForPassword,
		[Parameter(Mandatory=$true)][ValidateSet("None","TrustedLaunch")][string]$SecurityType,
		[Parameter(Mandatory=$true)][bool]$SecureBootEnabled,
		[Parameter(Mandatory=$true)][bool]$VTpmEnabled,
		[Parameter(Mandatory=$true)][bool]$UseDedicatedHosts,
		[Parameter(Mandatory=$true)][string]$DedicatedHostGroupId,
		[Parameter(Mandatory=$true)][string]$DedicatedHostId
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("ApplyVirtualDesktopOptimizations")){ $PropertyHash += @{ApplyVirtualDesktopOptimizations = $ApplyVirtualDesktopOptimizations} }
	if ($PSBoundParameters.containskey("IsAcceleratedNetworkingEnabled")){ $PropertyHash += @{IsAcceleratedNetworkingEnabled = $IsAcceleratedNetworkingEnabled} }
	if ($PSBoundParameters.containskey("ForceVMRestart")){ $PropertyHash += @{ForceVMRestart = $ForceVMRestart} }
	if ($PSBoundParameters.containskey("EnableTimezoneRedirection")){ $PropertyHash += @{EnableTimezoneRedirection = $EnableTimezoneRedirection} }
	if ($PSBoundParameters.containskey("VmTimezone")){ $PropertyHash += @{VmTimezone = $VmTimezone} }
	if ($PSBoundParameters.containskey("InstallGPUDrivers")){ $PropertyHash += @{InstallGPUDrivers = $InstallGPUDrivers} }
	if ($PSBoundParameters.containskey("UseAvailabilityZones")){ $PropertyHash += @{UseAvailabilityZones = $UseAvailabilityZones} }
	if ($PSBoundParameters.containskey("ShadowUserAssignments")){ $PropertyHash += @{ShadowUserAssignments = $ShadowUserAssignments} }
	if ($PSBoundParameters.containskey("IsShadowUsersEnabled")){ $PropertyHash += @{IsShadowUsersEnabled = $IsShadowUsersEnabled} }
	if ($PSBoundParameters.containskey("EnableVmDeallocation")){ $PropertyHash += @{EnableVmDeallocation = $EnableVmDeallocation} }
	if ($PSBoundParameters.containskey("InstallCertificates")){ $PropertyHash += @{InstallCertificates = $InstallCertificates} }
	if ($PSBoundParameters.containskey("ScriptedActions")){ $PropertyHash += @{ScriptedActions = $ScriptedActions} }
	if ($PSBoundParameters.containskey("AlwaysPromptForPassword")){ $PropertyHash += @{AlwaysPromptForPassword = $AlwaysPromptForPassword} }
	if ($PSBoundParameters.containskey("SecurityType")){ $PropertyHash += @{SecurityType = $SecurityType} }
	if ($PSBoundParameters.containskey("SecureBootEnabled")){ $PropertyHash += @{SecureBootEnabled = $SecureBootEnabled} }
	if ($PSBoundParameters.containskey("VTpmEnabled")){ $PropertyHash += @{VTpmEnabled = $VTpmEnabled} }
	if ($PSBoundParameters.containskey("UseDedicatedHosts")){ $PropertyHash += @{UseDedicatedHosts = $UseDedicatedHosts} }
	if ($PSBoundParameters.containskey("DedicatedHostGroupId")){ $PropertyHash += @{DedicatedHostGroupId = $DedicatedHostGroupId} }
	if ($PSBoundParameters.containskey("DedicatedHostId")){ $PropertyHash += @{DedicatedHostId = $DedicatedHostId} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostPoolVmDeploymentRestModel')
	Return $ReturnObject	
}
function New-NmeHostPoolVmDeploymentRestPutRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostPoolVmDeploymentRestPutRequest, for use in other Nme module commands

	.PARAMETER ApplyVirtualDesktopOptimizations

	DEPRECATED

	.PARAMETER IsAcceleratedNetworkingEnabled

	boolean. Specify -IsAcceleratedNetworkingEnabled $True or -IsAcceleratedNetworkingEnabled $False. Use accelerated networking when possible

	.PARAMETER ForceVMRestart

	boolean. Specify -ForceVMRestart $True or -ForceVMRestart $False. Restart VM at the end of creation

	.PARAMETER EnableTimezoneRedirection

	boolean. Specify -EnableTimezoneRedirection $True or -EnableTimezoneRedirection $False. Enable time zone redirection

	.PARAMETER VmTimezone

	string. Set windows timezone on VM

	.PARAMETER InstallGPUDrivers

	boolean. Specify -InstallGPUDrivers $True or -InstallGPUDrivers $False. Install GPU drivers if VM have discrete GPU card

	.PARAMETER UseAvailabilityZones

	boolean. Specify -UseAvailabilityZones $True or -UseAvailabilityZones $False. Distribute VMs across availability zones in the azure region

	.PARAMETER ShadowUserAssignments

	An array of objects of type NmeHostPoolAssignmentRestModel. Can be created using New-NmeHostPoolAssignmentRestModel

	.PARAMETER IsShadowUsersEnabled

	boolean. Specify -IsShadowUsersEnabled $True or -IsShadowUsersEnabled $False. Allow session shadowing for non-admin users

	.PARAMETER EnableVmDeallocation

	boolean. Specify -EnableVmDeallocation $True or -EnableVmDeallocation $False. Enable automatic deallocation of stopped VMs

	.PARAMETER InstallCertificates

	boolean. Specify -InstallCertificates $True or -InstallCertificates $False. Install MSIX AppAttach certificates if any

	.PARAMETER ScriptedActions

	An object of type NmeHostPoolScriptedActionsRestModel. Can be created using New-NmeHostPoolScriptedActionsRestModel

	.PARAMETER AlwaysPromptForPassword

	boolean. Specify -AlwaysPromptForPassword $True or -AlwaysPromptForPassword $False. Enforce a password prompt for users logging on to Remote Desktop Services

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][bool]$ApplyVirtualDesktopOptimizations,
		[Parameter(Mandatory=$true)][bool]$IsAcceleratedNetworkingEnabled,
		[Parameter(Mandatory=$true)][bool]$ForceVMRestart,
		[Parameter(Mandatory=$true)][bool]$EnableTimezoneRedirection,
		[string]$VmTimezone,
		[Parameter(Mandatory=$true)][bool]$InstallGPUDrivers,
		[Parameter(Mandatory=$true)][bool]$UseAvailabilityZones,
		[psobject[]][ValidateScript({$_.PSObject.TypeNames -contains "NmeHostPoolAssignmentRestModel"})]$ShadowUserAssignments,
		[Parameter(Mandatory=$true)][bool]$IsShadowUsersEnabled,
		[Parameter(Mandatory=$true)][bool]$EnableVmDeallocation,
		[Parameter(Mandatory=$true)][bool]$InstallCertificates,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeHostPoolScriptedActionsRestModel"){$true} else{throw "$_ is not a NmeHostPoolScriptedActionsRestModel object. Use New-NmeHostPoolScriptedActionsRestModel to create before calling this function"}})][psobject]$ScriptedActions,
		[bool]$AlwaysPromptForPassword
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("ApplyVirtualDesktopOptimizations")){ $PropertyHash += @{ApplyVirtualDesktopOptimizations = $ApplyVirtualDesktopOptimizations} }
	if ($PSBoundParameters.containskey("IsAcceleratedNetworkingEnabled")){ $PropertyHash += @{IsAcceleratedNetworkingEnabled = $IsAcceleratedNetworkingEnabled} }
	if ($PSBoundParameters.containskey("ForceVMRestart")){ $PropertyHash += @{ForceVMRestart = $ForceVMRestart} }
	if ($PSBoundParameters.containskey("EnableTimezoneRedirection")){ $PropertyHash += @{EnableTimezoneRedirection = $EnableTimezoneRedirection} }
	if ($PSBoundParameters.containskey("VmTimezone")){ $PropertyHash += @{VmTimezone = $VmTimezone} }
	if ($PSBoundParameters.containskey("InstallGPUDrivers")){ $PropertyHash += @{InstallGPUDrivers = $InstallGPUDrivers} }
	if ($PSBoundParameters.containskey("UseAvailabilityZones")){ $PropertyHash += @{UseAvailabilityZones = $UseAvailabilityZones} }
	if ($PSBoundParameters.containskey("ShadowUserAssignments")){ $PropertyHash += @{ShadowUserAssignments = $ShadowUserAssignments} }
	if ($PSBoundParameters.containskey("IsShadowUsersEnabled")){ $PropertyHash += @{IsShadowUsersEnabled = $IsShadowUsersEnabled} }
	if ($PSBoundParameters.containskey("EnableVmDeallocation")){ $PropertyHash += @{EnableVmDeallocation = $EnableVmDeallocation} }
	if ($PSBoundParameters.containskey("InstallCertificates")){ $PropertyHash += @{InstallCertificates = $InstallCertificates} }
	if ($PSBoundParameters.containskey("ScriptedActions")){ $PropertyHash += @{ScriptedActions = $ScriptedActions} }
	if ($PSBoundParameters.containskey("AlwaysPromptForPassword")){ $PropertyHash += @{AlwaysPromptForPassword = $AlwaysPromptForPassword} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostPoolVmDeploymentRestPutRequest')
	Return $ReturnObject	
}
function New-NmeHostUsage {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostUsage, for use in other Nme module commands

	.PARAMETER HostChangeCount

	integer. 

	.PARAMETER Value

	number. 

	.PARAMETER AverageTimeRangeInMinutes

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][int]$HostChangeCount,
		[Parameter(Mandatory=$true)][float]$Value,
		[Parameter(Mandatory=$true)][int]$AverageTimeRangeInMinutes
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("HostChangeCount")){ $PropertyHash += @{HostChangeCount = $HostChangeCount} }
	if ($PSBoundParameters.containskey("Value")){ $PropertyHash += @{Value = $Value} }
	if ($PSBoundParameters.containskey("AverageTimeRangeInMinutes")){ $PropertyHash += @{AverageTimeRangeInMinutes = $AverageTimeRangeInMinutes} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostUsage')
	Return $ReturnObject	
}
function New-NmeHostUsageConfiguration {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostUsageConfiguration, for use in other Nme module commands

	.PARAMETER ScaleOut

	An object of type NmeHostUsage. Can be created using New-NmeHostUsage

	.PARAMETER ScaleIn

	An object of type NmeHostUsage. Can be created using New-NmeHostUsage

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeHostUsage"){$true} else{throw "$_ is not a NmeHostUsage object. Use New-NmeHostUsage to create before calling this function"}})][psobject]$ScaleOut,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeHostUsage"){$true} else{throw "$_ is not a NmeHostUsage object. Use New-NmeHostUsage to create before calling this function"}})][psobject]$ScaleIn
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("ScaleOut")){ $PropertyHash += @{ScaleOut = $ScaleOut} }
	if ($PSBoundParameters.containskey("ScaleIn")){ $PropertyHash += @{ScaleIn = $ScaleIn} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostUsageConfiguration')
	Return $ReturnObject	
}
function New-NmeHostpoolScheduleRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeHostpoolScheduleRestModel, for use in other Nme module commands

	.PARAMETER StartDate

	string. 

	.PARAMETER StartHour

	integer. 

	.PARAMETER StartMinutes

	integer. 

	.PARAMETER TimeZoneId

	string. 

	.PARAMETER ScheduleRecurrenceType

	string. Valid values are: Once, Daily, Weekly, Monthly, Hourly, PatchTuesday

	.PARAMETER DayOfWeekNumber

	string. Valid values are: First, Second, Third, Fourth, Last

	.PARAMETER DayOfWeek

	integer. Valid values are: 0, 1, 2, 3, 4, 5, 6

	.PARAMETER OffsetInDays

	integer. 

	.PARAMETER NextRunDateUtc

	string. 

	.PARAMETER JobType

	string. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$StartDate,
		[Parameter(Mandatory=$true)][int]$StartHour,
		[Parameter(Mandatory=$true)][int]$StartMinutes,
		[Parameter(Mandatory=$true)][string]$TimeZoneId,
		[Parameter(Mandatory=$true)][ValidateSet("Once","Daily","Weekly","Monthly","Hourly","PatchTuesday")][string]$ScheduleRecurrenceType,
		[ValidateSet("First","Second","Third","Fourth","Last")][string]$DayOfWeekNumber,
		[ValidateSet("0","1","2","3","4","5","6")][int]$DayOfWeek,
		[int]$OffsetInDays,
		[string]$NextRunDateUtc,
		[string]$JobType
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("StartDate")){ $PropertyHash += @{StartDate = $StartDate} }
	if ($PSBoundParameters.containskey("StartHour")){ $PropertyHash += @{StartHour = $StartHour} }
	if ($PSBoundParameters.containskey("StartMinutes")){ $PropertyHash += @{StartMinutes = $StartMinutes} }
	if ($PSBoundParameters.containskey("TimeZoneId")){ $PropertyHash += @{TimeZoneId = $TimeZoneId} }
	if ($PSBoundParameters.containskey("ScheduleRecurrenceType")){ $PropertyHash += @{ScheduleRecurrenceType = $ScheduleRecurrenceType} }
	if ($PSBoundParameters.containskey("DayOfWeekNumber")){ $PropertyHash += @{DayOfWeekNumber = $DayOfWeekNumber} }
	if ($PSBoundParameters.containskey("DayOfWeek")){ $PropertyHash += @{DayOfWeek = $DayOfWeek} }
	if ($PSBoundParameters.containskey("OffsetInDays")){ $PropertyHash += @{OffsetInDays = $OffsetInDays} }
	if ($PSBoundParameters.containskey("NextRunDateUtc")){ $PropertyHash += @{NextRunDateUtc = $NextRunDateUtc} }
	if ($PSBoundParameters.containskey("JobType")){ $PropertyHash += @{JobType = $JobType} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeHostpoolScheduleRestModel')
	Return $ReturnObject	
}
function New-NmeJob {
	<#

	.SYNOPSIS

	Creates an object of type NmeJob, for use in other Nme module commands

	.PARAMETER Id

	ID of scripted Action

	.PARAMETER CreationDateUtc

	string. 

	.PARAMETER JobType

	string. 

	.PARAMETER JobCategory

	string. 

	.PARAMETER JobStatus

	string. Valid values are: Pending, Running, Completed, Failed, Cancelled

	.PARAMETER JobRunMode

	string. Valid values are: Default, Restart, Cleanup

	#>
	[cmdletbinding()]
	Param(
		[int]$Id,
		[string]$CreationDateUtc,
		[string]$JobType,
		[string]$JobCategory,
		[ValidateSet("Pending","Running","Completed","Failed","Cancelled")][string]$JobStatus,
		[ValidateSet("Default","Restart","Cleanup")][string]$JobRunMode
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Id")){ $PropertyHash += @{Id = $Id} }
	if ($PSBoundParameters.containskey("CreationDateUtc")){ $PropertyHash += @{CreationDateUtc = $CreationDateUtc} }
	if ($PSBoundParameters.containskey("JobType")){ $PropertyHash += @{JobType = $JobType} }
	if ($PSBoundParameters.containskey("JobCategory")){ $PropertyHash += @{JobCategory = $JobCategory} }
	if ($PSBoundParameters.containskey("JobStatus")){ $PropertyHash += @{JobStatus = $JobStatus} }
	if ($PSBoundParameters.containskey("JobRunMode")){ $PropertyHash += @{JobRunMode = $JobRunMode} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeJob')
	Return $ReturnObject	
}
function New-NmeJobFailurePolicy {
	<#

	.SYNOPSIS

	Creates an object of type NmeJobFailurePolicy, for use in other Nme module commands

	.PARAMETER Restart

	boolean. Specify -Restart $True or -Restart $False. 

	.PARAMETER Cleanup

	boolean. Specify -Cleanup $True or -Cleanup $False. 

	#>
	[cmdletbinding()]
	Param(
		[bool]$Restart,
		[bool]$Cleanup
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Restart")){ $PropertyHash += @{Restart = $Restart} }
	if ($PSBoundParameters.containskey("Cleanup")){ $PropertyHash += @{Cleanup = $Cleanup} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeJobFailurePolicy')
	Return $ReturnObject	
}
function New-NmeJobShortInfo {
	<#

	.SYNOPSIS

	Creates an object of type NmeJobShortInfo, for use in other Nme module commands

	.PARAMETER Id

	ID of scripted Action

	.PARAMETER Status

	string. Valid values are: Pending, Running, Completed, Failed, Cancelled

	#>
	[cmdletbinding()]
	Param(
		[int]$Id,
		[ValidateSet("Pending","Running","Completed","Failed","Cancelled")][string]$Status
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Id")){ $PropertyHash += @{Id = $Id} }
	if ($PSBoundParameters.containskey("Status")){ $PropertyHash += @{Status = $Status} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeJobShortInfo')
	Return $ReturnObject	
}
function New-NmeJobTask {
	<#

	.SYNOPSIS

	Creates an object of type NmeJobTask, for use in other Nme module commands

	.PARAMETER Id

	ID of scripted Action

	.PARAMETER CreationDateUtc

	string. 

	.PARAMETER Name

	The name of the resource

	.PARAMETER Description

	string. 

	.PARAMETER Status

	string. Valid values are: Cancelled, Running, Success, Failed

	.PARAMETER ResultPlain

	string. 

	#>
	[cmdletbinding()]
	Param(
		[int]$Id,
		[string]$CreationDateUtc,
		[string]$Name,
		[string]$Description,
		[ValidateSet("Cancelled","Running","Success","Failed")][string]$Status,
		[string]$ResultPlain
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Id")){ $PropertyHash += @{Id = $Id} }
	if ($PSBoundParameters.containskey("CreationDateUtc")){ $PropertyHash += @{CreationDateUtc = $CreationDateUtc} }
	if ($PSBoundParameters.containskey("Name")){ $PropertyHash += @{Name = $Name} }
	if ($PSBoundParameters.containskey("Description")){ $PropertyHash += @{Description = $Description} }
	if ($PSBoundParameters.containskey("Status")){ $PropertyHash += @{Status = $Status} }
	if ($PSBoundParameters.containskey("ResultPlain")){ $PropertyHash += @{ResultPlain = $ResultPlain} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeJobTask')
	Return $ReturnObject	
}
function New-NmeLinkNetworkRestPayload {
	<#

	.SYNOPSIS

	Creates an object of type NmeLinkNetworkRestPayload, for use in other Nme module commands

	.PARAMETER SubscriptionId

	The id (guid) of the subscription where this resource resides

	.PARAMETER ResourceGroupName

	Resource group name

	.PARAMETER NetworkName

	string. 

	.PARAMETER SubnetName

	string. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$SubscriptionId,
		[Parameter(Mandatory=$true)][string]$ResourceGroupName,
		[Parameter(Mandatory=$true)][string]$NetworkName,
		[Parameter(Mandatory=$true)][string]$SubnetName
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("SubscriptionId")){ $PropertyHash += @{SubscriptionId = $SubscriptionId} }
	if ($PSBoundParameters.containskey("ResourceGroupName")){ $PropertyHash += @{ResourceGroupName = $ResourceGroupName} }
	if ($PSBoundParameters.containskey("NetworkName")){ $PropertyHash += @{NetworkName = $NetworkName} }
	if ($PSBoundParameters.containskey("SubnetName")){ $PropertyHash += @{SubnetName = $SubnetName} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeLinkNetworkRestPayload')
	Return $ReturnObject	
}
function New-NmeLinkResourceGroupRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeLinkResourceGroupRequest, for use in other Nme module commands

	.PARAMETER IsDefault

	boolean. Specify -IsDefault $True or -IsDefault $False. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][bool]$IsDefault
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("IsDefault")){ $PropertyHash += @{IsDefault = $IsDefault} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeLinkResourceGroupRequest')
	Return $ReturnObject	
}
function New-NmeLinkSubscriptionRestPayload {
	<#

	.SYNOPSIS

	Creates an object of type NmeLinkSubscriptionRestPayload, for use in other Nme module commands

	.PARAMETER SubscriptionId

	The id (guid) of the subscription where this resource resides

	.PARAMETER TenantId

	string. 

	.PARAMETER ServicePrincipal

	An object of type NmeServicePrincipalRestParams. Can be created using New-NmeServicePrincipalRestParams

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$SubscriptionId,
		[Parameter(Mandatory=$true)][string]$TenantId,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeServicePrincipalRestParams"){$true} else{throw "$_ is not a NmeServicePrincipalRestParams object. Use New-NmeServicePrincipalRestParams to create before calling this function"}})][psobject]$ServicePrincipal
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("SubscriptionId")){ $PropertyHash += @{SubscriptionId = $SubscriptionId} }
	if ($PSBoundParameters.containskey("TenantId")){ $PropertyHash += @{TenantId = $TenantId} }
	if ($PSBoundParameters.containskey("ServicePrincipal")){ $PropertyHash += @{ServicePrincipal = $ServicePrincipal} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeLinkSubscriptionRestPayload')
	Return $ReturnObject	
}
function New-NmeLinkedNetworkRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeLinkedNetworkRestModel, for use in other Nme module commands

	.PARAMETER DbId

	string. 

	.PARAMETER IsDefault

	boolean. Specify -IsDefault $True or -IsDefault $False. 

	.PARAMETER Name

	The name of the resource

	.PARAMETER Subnet

	string. 

	.PARAMETER Region

	string. 

	.PARAMETER SubscriptionId

	The id (guid) of the subscription where this resource resides

	.PARAMETER ResourceGroupName

	Resource group name

	#>
	[cmdletbinding()]
	Param(
		[string]$DbId,
		[bool]$IsDefault,
		[string]$Name,
		[string]$Subnet,
		[string]$Region,
		[string]$SubscriptionId,
		[string]$ResourceGroupName
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("DbId")){ $PropertyHash += @{DbId = $DbId} }
	if ($PSBoundParameters.containskey("IsDefault")){ $PropertyHash += @{IsDefault = $IsDefault} }
	if ($PSBoundParameters.containskey("Name")){ $PropertyHash += @{Name = $Name} }
	if ($PSBoundParameters.containskey("Subnet")){ $PropertyHash += @{Subnet = $Subnet} }
	if ($PSBoundParameters.containskey("Region")){ $PropertyHash += @{Region = $Region} }
	if ($PSBoundParameters.containskey("SubscriptionId")){ $PropertyHash += @{SubscriptionId = $SubscriptionId} }
	if ($PSBoundParameters.containskey("ResourceGroupName")){ $PropertyHash += @{ResourceGroupName = $ResourceGroupName} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeLinkedNetworkRestModel')
	Return $ReturnObject	
}
function New-NmeLinkedResourceGroupRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeLinkedResourceGroupRestModel, for use in other Nme module commands

	.PARAMETER DbId

	string. 

	.PARAMETER Name

	The name of the resource

	.PARAMETER IsDefault

	boolean. Specify -IsDefault $True or -IsDefault $False. 

	.PARAMETER SubscriptionId

	The id (guid) of the subscription where this resource resides

	#>
	[cmdletbinding()]
	Param(
		[string]$DbId,
		[string]$Name,
		[bool]$IsDefault,
		[string]$SubscriptionId
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("DbId")){ $PropertyHash += @{DbId = $DbId} }
	if ($PSBoundParameters.containskey("Name")){ $PropertyHash += @{Name = $Name} }
	if ($PSBoundParameters.containskey("IsDefault")){ $PropertyHash += @{IsDefault = $IsDefault} }
	if ($PSBoundParameters.containskey("SubscriptionId")){ $PropertyHash += @{SubscriptionId = $SubscriptionId} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeLinkedResourceGroupRestModel')
	Return $ReturnObject	
}
function New-NmeLinkedStorageLocationRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeLinkedStorageLocationRestModel, for use in other Nme module commands

	.PARAMETER Id

	ID of scripted Action

	.PARAMETER LocationName

	string. 

	.PARAMETER ShareName

	File share name

	.PARAMETER StorageAccountName

	string. 

	#>
	[cmdletbinding()]
	Param(
		[string]$Id,
		[string]$LocationName,
		[string]$ShareName,
		[string]$StorageAccountName
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Id")){ $PropertyHash += @{Id = $Id} }
	if ($PSBoundParameters.containskey("LocationName")){ $PropertyHash += @{LocationName = $LocationName} }
	if ($PSBoundParameters.containskey("ShareName")){ $PropertyHash += @{ShareName = $ShareName} }
	if ($PSBoundParameters.containskey("StorageAccountName")){ $PropertyHash += @{StorageAccountName = $StorageAccountName} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeLinkedStorageLocationRestModel')
	Return $ReturnObject	
}
function New-NmeLinkedSubscriptionRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeLinkedSubscriptionRestModel, for use in other Nme module commands

	.PARAMETER SubscriptionId

	The id (guid) of the subscription where this resource resides

	.PARAMETER TenantId

	string. 

	.PARAMETER AzureType

	string. Valid values are: AzureCloud, AzureUSGovernment, AzureChina

	.PARAMETER AppId

	string. 

	.PARAMETER AppsIds

	array. 

	#>
	[cmdletbinding()]
	Param(
		[string]$SubscriptionId,
		[string]$TenantId,
		[ValidateSet("AzureCloud","AzureUSGovernment","AzureChina")][string]$AzureType,
		[string]$AppId,
		[string[]]$AppsIds
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("SubscriptionId")){ $PropertyHash += @{SubscriptionId = $SubscriptionId} }
	if ($PSBoundParameters.containskey("TenantId")){ $PropertyHash += @{TenantId = $TenantId} }
	if ($PSBoundParameters.containskey("AzureType")){ $PropertyHash += @{AzureType = $AzureType} }
	if ($PSBoundParameters.containskey("AppId")){ $PropertyHash += @{AppId = $AppId} }
	if ($PSBoundParameters.containskey("AppsIds")){ $PropertyHash += @{AppsIds = $AppsIds} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeLinkedSubscriptionRestModel')
	Return $ReturnObject	
}
function New-NmeMaintenanceWindowRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeMaintenanceWindowRestModel, for use in other Nme module commands

	.PARAMETER DayOfWeek

	integer. Valid values are: 0, 1, 2, 3, 4, 5, 6

	.PARAMETER Hour

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[ValidateSet("0","1","2","3","4","5","6")][int]$DayOfWeek,
		[int]$Hour
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("DayOfWeek")){ $PropertyHash += @{DayOfWeek = $DayOfWeek} }
	if ($PSBoundParameters.containskey("Hour")){ $PropertyHash += @{Hour = $Hour} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeMaintenanceWindowRestModel')
	Return $ReturnObject	
}
function New-NmeNetAppFilesAutoscaleConfig {
	<#

	.SYNOPSIS

	Creates an object of type NmeNetAppFilesAutoscaleConfig, for use in other Nme module commands

	.PARAMETER IsEnabled

	boolean. Specify -IsEnabled $True or -IsEnabled $False. 

	.PARAMETER Unit

	string. Valid values are: Percent, SizeGb, SizeTb

	.PARAMETER Basic

	An object of type NmeNetAppFilesBasicAutoscaleConfig. Can be created using New-NmeNetAppFilesBasicAutoscaleConfig

	.PARAMETER Scaling

	An object of type NmeNetAppFilesScalingConfig. Can be created using New-NmeNetAppFilesScalingConfig

	.PARAMETER PreStage

	An object of type NmeNetAppFilesPreStageConfig. Can be created using New-NmeNetAppFilesPreStageConfig

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][bool]$IsEnabled,
		[Parameter(Mandatory=$true)][ValidateSet("Percent","SizeGb","SizeTb")][string]$Unit,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeNetAppFilesBasicAutoscaleConfig"){$true} else{throw "$_ is not a NmeNetAppFilesBasicAutoscaleConfig object. Use New-NmeNetAppFilesBasicAutoscaleConfig to create before calling this function"}})][psobject]$Basic,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeNetAppFilesScalingConfig"){$true} else{throw "$_ is not a NmeNetAppFilesScalingConfig object. Use New-NmeNetAppFilesScalingConfig to create before calling this function"}})][psobject]$Scaling,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeNetAppFilesPreStageConfig"){$true} else{throw "$_ is not a NmeNetAppFilesPreStageConfig object. Use New-NmeNetAppFilesPreStageConfig to create before calling this function"}})][psobject]$PreStage
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("IsEnabled")){ $PropertyHash += @{IsEnabled = $IsEnabled} }
	if ($PSBoundParameters.containskey("Unit")){ $PropertyHash += @{Unit = $Unit} }
	if ($PSBoundParameters.containskey("Basic")){ $PropertyHash += @{Basic = $Basic} }
	if ($PSBoundParameters.containskey("Scaling")){ $PropertyHash += @{Scaling = $Scaling} }
	if ($PSBoundParameters.containskey("PreStage")){ $PropertyHash += @{PreStage = $PreStage} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeNetAppFilesAutoscaleConfig')
	Return $ReturnObject	
}
function New-NmeNetAppFilesBasicAutoscaleConfig {
	<#

	.SYNOPSIS

	Creates an object of type NmeNetAppFilesBasicAutoscaleConfig, for use in other Nme module commands

	.PARAMETER ScalingMode

	string. Valid values are: VolumeOnly, VolumeAndPool

	.PARAMETER MinSizeBuffer

	number. 

	.PARAMETER MaxSizeLimit

	integer. 

	.PARAMETER MaxSizeBuffer

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateSet("VolumeOnly","VolumeAndPool")][string]$ScalingMode,
		[Parameter(Mandatory=$true)][float]$MinSizeBuffer,
		[Parameter(Mandatory=$true)][int]$MaxSizeLimit,
		[int]$MaxSizeBuffer
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("ScalingMode")){ $PropertyHash += @{ScalingMode = $ScalingMode} }
	if ($PSBoundParameters.containskey("MinSizeBuffer")){ $PropertyHash += @{MinSizeBuffer = $MinSizeBuffer} }
	if ($PSBoundParameters.containskey("MaxSizeLimit")){ $PropertyHash += @{MaxSizeLimit = $MaxSizeLimit} }
	if ($PSBoundParameters.containskey("MaxSizeBuffer")){ $PropertyHash += @{MaxSizeBuffer = $MaxSizeBuffer} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeNetAppFilesBasicAutoscaleConfig')
	Return $ReturnObject	
}
function New-NmeNetAppFilesPreStageConfig {
	<#

	.SYNOPSIS

	Creates an object of type NmeNetAppFilesPreStageConfig, for use in other Nme module commands

	.PARAMETER IsEnabled

	boolean. Specify -IsEnabled $True or -IsEnabled $False. 

	.PARAMETER WorkTimeSets

	An array of objects of type NmeNetAppFilesWorkTimeSetModel. Can be created using New-NmeNetAppFilesWorkTimeSetModel

	.PARAMETER TimezoneId

	string. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][bool]$IsEnabled,
		[psobject[]][ValidateScript({$_.PSObject.TypeNames -contains "NmeNetAppFilesWorkTimeSetModel"})]$WorkTimeSets,
		[string]$TimezoneId
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("IsEnabled")){ $PropertyHash += @{IsEnabled = $IsEnabled} }
	if ($PSBoundParameters.containskey("WorkTimeSets")){ $PropertyHash += @{WorkTimeSets = $WorkTimeSets} }
	if ($PSBoundParameters.containskey("TimezoneId")){ $PropertyHash += @{TimezoneId = $TimezoneId} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeNetAppFilesPreStageConfig')
	Return $ReturnObject	
}
function New-NmeNetAppFilesScalingConfig {
	<#

	.SYNOPSIS

	Creates an object of type NmeNetAppFilesScalingConfig, for use in other Nme module commands

	.PARAMETER IsEnabled

	boolean. Specify -IsEnabled $True or -IsEnabled $False. 

	.PARAMETER Trigger

	string. Valid values are: AvgReadLatency, AvgWriteLatency, AvgReadOrWriteLatency

	.PARAMETER ScaleOutBy

	integer. 

	.PARAMETER ScaleOutHighLatency

	integer. 

	.PARAMETER ScaleOutInterval

	integer. 

	.PARAMETER ScaleInBy

	integer. 

	.PARAMETER ScaleInLowLatency

	integer. 

	.PARAMETER ScaleInInterval

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][bool]$IsEnabled,
		[ValidateSet("AvgReadLatency","AvgWriteLatency","AvgReadOrWriteLatency")][string]$Trigger,
		[int]$ScaleOutBy,
		[int]$ScaleOutHighLatency,
		[int]$ScaleOutInterval,
		[int]$ScaleInBy,
		[int]$ScaleInLowLatency,
		[int]$ScaleInInterval
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("IsEnabled")){ $PropertyHash += @{IsEnabled = $IsEnabled} }
	if ($PSBoundParameters.containskey("Trigger")){ $PropertyHash += @{Trigger = $Trigger} }
	if ($PSBoundParameters.containskey("ScaleOutBy")){ $PropertyHash += @{ScaleOutBy = $ScaleOutBy} }
	if ($PSBoundParameters.containskey("ScaleOutHighLatency")){ $PropertyHash += @{ScaleOutHighLatency = $ScaleOutHighLatency} }
	if ($PSBoundParameters.containskey("ScaleOutInterval")){ $PropertyHash += @{ScaleOutInterval = $ScaleOutInterval} }
	if ($PSBoundParameters.containskey("ScaleInBy")){ $PropertyHash += @{ScaleInBy = $ScaleInBy} }
	if ($PSBoundParameters.containskey("ScaleInLowLatency")){ $PropertyHash += @{ScaleInLowLatency = $ScaleInLowLatency} }
	if ($PSBoundParameters.containskey("ScaleInInterval")){ $PropertyHash += @{ScaleInInterval = $ScaleInInterval} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeNetAppFilesScalingConfig')
	Return $ReturnObject	
}
function New-NmeNetAppFilesWorkTimeSetModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeNetAppFilesWorkTimeSetModel, for use in other Nme module commands

	.PARAMETER WorkDays

	integer. Valid values are: 0, 1, 2, 3, 4, 5, 6

	.PARAMETER StartTimeHour

	integer. 

	.PARAMETER EndTimeHour

	integer. 

	.PARAMETER MinSize

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateSet(0,1,2,3,4,5,6)][Int]$WorkDays,
		[Parameter(Mandatory=$true)][int]$StartTimeHour,
		[Parameter(Mandatory=$true)][int]$EndTimeHour,
		[Parameter(Mandatory=$true)][int]$MinSize
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("WorkDays")){ $PropertyHash += @{WorkDays = $WorkDays} }
	if ($PSBoundParameters.containskey("StartTimeHour")){ $PropertyHash += @{StartTimeHour = $StartTimeHour} }
	if ($PSBoundParameters.containskey("EndTimeHour")){ $PropertyHash += @{EndTimeHour = $EndTimeHour} }
	if ($PSBoundParameters.containskey("MinSize")){ $PropertyHash += @{MinSize = $MinSize} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeNetAppFilesWorkTimeSetModel')
	Return $ReturnObject	
}
function New-NmeNonArmHostPoolAssignmentRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeNonArmHostPoolAssignmentRequest, for use in other Nme module commands

	.PARAMETER Users

	array. 

	.PARAMETER AppGroup

	string. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string[]]$Users,
		[string]$AppGroup
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Users")){ $PropertyHash += @{Users = $Users} }
	if ($PSBoundParameters.containskey("AppGroup")){ $PropertyHash += @{AppGroup = $AppGroup} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeNonArmHostPoolAssignmentRequest')
	Return $ReturnObject	
}
function New-NmeNonArmHostPoolUnassignmentRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeNonArmHostPoolUnassignmentRequest, for use in other Nme module commands

	.PARAMETER Users

	array. 

	.PARAMETER AppGroup

	string. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string[]]$Users,
		[string]$AppGroup
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Users")){ $PropertyHash += @{Users = $Users} }
	if ($PSBoundParameters.containskey("AppGroup")){ $PropertyHash += @{AppGroup = $AppGroup} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeNonArmHostPoolUnassignmentRequest')
	Return $ReturnObject	
}
function New-NmeNonArmHostpool {
	<#

	.SYNOPSIS

	Creates an object of type NmeNonArmHostpool, for use in other Nme module commands

	.PARAMETER DynamicPoolConfig

	An object of type NmeDynamicPoolConfig. Can be created using New-NmeDynamicPoolConfig

	.PARAMETER Id

	ID of scripted Action

	#>
	[cmdletbinding()]
	Param(
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeDynamicPoolConfig"){$true} else{throw "$_ is not a NmeDynamicPoolConfig object. Use New-NmeDynamicPoolConfig to create before calling this function"}})][psobject]$DynamicPoolConfig,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeNonArmHostpoolId"){$true} else{throw "$_ is not a NmeNonArmHostpoolId object. Use New-NmeNonArmHostpoolId to create before calling this function"}})][psobject]$Id
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("DynamicPoolConfig")){ $PropertyHash += @{DynamicPoolConfig = $DynamicPoolConfig} }
	if ($PSBoundParameters.containskey("Id")){ $PropertyHash += @{Id = $Id} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeNonArmHostpool')
	Return $ReturnObject	
}
function New-NmeNonArmHostpoolId {
	<#

	.SYNOPSIS

	Creates an object of type NmeNonArmHostpoolId, for use in other Nme module commands

	.PARAMETER TenantName

	string. 

	.PARAMETER HostpoolName

	The name of the Host Pool

	#>
	[cmdletbinding()]
	Param(
		[string]$TenantName,
		[string]$HostpoolName
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("TenantName")){ $PropertyHash += @{TenantName = $TenantName} }
	if ($PSBoundParameters.containskey("HostpoolName")){ $PropertyHash += @{HostpoolName = $HostpoolName} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeNonArmHostpoolId')
	Return $ReturnObject	
}
function New-NmeNonArmSession {
	<#

	.SYNOPSIS

	Creates an object of type NmeNonArmSession, for use in other Nme module commands

	.PARAMETER SessionId

	The session id

	.PARAMETER SessionState

	string. 

	.PARAMETER Username

	Username of assigned user

	.PARAMETER HostName

	Name of AVD host

	.PARAMETER Hostpool

	An object of type NmeNonArmHostpoolId. Can be created using New-NmeNonArmHostpoolId

	#>
	[cmdletbinding()]
	Param(
		[string]$SessionId,
		[string]$SessionState,
		[string]$Username,
		[string]$HostName,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeNonArmHostpoolId"){$true} else{throw "$_ is not a NmeNonArmHostpoolId object. Use New-NmeNonArmHostpoolId to create before calling this function"}})][psobject]$Hostpool
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("SessionId")){ $PropertyHash += @{SessionId = $SessionId} }
	if ($PSBoundParameters.containskey("SessionState")){ $PropertyHash += @{SessionState = $SessionState} }
	if ($PSBoundParameters.containskey("Username")){ $PropertyHash += @{Username = $Username} }
	if ($PSBoundParameters.containskey("HostName")){ $PropertyHash += @{HostName = $HostName} }
	if ($PSBoundParameters.containskey("Hostpool")){ $PropertyHash += @{Hostpool = $Hostpool} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeNonArmSession')
	Return $ReturnObject	
}
function New-NmeNonArmSessionHost {
	<#

	.SYNOPSIS

	Creates an object of type NmeNonArmSessionHost, for use in other Nme module commands

	.PARAMETER HostName

	Name of AVD host

	.PARAMETER AssignedUser

	string. 

	.PARAMETER VmId

	string. 

	.PARAMETER PowerState

	string. 

	.PARAMETER Status

	string. Valid values are: Available, Unavailable, Shutdown, Disconnected, Upgrading, UpgradeFailed, NoHeartbeat, NotJoinedToDomain, DomainTrustRelationshipLost, SxSStackListenerNotReady, FSLogixNotHealthy, NeedsAssistance

	.PARAMETER Hostpool

	An object of type NmeNonArmHostpoolId. Can be created using New-NmeNonArmHostpoolId

	#>
	[cmdletbinding()]
	Param(
		[string]$HostName,
		[string]$AssignedUser,
		[string]$VmId,
		[string]$PowerState,
		[ValidateSet("Available","Unavailable","Shutdown","Disconnected","Upgrading","UpgradeFailed","NoHeartbeat","NotJoinedToDomain","DomainTrustRelationshipLost","SxSStackListenerNotReady","FSLogixNotHealthy","NeedsAssistance")][string]$Status,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeNonArmHostpoolId"){$true} else{throw "$_ is not a NmeNonArmHostpoolId object. Use New-NmeNonArmHostpoolId to create before calling this function"}})][psobject]$Hostpool
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("HostName")){ $PropertyHash += @{HostName = $HostName} }
	if ($PSBoundParameters.containskey("AssignedUser")){ $PropertyHash += @{AssignedUser = $AssignedUser} }
	if ($PSBoundParameters.containskey("VmId")){ $PropertyHash += @{VmId = $VmId} }
	if ($PSBoundParameters.containskey("PowerState")){ $PropertyHash += @{PowerState = $PowerState} }
	if ($PSBoundParameters.containskey("Status")){ $PropertyHash += @{Status = $Status} }
	if ($PSBoundParameters.containskey("Hostpool")){ $PropertyHash += @{Hostpool = $Hostpool} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeNonArmSessionHost')
	Return $ReturnObject	
}
function New-NmeParamBindingRest {
	<#

	.SYNOPSIS

	Creates an object of type NmeParamBindingRest, for use in other Nme module commands

	.PARAMETER Value

	string. 

	.PARAMETER IsSecure

	boolean. Specify -IsSecure $True or -IsSecure $False. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$Value,
		[Parameter(Mandatory=$true)][bool]$IsSecure
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Value")){ $PropertyHash += @{Value = $Value} }
	if ($PSBoundParameters.containskey("IsSecure")){ $PropertyHash += @{IsSecure = $IsSecure} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeParamBindingRest')
	Return $ReturnObject	
}
function New-NmePersonalAutoGrowRestConfiguration {
	<#

	.SYNOPSIS

	Creates an object of type NmePersonalAutoGrowRestConfiguration, for use in other Nme module commands

	.PARAMETER Unit

	integer. Valid values are: 0, 1

	.PARAMETER UnassignedThreshold

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateSet("0","1")][int]$Unit,
		[Parameter(Mandatory=$true)][int]$UnassignedThreshold
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Unit")){ $PropertyHash += @{Unit = $Unit} }
	if ($PSBoundParameters.containskey("UnassignedThreshold")){ $PropertyHash += @{UnassignedThreshold = $UnassignedThreshold} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmePersonalAutoGrowRestConfiguration')
	Return $ReturnObject	
}
function New-NmePersonalAutoShrinkRestConfiguration {
	<#

	.SYNOPSIS

	Creates an object of type NmePersonalAutoShrinkRestConfiguration, for use in other Nme module commands

	.PARAMETER Action

	string. Valid values are: DeleteVm

	.PARAMETER HostIdleDaysThreshold

	integer. 

	.PARAMETER DeletionDelay

	integer. 

	.PARAMETER ExludedObjects

	An array of objects of type NmeADObjectRestModel. Can be created using New-NmeADObjectRestModel

	.PARAMETER IsNotificationsEnabled

	boolean. Specify -IsNotificationsEnabled $True or -IsNotificationsEnabled $False. 

	.PARAMETER ExcludeUnassigned

	boolean. Specify -ExcludeUnassigned $True or -ExcludeUnassigned $False. 

	.PARAMETER NotificationMailbox

	string. 

	.PARAMETER AdminNotificationEmails

	array. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateSet("DeleteVm")][string]$Action,
		[Parameter(Mandatory=$true)][int]$HostIdleDaysThreshold,
		[Parameter(Mandatory=$true)][int]$DeletionDelay,
		[psobject[]][ValidateScript({$_.PSObject.TypeNames -contains "NmeADObjectRestModel"})]$ExludedObjects,
		[bool]$IsNotificationsEnabled,
		[bool]$ExcludeUnassigned,
		[string]$NotificationMailbox,
		[string[]]$AdminNotificationEmails
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Action")){ $PropertyHash += @{Action = $Action} }
	if ($PSBoundParameters.containskey("HostIdleDaysThreshold")){ $PropertyHash += @{HostIdleDaysThreshold = $HostIdleDaysThreshold} }
	if ($PSBoundParameters.containskey("DeletionDelay")){ $PropertyHash += @{DeletionDelay = $DeletionDelay} }
	if ($PSBoundParameters.containskey("ExludedObjects")){ $PropertyHash += @{ExludedObjects = $ExludedObjects} }
	if ($PSBoundParameters.containskey("IsNotificationsEnabled")){ $PropertyHash += @{IsNotificationsEnabled = $IsNotificationsEnabled} }
	if ($PSBoundParameters.containskey("ExcludeUnassigned")){ $PropertyHash += @{ExcludeUnassigned = $ExcludeUnassigned} }
	if ($PSBoundParameters.containskey("NotificationMailbox")){ $PropertyHash += @{NotificationMailbox = $NotificationMailbox} }
	if ($PSBoundParameters.containskey("AdminNotificationEmails")){ $PropertyHash += @{AdminNotificationEmails = $AdminNotificationEmails} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmePersonalAutoShrinkRestConfiguration')
	Return $ReturnObject	
}
function New-NmePersonalParams {
	<#

	.SYNOPSIS

	Creates an object of type NmePersonalParams, for use in other Nme module commands

	.PARAMETER AssignmentType

	string. Valid values are: Automatic, Direct

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateSet("Automatic","Direct")][string]$AssignmentType
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("AssignmentType")){ $PropertyHash += @{AssignmentType = $AssignmentType} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmePersonalParams')
	Return $ReturnObject	
}
function New-NmePooledParams {
	<#

	.SYNOPSIS

	Creates an object of type NmePooledParams, for use in other Nme module commands

	.PARAMETER IsDesktop

	boolean. Specify -IsDesktop $True or -IsDesktop $False. 

	.PARAMETER IsSingleUser

	boolean. Specify -IsSingleUser $True or -IsSingleUser $False. 

	.PARAMETER IsDekstop

	DEPRECATED

	#>
	[cmdletbinding()]
	Param(
		[bool]$IsDesktop,
		[Parameter(Mandatory=$true)][bool]$IsSingleUser,
		[bool]$IsDekstop
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("IsDesktop")){ $PropertyHash += @{IsDesktop = $IsDesktop} }
	if ($PSBoundParameters.containskey("IsSingleUser")){ $PropertyHash += @{IsSingleUser = $IsSingleUser} }
	if ($PSBoundParameters.containskey("IsDekstop")){ $PropertyHash += @{IsDekstop = $IsDekstop} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmePooledParams')
	Return $ReturnObject	
}
function New-NmePowerStateCommandPayload {
	<#

	.SYNOPSIS

	Creates an object of type NmePowerStateCommandPayload, for use in other Nme module commands

	.PARAMETER Command

	string. Valid values are: Restart, Stop, Start

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateSet("Restart","Stop","Start")][string]$Command
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Command")){ $PropertyHash += @{Command = $Command} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmePowerStateCommandPayload')
	Return $ReturnObject	
}
function New-NmePowerStateCommandRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmePowerStateCommandRequest, for use in other Nme module commands

	.PARAMETER JobPayload

	An object of type NmePowerStateCommandPayload. Can be created using New-NmePowerStateCommandPayload

	.PARAMETER FailurePolicy

	An object of type NmeJobFailurePolicy. Can be created using New-NmeJobFailurePolicy

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmePowerStateCommandPayload"){$true} else{throw "$_ is not a NmePowerStateCommandPayload object. Use New-NmePowerStateCommandPayload to create before calling this function"}})][psobject]$JobPayload,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeJobFailurePolicy"){$true} else{throw "$_ is not a NmeJobFailurePolicy object. Use New-NmeJobFailurePolicy to create before calling this function"}})][psobject]$FailurePolicy
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("JobPayload")){ $PropertyHash += @{JobPayload = $JobPayload} }
	if ($PSBoundParameters.containskey("FailurePolicy")){ $PropertyHash += @{FailurePolicy = $FailurePolicy} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmePowerStateCommandRequest')
	Return $ReturnObject	
}
function New-NmePreStageHostsConfigurationItem {
	<#

	.SYNOPSIS

	Creates an object of type NmePreStageHostsConfigurationItem, for use in other Nme module commands

	.PARAMETER Days

	integer. Valid values are: 0, 1, 2, 3, 4, 5, 6

	.PARAMETER StartWork

	An object of type NmeTimeIntervalWithTimeZone. Can be created using New-NmeTimeIntervalWithTimeZone

	.PARAMETER HostsToBeReady

	integer. 

	.PARAMETER PreStageDiskType

	boolean. Specify -PreStageDiskType $True or -PreStageDiskType $False. 

	.PARAMETER PreStageUnassigned

	boolean. Specify -PreStageUnassigned $True or -PreStageUnassigned $False. 

	.PARAMETER PreStageUnassignedHosts

	boolean. Specify -PreStageUnassignedHosts $True or -PreStageUnassignedHosts $False. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateSet(0,1,2,3,4,5,6)][Int]$Days,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeTimeIntervalWithTimeZone"){$true} else{throw "$_ is not a NmeTimeIntervalWithTimeZone object. Use New-NmeTimeIntervalWithTimeZone to create before calling this function"}})][psobject]$StartWork,
		[Parameter(Mandatory=$true)][int]$HostsToBeReady,
		[bool]$PreStageDiskType,
		[bool]$PreStageUnassigned,
		[bool]$PreStageUnassignedHosts
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Days")){ $PropertyHash += @{Days = $Days} }
	if ($PSBoundParameters.containskey("StartWork")){ $PropertyHash += @{StartWork = $StartWork} }
	if ($PSBoundParameters.containskey("HostsToBeReady")){ $PropertyHash += @{HostsToBeReady = $HostsToBeReady} }
	if ($PSBoundParameters.containskey("PreStageDiskType")){ $PropertyHash += @{PreStageDiskType = $PreStageDiskType} }
	if ($PSBoundParameters.containskey("PreStageUnassigned")){ $PropertyHash += @{PreStageUnassigned = $PreStageUnassigned} }
	if ($PSBoundParameters.containskey("PreStageUnassignedHosts")){ $PropertyHash += @{PreStageUnassignedHosts = $PreStageUnassignedHosts} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmePreStageHostsConfigurationItem')
	Return $ReturnObject	
}
function New-NmePreStateHostsConfiguration {
	<#

	.SYNOPSIS

	Creates an object of type NmePreStateHostsConfiguration, for use in other Nme module commands

	.PARAMETER Enable

	boolean. Specify -Enable $True or -Enable $False. 

	.PARAMETER Config

	An object of type NmePreStageHostsConfigurationItem. Can be created using New-NmePreStageHostsConfigurationItem

	.PARAMETER IsMultipleConfigsMode

	boolean. Specify -IsMultipleConfigsMode $True or -IsMultipleConfigsMode $False. 

	.PARAMETER Configs

	An array of objects of type NmePreStageHostsConfigurationItem. Can be created using New-NmePreStageHostsConfigurationItem

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][bool]$Enable,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmePreStageHostsConfigurationItem"){$true} else{throw "$_ is not a NmePreStageHostsConfigurationItem object. Use New-NmePreStageHostsConfigurationItem to create before calling this function"}})][psobject]$Config,
		[bool]$IsMultipleConfigsMode,
		[psobject[]][ValidateScript({$_.PSObject.TypeNames -contains "NmePreStageHostsConfigurationItem"})]$Configs
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Enable")){ $PropertyHash += @{Enable = $Enable} }
	if ($PSBoundParameters.containskey("Config")){ $PropertyHash += @{Config = $Config} }
	if ($PSBoundParameters.containskey("IsMultipleConfigsMode")){ $PropertyHash += @{IsMultipleConfigsMode = $IsMultipleConfigsMode} }
	if ($PSBoundParameters.containskey("Configs")){ $PropertyHash += @{Configs = $Configs} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmePreStateHostsConfiguration')
	Return $ReturnObject	
}
function New-NmeRbacAssignmentRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeRbacAssignmentRestModel, for use in other Nme module commands

	.PARAMETER ObjectId

	The GUID of an Azure AD object (user, group, or service principal) to which this RBAC role is assigned

	.PARAMETER ObjectType

	string. Valid values are: User, Group, ServicePrincipal

	.PARAMETER Role

	string. 

	.PARAMETER AvdWorkspaces

	An NmeWorkspaceScopeUpdateRestModel object, as created by New-NmeWorkspaceScopeUpdateRestModel

	#>
	[cmdletbinding()]
	Param(
		[string]$ObjectId,
		[ValidateSet("User","Group","ServicePrincipal")][string]$ObjectType,
		[string]$Role,
		[psobject[]][ValidateScript({$_.PSObject.TypeNames -contains "NmeWorkspaceScopeRestModel"})]$AvdWorkspaces
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("ObjectId")){ $PropertyHash += @{ObjectId = $ObjectId} }
	if ($PSBoundParameters.containskey("ObjectType")){ $PropertyHash += @{ObjectType = $ObjectType} }
	if ($PSBoundParameters.containskey("Role")){ $PropertyHash += @{Role = $Role} }
	if ($PSBoundParameters.containskey("AvdWorkspaces")){ $PropertyHash += @{AvdWorkspaces = $AvdWorkspaces} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeRbacAssignmentRestModel')
	Return $ReturnObject	
}
function New-NmeRbacAssignmentUpdateRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeRbacAssignmentUpdateRestModel, for use in other Nme module commands

	.PARAMETER AvdWorkspaces

	An NmeWorkspaceScopeUpdateRestModel object, as created by New-NmeWorkspaceScopeUpdateRestModel

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][psobject[]][ValidateScript({$_.PSObject.TypeNames -contains "NmeWorkspaceScopeUpdateRestModel"})]$AvdWorkspaces
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("AvdWorkspaces")){ $PropertyHash += @{AvdWorkspaces = $AvdWorkspaces} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeRbacAssignmentUpdateRestModel')
	Return $ReturnObject	
}
function New-NmeRefreshVmRestConfiguration {
	<#

	.SYNOPSIS

	Creates an object of type NmeRefreshVmRestConfiguration, for use in other Nme module commands

	.PARAMETER ImageId

	GUID of App Attach Image

	.PARAMETER AdConfigId

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[string]$ImageId,
		[int]$AdConfigId
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("ImageId")){ $PropertyHash += @{ImageId = $ImageId} }
	if ($PSBoundParameters.containskey("AdConfigId")){ $PropertyHash += @{AdConfigId = $AdConfigId} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeRefreshVmRestConfiguration')
	Return $ReturnObject	
}
function New-NmeReimageConcurrency {
	<#

	.SYNOPSIS

	Creates an object of type NmeReimageConcurrency, for use in other Nme module commands

	.PARAMETER Tasks

	integer. 

	.PARAMETER MaxFailedTasks

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][int]$Tasks,
		[Parameter(Mandatory=$true)][int]$MaxFailedTasks
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Tasks")){ $PropertyHash += @{Tasks = $Tasks} }
	if ($PSBoundParameters.containskey("MaxFailedTasks")){ $PropertyHash += @{MaxFailedTasks = $MaxFailedTasks} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeReimageConcurrency')
	Return $ReturnObject	
}
function New-NmeReimageHostPayload {
	<#

	.SYNOPSIS

	Creates an object of type NmeReimageHostPayload, for use in other Nme module commands

	.PARAMETER ReimageParams

	An object of type NmeReimageParams. Can be created using New-NmeReimageParams

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeReimageParams"){$true} else{throw "$_ is not a NmeReimageParams object. Use New-NmeReimageParams to create before calling this function"}})][psobject]$ReimageParams
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("ReimageParams")){ $PropertyHash += @{ReimageParams = $ReimageParams} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeReimageHostPayload')
	Return $ReturnObject	
}
function New-NmeReimageHostRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeReimageHostRequest, for use in other Nme module commands

	.PARAMETER JobPayload

	An object of type NmeReimageHostPayload. Can be created using New-NmeReimageHostPayload

	.PARAMETER FailurePolicy

	An object of type NmeJobFailurePolicy. Can be created using New-NmeJobFailurePolicy

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeReimageHostPayload"){$true} else{throw "$_ is not a NmeReimageHostPayload object. Use New-NmeReimageHostPayload to create before calling this function"}})][psobject]$JobPayload,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeJobFailurePolicy"){$true} else{throw "$_ is not a NmeJobFailurePolicy object. Use New-NmeJobFailurePolicy to create before calling this function"}})][psobject]$FailurePolicy
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("JobPayload")){ $PropertyHash += @{JobPayload = $JobPayload} }
	if ($PSBoundParameters.containskey("FailurePolicy")){ $PropertyHash += @{FailurePolicy = $FailurePolicy} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeReimageHostRequest')
	Return $ReturnObject	
}
function New-NmeReimageMessaging {
	<#

	.SYNOPSIS

	Creates an object of type NmeReimageMessaging, for use in other Nme module commands

	.PARAMETER Message

	string. 

	.PARAMETER DelayMinutes

	integer. 

	.PARAMETER LogOffAggressiveness

	string. Valid values are: Force, Wait

	.PARAMETER DeactivateBeforeOperation

	boolean. Specify -DeactivateBeforeOperation $True or -DeactivateBeforeOperation $False. 

	.PARAMETER TimeoutInDays

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[string]$Message,
		[int]$DelayMinutes,
		[ValidateSet("Force","Wait")][string]$LogOffAggressiveness,
		[bool]$DeactivateBeforeOperation,
		[int]$TimeoutInDays
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Message")){ $PropertyHash += @{Message = $Message} }
	if ($PSBoundParameters.containskey("DelayMinutes")){ $PropertyHash += @{DelayMinutes = $DelayMinutes} }
	if ($PSBoundParameters.containskey("LogOffAggressiveness")){ $PropertyHash += @{LogOffAggressiveness = $LogOffAggressiveness} }
	if ($PSBoundParameters.containskey("DeactivateBeforeOperation")){ $PropertyHash += @{DeactivateBeforeOperation = $DeactivateBeforeOperation} }
	if ($PSBoundParameters.containskey("TimeoutInDays")){ $PropertyHash += @{TimeoutInDays = $TimeoutInDays} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeReimageMessaging')
	Return $ReturnObject	
}
function New-NmeReimageParams {
	<#

	.SYNOPSIS

	Creates an object of type NmeReimageParams, for use in other Nme module commands

	.PARAMETER Image

	string. 

	.PARAMETER VmSize

	string. 

	.PARAMETER StorageType

	string. 

	.PARAMETER DiskSize

	integer. 

	.PARAMETER HasEphemeralOSDisk

	boolean. Specify -HasEphemeralOSDisk $True or -HasEphemeralOSDisk $False. 

	.PARAMETER SetToDrainModeWhileProcessing

	boolean. Specify -SetToDrainModeWhileProcessing $True or -SetToDrainModeWhileProcessing $False. 

	.PARAMETER EphemeralOSDiskPlacement

	string. Valid values are: CacheDisk, ResourceDisk

	#>
	[cmdletbinding()]
	Param(
		[string]$Image,
		[string]$VmSize,
		[string]$StorageType,
		[int]$DiskSize,
		[bool]$HasEphemeralOSDisk,
		[bool]$SetToDrainModeWhileProcessing,
		[ValidateSet("CacheDisk","ResourceDisk")][string]$EphemeralOSDiskPlacement
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Image")){ $PropertyHash += @{Image = $Image} }
	if ($PSBoundParameters.containskey("VmSize")){ $PropertyHash += @{VmSize = $VmSize} }
	if ($PSBoundParameters.containskey("StorageType")){ $PropertyHash += @{StorageType = $StorageType} }
	if ($PSBoundParameters.containskey("DiskSize")){ $PropertyHash += @{DiskSize = $DiskSize} }
	if ($PSBoundParameters.containskey("HasEphemeralOSDisk")){ $PropertyHash += @{HasEphemeralOSDisk = $HasEphemeralOSDisk} }
	if ($PSBoundParameters.containskey("SetToDrainModeWhileProcessing")){ $PropertyHash += @{SetToDrainModeWhileProcessing = $SetToDrainModeWhileProcessing} }
	if ($PSBoundParameters.containskey("EphemeralOSDiskPlacement")){ $PropertyHash += @{EphemeralOSDiskPlacement = $EphemeralOSDiskPlacement} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeReimageParams')
	Return $ReturnObject	
}
function New-NmeReimagePoolPayload {
	<#

	.SYNOPSIS

	Creates an object of type NmeReimagePoolPayload, for use in other Nme module commands

	.PARAMETER ReimageParams

	An object of type NmeReimageParams. Can be created using New-NmeReimageParams

	.PARAMETER Concurrency

	An object of type NmeReimageConcurrency. Can be created using New-NmeReimageConcurrency

	.PARAMETER Messaging

	An object of type NmeReimageMessaging. Can be created using New-NmeReimageMessaging

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeReimageParams"){$true} else{throw "$_ is not a NmeReimageParams object. Use New-NmeReimageParams to create before calling this function"}})][psobject]$ReimageParams,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeReimageConcurrency"){$true} else{throw "$_ is not a NmeReimageConcurrency object. Use New-NmeReimageConcurrency to create before calling this function"}})][psobject]$Concurrency,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeReimageMessaging"){$true} else{throw "$_ is not a NmeReimageMessaging object. Use New-NmeReimageMessaging to create before calling this function"}})][psobject]$Messaging
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("ReimageParams")){ $PropertyHash += @{ReimageParams = $ReimageParams} }
	if ($PSBoundParameters.containskey("Concurrency")){ $PropertyHash += @{Concurrency = $Concurrency} }
	if ($PSBoundParameters.containskey("Messaging")){ $PropertyHash += @{Messaging = $Messaging} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeReimagePoolPayload')
	Return $ReturnObject	
}
function New-NmeReimagePoolRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeReimagePoolRequest, for use in other Nme module commands

	.PARAMETER JobPayload

	An object of type NmeReimagePoolPayload. Can be created using New-NmeReimagePoolPayload

	.PARAMETER FailurePolicy

	An object of type NmeJobFailurePolicy. Can be created using New-NmeJobFailurePolicy

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeReimagePoolPayload"){$true} else{throw "$_ is not a NmeReimagePoolPayload object. Use New-NmeReimagePoolPayload to create before calling this function"}})][psobject]$JobPayload,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeJobFailurePolicy"){$true} else{throw "$_ is not a NmeJobFailurePolicy object. Use New-NmeJobFailurePolicy to create before calling this function"}})][psobject]$FailurePolicy
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("JobPayload")){ $PropertyHash += @{JobPayload = $JobPayload} }
	if ($PSBoundParameters.containskey("FailurePolicy")){ $PropertyHash += @{FailurePolicy = $FailurePolicy} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeReimagePoolRequest')
	Return $ReturnObject	
}
function New-NmeReimageScheduledBulkJobParams {
	<#

	.SYNOPSIS

	Creates an object of type NmeReimageScheduledBulkJobParams, for use in other Nme module commands

	.PARAMETER JobParams

	An object of type NmeReimageParams. Can be created using New-NmeReimageParams

	.PARAMETER Schedule

	An object of type NmeHostpoolScheduleRestModel. Can be created using New-NmeHostpoolScheduleRestModel

	.PARAMETER BulkJobParams

	An object of type NmeBulkJobParamsWithLogOffAggresiveness. Can be created using New-NmeBulkJobParamsWithLogOffAggresiveness

	#>
	[cmdletbinding()]
	Param(
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeReimageParams"){$true} else{throw "$_ is not a NmeReimageParams object. Use New-NmeReimageParams to create before calling this function"}})][psobject]$JobParams,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeHostpoolScheduleRestModel"){$true} else{throw "$_ is not a NmeHostpoolScheduleRestModel object. Use New-NmeHostpoolScheduleRestModel to create before calling this function"}})][psobject]$Schedule,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeBulkJobParamsWithLogOffAggresiveness"){$true} else{throw "$_ is not a NmeBulkJobParamsWithLogOffAggresiveness object. Use New-NmeBulkJobParamsWithLogOffAggresiveness to create before calling this function"}})][psobject]$BulkJobParams
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("JobParams")){ $PropertyHash += @{JobParams = $JobParams} }
	if ($PSBoundParameters.containskey("Schedule")){ $PropertyHash += @{Schedule = $Schedule} }
	if ($PSBoundParameters.containskey("BulkJobParams")){ $PropertyHash += @{BulkJobParams = $BulkJobParams} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeReimageScheduledBulkJobParams')
	Return $ReturnObject	
}
function New-NmeRemoveSessionHostPayload {
	<#

	.SYNOPSIS

	Creates an object of type NmeRemoveSessionHostPayload, for use in other Nme module commands

	.PARAMETER SkipAdRemoval

	boolean. Specify -SkipAdRemoval $True or -SkipAdRemoval $False. 

	.PARAMETER ForceRemoveWVDRecord

	boolean. Specify -ForceRemoveWVDRecord $True or -ForceRemoveWVDRecord $False. 

	.PARAMETER RemoveUsedVmName

	boolean. Specify -RemoveUsedVmName $True or -RemoveUsedVmName $False. 

	#>
	[cmdletbinding()]
	Param(
		[bool]$SkipAdRemoval,
		[bool]$ForceRemoveWVDRecord,
		[bool]$RemoveUsedVmName
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("SkipAdRemoval")){ $PropertyHash += @{SkipAdRemoval = $SkipAdRemoval} }
	if ($PSBoundParameters.containskey("ForceRemoveWVDRecord")){ $PropertyHash += @{ForceRemoveWVDRecord = $ForceRemoveWVDRecord} }
	if ($PSBoundParameters.containskey("RemoveUsedVmName")){ $PropertyHash += @{RemoveUsedVmName = $RemoveUsedVmName} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeRemoveSessionHostPayload')
	Return $ReturnObject	
}
function New-NmeRemoveSessionHostRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeRemoveSessionHostRequest, for use in other Nme module commands

	.PARAMETER JobPayload

	An object of type NmeRemoveSessionHostPayload. Can be created using New-NmeRemoveSessionHostPayload

	.PARAMETER FailurePolicy

	An object of type NmeJobFailurePolicy. Can be created using New-NmeJobFailurePolicy

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeRemoveSessionHostPayload"){$true} else{throw "$_ is not a NmeRemoveSessionHostPayload object. Use New-NmeRemoveSessionHostPayload to create before calling this function"}})][psobject]$JobPayload,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeJobFailurePolicy"){$true} else{throw "$_ is not a NmeJobFailurePolicy object. Use New-NmeJobFailurePolicy to create before calling this function"}})][psobject]$FailurePolicy
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("JobPayload")){ $PropertyHash += @{JobPayload = $JobPayload} }
	if ($PSBoundParameters.containskey("FailurePolicy")){ $PropertyHash += @{FailurePolicy = $FailurePolicy} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeRemoveSessionHostRequest')
	Return $ReturnObject	
}
function New-NmeResponseWithJob {
	<#

	.SYNOPSIS

	Creates an object of type NmeResponseWithJob, for use in other Nme module commands

	.PARAMETER Job

	An object of type NmeJobShortInfo. Can be created using New-NmeJobShortInfo

	#>
	[cmdletbinding()]
	Param(
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeJobShortInfo"){$true} else{throw "$_ is not a NmeJobShortInfo object. Use New-NmeJobShortInfo to create before calling this function"}})][psobject]$Job
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Job")){ $PropertyHash += @{Job = $Job} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeResponseWithJob')
	Return $ReturnObject	
}
function New-NmeResponseWithJobAndAppAttachImageRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeResponseWithJobAndAppAttachImageRestModel, for use in other Nme module commands

	.PARAMETER Job

	An object of type NmeJobShortInfo. Can be created using New-NmeJobShortInfo

	.PARAMETER Payload

	An object of type NmeAppAttachImageRestModel. Can be created using New-NmeAppAttachImageRestModel

	#>
	[cmdletbinding()]
	Param(
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeJobShortInfo"){$true} else{throw "$_ is not a NmeJobShortInfo object. Use New-NmeJobShortInfo to create before calling this function"}})][psobject]$Job,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeAppAttachImageRestModel"){$true} else{throw "$_ is not a NmeAppAttachImageRestModel object. Use New-NmeAppAttachImageRestModel to create before calling this function"}})][psobject]$Payload
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Job")){ $PropertyHash += @{Job = $Job} }
	if ($PSBoundParameters.containskey("Payload")){ $PropertyHash += @{Payload = $Payload} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeResponseWithJobAndAppAttachImageRestModel')
	Return $ReturnObject	
}
function New-NmeResponseWithJobAndArmWorkspace {
	<#

	.SYNOPSIS

	Creates an object of type NmeResponseWithJobAndArmWorkspace, for use in other Nme module commands

	.PARAMETER Job

	An object of type NmeJobShortInfo. Can be created using New-NmeJobShortInfo

	.PARAMETER Payload

	An object of type NmeArmWorkspace. Can be created using New-NmeArmWorkspace

	#>
	[cmdletbinding()]
	Param(
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeJobShortInfo"){$true} else{throw "$_ is not a NmeJobShortInfo object. Use New-NmeJobShortInfo to create before calling this function"}})][psobject]$Job,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeArmWorkspace"){$true} else{throw "$_ is not a NmeArmWorkspace object. Use New-NmeArmWorkspace to create before calling this function"}})][psobject]$Payload
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Job")){ $PropertyHash += @{Job = $Job} }
	if ($PSBoundParameters.containskey("Payload")){ $PropertyHash += @{Payload = $Payload} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeResponseWithJobAndArmWorkspace')
	Return $ReturnObject	
}
function New-NmeResponseWithJobAndRbacAssignmentRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeResponseWithJobAndRbacAssignmentRestModel, for use in other Nme module commands

	.PARAMETER Job

	An object of type NmeJobShortInfo. Can be created using New-NmeJobShortInfo

	.PARAMETER Payload

	An object of type NmeRbacAssignmentRestModel. Can be created using New-NmeRbacAssignmentRestModel

	#>
	[cmdletbinding()]
	Param(
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeJobShortInfo"){$true} else{throw "$_ is not a NmeJobShortInfo object. Use New-NmeJobShortInfo to create before calling this function"}})][psobject]$Job,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeRbacAssignmentRestModel"){$true} else{throw "$_ is not a NmeRbacAssignmentRestModel object. Use New-NmeRbacAssignmentRestModel to create before calling this function"}})][psobject]$Payload
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Job")){ $PropertyHash += @{Job = $Job} }
	if ($PSBoundParameters.containskey("Payload")){ $PropertyHash += @{Payload = $Payload} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeResponseWithJobAndRbacAssignmentRestModel')
	Return $ReturnObject	
}
function New-NmeResponseWithJobAndScriptedAction {
	<#

	.SYNOPSIS

	Creates an object of type NmeResponseWithJobAndScriptedAction, for use in other Nme module commands

	.PARAMETER Job

	An object of type NmeJobShortInfo. Can be created using New-NmeJobShortInfo

	.PARAMETER Payload

	An object of type NmeScriptedAction. Can be created using New-NmeScriptedAction

	#>
	[cmdletbinding()]
	Param(
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeJobShortInfo"){$true} else{throw "$_ is not a NmeJobShortInfo object. Use New-NmeJobShortInfo to create before calling this function"}})][psobject]$Job,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeScriptedAction"){$true} else{throw "$_ is not a NmeScriptedAction object. Use New-NmeScriptedAction to create before calling this function"}})][psobject]$Payload
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Job")){ $PropertyHash += @{Job = $Job} }
	if ($PSBoundParameters.containskey("Payload")){ $PropertyHash += @{Payload = $Payload} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeResponseWithJobAndScriptedAction')
	Return $ReturnObject	
}
function New-NmeResponseWithMultipleJobs_BackwardCompatibility {
	<#

	.SYNOPSIS

	Creates an object of type NmeResponseWithMultipleJobs_BackwardCompatibility, for use in other Nme module commands

	.PARAMETER Jobs

	An array of objects of type NmeJobShortInfo. Can be created using New-NmeJobShortInfo

	.PARAMETER Job

	An object of type NmeJobShortInfo. Can be created using New-NmeJobShortInfo

	#>
	[cmdletbinding()]
	Param(
		[psobject[]][ValidateScript({$_.PSObject.TypeNames -contains "NmeJobShortInfo"})]$Jobs,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeJobShortInfo"){$true} else{throw "$_ is not a NmeJobShortInfo object. Use New-NmeJobShortInfo to create before calling this function"}})][psobject]$Job
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Jobs")){ $PropertyHash += @{Jobs = $Jobs} }
	if ($PSBoundParameters.containskey("Job")){ $PropertyHash += @{Job = $Job} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeResponseWithMultipleJobs_BackwardCompatibility')
	Return $ReturnObject	
}
function New-NmeRunAzureScripedActionPayload {
	<#

	.SYNOPSIS

	Creates an object of type NmeRunAzureScripedActionPayload, for use in other Nme module commands

	.PARAMETER SubscriptionId

	The id (guid) of the subscription where this resource resides

	.PARAMETER AdConfigId

	integer. 

	.PARAMETER MinutesToWait

	integer. 

	.PARAMETER ParamsBindings

	object. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$SubscriptionId,
		[int]$AdConfigId,
		[int]$MinutesToWait,
		$ParamsBindings
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("SubscriptionId")){ $PropertyHash += @{SubscriptionId = $SubscriptionId} }
	if ($PSBoundParameters.containskey("AdConfigId")){ $PropertyHash += @{AdConfigId = $AdConfigId} }
	if ($PSBoundParameters.containskey("MinutesToWait")){ $PropertyHash += @{MinutesToWait = $MinutesToWait} }
	if ($PSBoundParameters.containskey("ParamsBindings")){ $PropertyHash += @{ParamsBindings = $ParamsBindings} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeRunAzureScripedActionPayload')
	Return $ReturnObject	
}
function New-NmeRunCustomScriptOnVmRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeRunCustomScriptOnVmRestModel, for use in other Nme module commands

	.PARAMETER ScriptedActionsIds

	Array of integers, listed under the ID column in Nerdio Manager Scripted Actions. Can be retrieved by running Get-NmeScriptedActions

	.PARAMETER ActiveDirectoryId

	ID of Active Directory profile to be sent with this scripted action. Can be retrieved by running Get-NmeAdConfig

	.PARAMETER RestartVm

	Specify a boolean value. Use -restartVM $True if you wish to restart the VM after executing the script

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][int[]]$ScriptedActionsIds,
		[int]$ActiveDirectoryId,
		[Parameter(Mandatory=$true)][bool]$RestartVm
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("ScriptedActionsIds")){ $PropertyHash += @{ScriptedActionsIds = $ScriptedActionsIds} }
	if ($PSBoundParameters.containskey("ActiveDirectoryId")){ $PropertyHash += @{ActiveDirectoryId = $ActiveDirectoryId} }
	if ($PSBoundParameters.containskey("RestartVm")){ $PropertyHash += @{RestartVm = $RestartVm} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeRunCustomScriptOnVmRestModel')
	Return $ReturnObject	
}
function New-NmeRunHostPoolScriptRestPayload {
	<#

	.SYNOPSIS

	Creates an object of type NmeRunHostPoolScriptRestPayload, for use in other Nme module commands

	.PARAMETER Config

	An object of type NmeRunScriptParams. Can be created using New-NmeRunScriptParams

	.PARAMETER BulkJobParams

	An object of type NmeBulkJobParamsWithRestartAndHosts. Can be created using New-NmeBulkJobParamsWithRestartAndHosts

	#>
	[cmdletbinding()]
	Param(
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeRunScriptParams"){$true} else{throw "$_ is not a NmeRunScriptParams object. Use New-NmeRunScriptParams to create before calling this function"}})][psobject]$Config,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeBulkJobParamsWithRestartAndHosts"){$true} else{throw "$_ is not a NmeBulkJobParamsWithRestartAndHosts object. Use New-NmeBulkJobParamsWithRestartAndHosts to create before calling this function"}})][psobject]$BulkJobParams
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Config")){ $PropertyHash += @{Config = $Config} }
	if ($PSBoundParameters.containskey("BulkJobParams")){ $PropertyHash += @{BulkJobParams = $BulkJobParams} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeRunHostPoolScriptRestPayload')
	Return $ReturnObject	
}
function New-NmeRunHostPoolScriptRestRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeRunHostPoolScriptRestRequest, for use in other Nme module commands

	.PARAMETER JobPayload

	An object of type NmeRunHostPoolScriptRestPayload. Can be created using New-NmeRunHostPoolScriptRestPayload

	.PARAMETER FailurePolicy

	An object of type NmeJobFailurePolicy. Can be created using New-NmeJobFailurePolicy

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeRunHostPoolScriptRestPayload"){$true} else{throw "$_ is not a NmeRunHostPoolScriptRestPayload object. Use New-NmeRunHostPoolScriptRestPayload to create before calling this function"}})][psobject]$JobPayload,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeJobFailurePolicy"){$true} else{throw "$_ is not a NmeJobFailurePolicy object. Use New-NmeJobFailurePolicy to create before calling this function"}})][psobject]$FailurePolicy
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("JobPayload")){ $PropertyHash += @{JobPayload = $JobPayload} }
	if ($PSBoundParameters.containskey("FailurePolicy")){ $PropertyHash += @{FailurePolicy = $FailurePolicy} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeRunHostPoolScriptRestRequest')
	Return $ReturnObject	
}
function New-NmeRunScriptParams {
	<#

	.SYNOPSIS

	Creates an object of type NmeRunScriptParams, for use in other Nme module commands

	.PARAMETER ActiveDirectoryId

	ID of Active Directory profile to be sent with this scripted action. Can be retrieved by running Get-NmeAdConfig

	.PARAMETER ScriptedActionsIds

	Array of integers, listed under the ID column in Nerdio Manager Scripted Actions. Can be retrieved by running Get-NmeScriptedActions

	#>
	[cmdletbinding()]
	Param(
		[int]$ActiveDirectoryId,
		[int[]]$ScriptedActionsIds
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("ActiveDirectoryId")){ $PropertyHash += @{ActiveDirectoryId = $ActiveDirectoryId} }
	if ($PSBoundParameters.containskey("ScriptedActionsIds")){ $PropertyHash += @{ScriptedActionsIds = $ScriptedActionsIds} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeRunScriptParams')
	Return $ReturnObject	
}
function New-NmeRunScriptScheduledBulkJobParams {
	<#

	.SYNOPSIS

	Creates an object of type NmeRunScriptScheduledBulkJobParams, for use in other Nme module commands

	.PARAMETER JobParams

	An object of type NmeRunScriptParams. Can be created using New-NmeRunScriptParams

	.PARAMETER Schedule

	An object of type NmeHostpoolScheduleRestModel. Can be created using New-NmeHostpoolScheduleRestModel

	.PARAMETER BulkJobParams

	An object of type NmeBulkJobParamsWithRestart. Can be created using New-NmeBulkJobParamsWithRestart

	#>
	[cmdletbinding()]
	Param(
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeRunScriptParams"){$true} else{throw "$_ is not a NmeRunScriptParams object. Use New-NmeRunScriptParams to create before calling this function"}})][psobject]$JobParams,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeHostpoolScheduleRestModel"){$true} else{throw "$_ is not a NmeHostpoolScheduleRestModel object. Use New-NmeHostpoolScheduleRestModel to create before calling this function"}})][psobject]$Schedule,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeBulkJobParamsWithRestart"){$true} else{throw "$_ is not a NmeBulkJobParamsWithRestart object. Use New-NmeBulkJobParamsWithRestart to create before calling this function"}})][psobject]$BulkJobParams
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("JobParams")){ $PropertyHash += @{JobParams = $JobParams} }
	if ($PSBoundParameters.containskey("Schedule")){ $PropertyHash += @{Schedule = $Schedule} }
	if ($PSBoundParameters.containskey("BulkJobParams")){ $PropertyHash += @{BulkJobParams = $BulkJobParams} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeRunScriptScheduledBulkJobParams')
	Return $ReturnObject	
}
function New-NmeScaleIntimeRestrictionConfiguration {
	<#

	.SYNOPSIS

	Creates an object of type NmeScaleIntimeRestrictionConfiguration, for use in other Nme module commands

	.PARAMETER Enable

	boolean. Specify -Enable $True or -Enable $False. 

	.PARAMETER TimeRange

	An object of type NmeTimeRangeWithTimeZone. Can be created using New-NmeTimeRangeWithTimeZone

	.PARAMETER PutToDrainMode

	boolean. Specify -PutToDrainMode $True or -PutToDrainMode $False. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][bool]$Enable,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeTimeRangeWithTimeZone"){$true} else{throw "$_ is not a NmeTimeRangeWithTimeZone object. Use New-NmeTimeRangeWithTimeZone to create before calling this function"}})][psobject]$TimeRange,
		[bool]$PutToDrainMode
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Enable")){ $PropertyHash += @{Enable = $Enable} }
	if ($PSBoundParameters.containskey("TimeRange")){ $PropertyHash += @{TimeRange = $TimeRange} }
	if ($PSBoundParameters.containskey("PutToDrainMode")){ $PropertyHash += @{PutToDrainMode = $PutToDrainMode} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeScaleIntimeRestrictionConfiguration')
	Return $ReturnObject	
}
function New-NmeScheduleAzureScripedActionPayload {
	<#

	.SYNOPSIS

	Creates an object of type NmeScheduleAzureScripedActionPayload, for use in other Nme module commands

	.PARAMETER Schedule

	An object of type NmeScheduleConfigurationPayloadRest. Can be created using New-NmeScheduleConfigurationPayloadRest

	.PARAMETER Config

	An object of type NmeRunAzureScripedActionPayload. Can be created using New-NmeRunAzureScripedActionPayload

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeScheduleConfigurationPayloadRest"){$true} else{throw "$_ is not a NmeScheduleConfigurationPayloadRest object. Use New-NmeScheduleConfigurationPayloadRest to create before calling this function"}})][psobject]$Schedule,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeRunAzureScripedActionPayload"){$true} else{throw "$_ is not a NmeRunAzureScripedActionPayload object. Use New-NmeRunAzureScripedActionPayload to create before calling this function"}})][psobject]$Config
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Schedule")){ $PropertyHash += @{Schedule = $Schedule} }
	if ($PSBoundParameters.containskey("Config")){ $PropertyHash += @{Config = $Config} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeScheduleAzureScripedActionPayload')
	Return $ReturnObject	
}
function New-NmeScheduleConfigurationPayloadRest {
	<#

	.SYNOPSIS

	Creates an object of type NmeScheduleConfigurationPayloadRest, for use in other Nme module commands

	.PARAMETER StartDate

	string. 

	.PARAMETER StartHour

	integer. 

	.PARAMETER StartMinutes

	integer. 

	.PARAMETER TimeZoneId

	string. 

	.PARAMETER ScheduleRecurrenceType

	string. Valid values are: Once, Daily, Weekly, Monthly, Hourly, PatchTuesday

	.PARAMETER DayOfWeekNumber

	string. Valid values are: First, Second, Third, Fourth, Last

	.PARAMETER DayOfWeek

	integer. Valid values are: 0, 1, 2, 3, 4, 5, 6

	.PARAMETER OffsetInDays

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$StartDate,
		[Parameter(Mandatory=$true)][int]$StartHour,
		[Parameter(Mandatory=$true)][int]$StartMinutes,
		[Parameter(Mandatory=$true)][string]$TimeZoneId,
		[Parameter(Mandatory=$true)][ValidateSet("Once","Daily","Weekly","Monthly","Hourly","PatchTuesday")][string]$ScheduleRecurrenceType,
		[ValidateSet("First","Second","Third","Fourth","Last")][string]$DayOfWeekNumber,
		[ValidateSet("0","1","2","3","4","5","6")][int]$DayOfWeek,
		[int]$OffsetInDays
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("StartDate")){ $PropertyHash += @{StartDate = $StartDate} }
	if ($PSBoundParameters.containskey("StartHour")){ $PropertyHash += @{StartHour = $StartHour} }
	if ($PSBoundParameters.containskey("StartMinutes")){ $PropertyHash += @{StartMinutes = $StartMinutes} }
	if ($PSBoundParameters.containskey("TimeZoneId")){ $PropertyHash += @{TimeZoneId = $TimeZoneId} }
	if ($PSBoundParameters.containskey("ScheduleRecurrenceType")){ $PropertyHash += @{ScheduleRecurrenceType = $ScheduleRecurrenceType} }
	if ($PSBoundParameters.containskey("DayOfWeekNumber")){ $PropertyHash += @{DayOfWeekNumber = $DayOfWeekNumber} }
	if ($PSBoundParameters.containskey("DayOfWeek")){ $PropertyHash += @{DayOfWeek = $DayOfWeek} }
	if ($PSBoundParameters.containskey("OffsetInDays")){ $PropertyHash += @{OffsetInDays = $OffsetInDays} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeScheduleConfigurationPayloadRest')
	Return $ReturnObject	
}
function New-NmeScheduleHostPoolScriptRestPayload {
	<#

	.SYNOPSIS

	Creates an object of type NmeScheduleHostPoolScriptRestPayload, for use in other Nme module commands

	.PARAMETER Config

	An object of type NmeRunScriptParams. Can be created using New-NmeRunScriptParams

	.PARAMETER BulkJobParams

	An object of type NmeBulkJobParamsWithRestart. Can be created using New-NmeBulkJobParamsWithRestart

	.PARAMETER Schedule

	An object of type NmeScheduleConfigurationPayloadRest. Can be created using New-NmeScheduleConfigurationPayloadRest

	#>
	[cmdletbinding()]
	Param(
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeRunScriptParams"){$true} else{throw "$_ is not a NmeRunScriptParams object. Use New-NmeRunScriptParams to create before calling this function"}})][psobject]$Config,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeBulkJobParamsWithRestart"){$true} else{throw "$_ is not a NmeBulkJobParamsWithRestart object. Use New-NmeBulkJobParamsWithRestart to create before calling this function"}})][psobject]$BulkJobParams,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeScheduleConfigurationPayloadRest"){$true} else{throw "$_ is not a NmeScheduleConfigurationPayloadRest object. Use New-NmeScheduleConfigurationPayloadRest to create before calling this function"}})][psobject]$Schedule
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Config")){ $PropertyHash += @{Config = $Config} }
	if ($PSBoundParameters.containskey("BulkJobParams")){ $PropertyHash += @{BulkJobParams = $BulkJobParams} }
	if ($PSBoundParameters.containskey("Schedule")){ $PropertyHash += @{Schedule = $Schedule} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeScheduleHostPoolScriptRestPayload')
	Return $ReturnObject	
}
function New-NmeScheduleReimagePoolRestPayload {
	<#

	.SYNOPSIS

	Creates an object of type NmeScheduleReimagePoolRestPayload, for use in other Nme module commands

	.PARAMETER Reimage

	An object of type NmeReimagePoolPayload. Can be created using New-NmeReimagePoolPayload

	.PARAMETER Schedule

	An object of type NmeScheduleConfigurationPayloadRest. Can be created using New-NmeScheduleConfigurationPayloadRest

	#>
	[cmdletbinding()]
	Param(
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeReimagePoolPayload"){$true} else{throw "$_ is not a NmeReimagePoolPayload object. Use New-NmeReimagePoolPayload to create before calling this function"}})][psobject]$Reimage,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeScheduleConfigurationPayloadRest"){$true} else{throw "$_ is not a NmeScheduleConfigurationPayloadRest object. Use New-NmeScheduleConfigurationPayloadRest to create before calling this function"}})][psobject]$Schedule
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Reimage")){ $PropertyHash += @{Reimage = $Reimage} }
	if ($PSBoundParameters.containskey("Schedule")){ $PropertyHash += @{Schedule = $Schedule} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeScheduleReimagePoolRestPayload')
	Return $ReturnObject	
}
function New-NmeScheduleRunCustomScriptOnVmRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeScheduleRunCustomScriptOnVmRestModel, for use in other Nme module commands

	.PARAMETER Schedule

	An object of type NmeScheduleConfigurationPayloadRest. Can be created using New-NmeScheduleConfigurationPayloadRest

	.PARAMETER Config

	An object of type NmeRunCustomScriptOnVmRestModel. Can be created using New-NmeRunCustomScriptOnVmRestModel

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeScheduleConfigurationPayloadRest"){$true} else{throw "$_ is not a NmeScheduleConfigurationPayloadRest object. Use New-NmeScheduleConfigurationPayloadRest to create before calling this function"}})][psobject]$Schedule,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeRunCustomScriptOnVmRestModel"){$true} else{throw "$_ is not a NmeRunCustomScriptOnVmRestModel object. Use New-NmeRunCustomScriptOnVmRestModel to create before calling this function"}})][psobject]$Config
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Schedule")){ $PropertyHash += @{Schedule = $Schedule} }
	if ($PSBoundParameters.containskey("Config")){ $PropertyHash += @{Config = $Config} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeScheduleRunCustomScriptOnVmRestModel')
	Return $ReturnObject	
}
function New-NmeScriptedAction {
	<#

	.SYNOPSIS

	Creates an object of type NmeScriptedAction, for use in other Nme module commands

	.PARAMETER Id

	ID of scripted Action

	.PARAMETER Name

	The name of the resource

	.PARAMETER Description

	string. 

	.PARAMETER Script

	string. 

	.PARAMETER ExecutionMode

	string. Valid values are: Combined, Individual, IndividualWithRestart

	.PARAMETER ExecutionEnvironment

	string. Valid values are: CustomScript, AzureAutomation

	.PARAMETER ExecutionTimeout

	integer. 

	.PARAMETER Tags

	array. 

	#>
	[cmdletbinding()]
	Param(
		[int]$Id,
		[string]$Name,
		[string]$Description,
		[string]$Script,
		[ValidateSet("Combined","Individual","IndividualWithRestart")][string]$ExecutionMode,
		[ValidateSet("CustomScript","AzureAutomation")][string]$ExecutionEnvironment,
		[int]$ExecutionTimeout,
		[string[]]$Tags
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Id")){ $PropertyHash += @{Id = $Id} }
	if ($PSBoundParameters.containskey("Name")){ $PropertyHash += @{Name = $Name} }
	if ($PSBoundParameters.containskey("Description")){ $PropertyHash += @{Description = $Description} }
	if ($PSBoundParameters.containskey("Script")){ $PropertyHash += @{Script = $Script} }
	if ($PSBoundParameters.containskey("ExecutionMode")){ $PropertyHash += @{ExecutionMode = $ExecutionMode} }
	if ($PSBoundParameters.containskey("ExecutionEnvironment")){ $PropertyHash += @{ExecutionEnvironment = $ExecutionEnvironment} }
	if ($PSBoundParameters.containskey("ExecutionTimeout")){ $PropertyHash += @{ExecutionTimeout = $ExecutionTimeout} }
	if ($PSBoundParameters.containskey("Tags")){ $PropertyHash += @{Tags = $Tags} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeScriptedAction')
	Return $ReturnObject	
}
function New-NmeScriptedActionScheduleRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeScriptedActionScheduleRestModel, for use in other Nme module commands

	.PARAMETER Schedule

	An object of type NmeExistingScheduleConfigurationPayloadRest. Can be created using New-NmeExistingScheduleConfigurationPayloadRest

	.PARAMETER Config

	An object of type NmeRunAzureScripedActionPayload. Can be created using New-NmeRunAzureScripedActionPayload

	#>
	[cmdletbinding()]
	Param(
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeExistingScheduleConfigurationPayloadRest"){$true} else{throw "$_ is not a NmeExistingScheduleConfigurationPayloadRest object. Use New-NmeExistingScheduleConfigurationPayloadRest to create before calling this function"}})][psobject]$Schedule,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeRunAzureScripedActionPayload"){$true} else{throw "$_ is not a NmeRunAzureScripedActionPayload object. Use New-NmeRunAzureScripedActionPayload to create before calling this function"}})][psobject]$Config
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Schedule")){ $PropertyHash += @{Schedule = $Schedule} }
	if ($PSBoundParameters.containskey("Config")){ $PropertyHash += @{Config = $Config} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeScriptedActionScheduleRestModel')
	Return $ReturnObject	
}
function New-NmeSecondaryRegionConfigurationRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeSecondaryRegionConfigurationRestModel, for use in other Nme module commands

	.PARAMETER Prefix

	string. 

	.PARAMETER ResourceGroupId

	string. 

	.PARAMETER NetworkId

	string. 

	.PARAMETER Subnet

	string. 

	#>
	[cmdletbinding()]
	Param(
		[string]$Prefix,
		[Parameter(Mandatory=$true)][string]$ResourceGroupId,
		[Parameter(Mandatory=$true)][string]$NetworkId,
		[Parameter(Mandatory=$true)][string]$Subnet
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Prefix")){ $PropertyHash += @{Prefix = $Prefix} }
	if ($PSBoundParameters.containskey("ResourceGroupId")){ $PropertyHash += @{ResourceGroupId = $ResourceGroupId} }
	if ($PSBoundParameters.containskey("NetworkId")){ $PropertyHash += @{NetworkId = $NetworkId} }
	if ($PSBoundParameters.containskey("Subnet")){ $PropertyHash += @{Subnet = $Subnet} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeSecondaryRegionConfigurationRestModel')
	Return $ReturnObject	
}
function New-NmeSecondaryRegionRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeSecondaryRegionRestModel, for use in other Nme module commands

	.PARAMETER Enabled

	boolean. Specify -Enabled $True or -Enabled $False. 

	.PARAMETER Config

	An object of type NmeSecondaryRegionConfigurationRestModel. Can be created using New-NmeSecondaryRegionConfigurationRestModel

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][bool]$Enabled,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeSecondaryRegionConfigurationRestModel"){$true} else{throw "$_ is not a NmeSecondaryRegionConfigurationRestModel object. Use New-NmeSecondaryRegionConfigurationRestModel to create before calling this function"}})][psobject]$Config
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Enabled")){ $PropertyHash += @{Enabled = $Enabled} }
	if ($PSBoundParameters.containskey("Config")){ $PropertyHash += @{Config = $Config} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeSecondaryRegionRestModel')
	Return $ReturnObject	
}
function New-NmeSecureVariableRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeSecureVariableRestModel, for use in other Nme module commands

	.PARAMETER Name

	The name of the resource

	.PARAMETER ScriptedActions

	array. 

	.PARAMETER AssignmentRequired

	boolean. Specify -AssignmentRequired $True or -AssignmentRequired $False. 

	#>
	[cmdletbinding()]
	Param(
		[string]$Name,
		[int[]]$ScriptedActions,
		[bool]$AssignmentRequired
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Name")){ $PropertyHash += @{Name = $Name} }
	if ($PSBoundParameters.containskey("ScriptedActions")){ $PropertyHash += @{ScriptedActions = $ScriptedActions} }
	if ($PSBoundParameters.containskey("AssignmentRequired")){ $PropertyHash += @{AssignmentRequired = $AssignmentRequired} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeSecureVariableRestModel')
	Return $ReturnObject	
}
function New-NmeServicePrincipalRestParams {
	<#

	.SYNOPSIS

	Creates an object of type NmeServicePrincipalRestParams, for use in other Nme module commands

	.PARAMETER AppId

	string. 

	.PARAMETER AppSecret

	string. 

	.PARAMETER AzureType

	string. Valid values are: AzureCloud, AzureUSGovernment, AzureChina

	.PARAMETER AppName

	string. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$AppId,
		[Parameter(Mandatory=$true)][string]$AppSecret,
		[Parameter(Mandatory=$true)][ValidateSet("AzureCloud","AzureUSGovernment","AzureChina")][string]$AzureType,
		[string]$AppName
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("AppId")){ $PropertyHash += @{AppId = $AppId} }
	if ($PSBoundParameters.containskey("AppSecret")){ $PropertyHash += @{AppSecret = $AppSecret} }
	if ($PSBoundParameters.containskey("AzureType")){ $PropertyHash += @{AzureType = $AzureType} }
	if ($PSBoundParameters.containskey("AppName")){ $PropertyHash += @{AppName = $AppName} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeServicePrincipalRestParams')
	Return $ReturnObject	
}
function New-NmeSessionHostParams {
	<#

	.SYNOPSIS

	Creates an object of type NmeSessionHostParams, for use in other Nme module commands

	.PARAMETER VmId

	An object of type NmeVmObjectId. Can be created using New-NmeVmObjectId

	.PARAMETER VmSize

	string. 

	.PARAMETER Image

	string. 

	.PARAMETER StorageType

	string. 

	.PARAMETER DiskSize

	integer. 

	.PARAMETER NetworkId

	string. 

	.PARAMETER Subnet

	string. 

	.PARAMETER HasEphemeralOSDisk

	boolean. Specify -HasEphemeralOSDisk $True or -HasEphemeralOSDisk $False. 

	.PARAMETER EphemeralOSDiskPlacement

	string. Valid values are: CacheDisk, ResourceDisk

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeVmObjectId"){$true} else{throw "$_ is not a NmeVmObjectId object. Use New-NmeVmObjectId to create before calling this function"}})][psobject]$VmId,
		[Parameter(Mandatory=$true)][string]$VmSize,
		[Parameter(Mandatory=$true)][string]$Image,
		[Parameter(Mandatory=$true)][string]$StorageType,
		[Parameter(Mandatory=$true)][int]$DiskSize,
		[Parameter(Mandatory=$true)][string]$NetworkId,
		[Parameter(Mandatory=$true)][string]$Subnet,
		[Parameter(Mandatory=$true)][bool]$HasEphemeralOSDisk,
		[ValidateSet("CacheDisk","ResourceDisk")][string]$EphemeralOSDiskPlacement
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("VmId")){ $PropertyHash += @{VmId = $VmId} }
	if ($PSBoundParameters.containskey("VmSize")){ $PropertyHash += @{VmSize = $VmSize} }
	if ($PSBoundParameters.containskey("Image")){ $PropertyHash += @{Image = $Image} }
	if ($PSBoundParameters.containskey("StorageType")){ $PropertyHash += @{StorageType = $StorageType} }
	if ($PSBoundParameters.containskey("DiskSize")){ $PropertyHash += @{DiskSize = $DiskSize} }
	if ($PSBoundParameters.containskey("NetworkId")){ $PropertyHash += @{NetworkId = $NetworkId} }
	if ($PSBoundParameters.containskey("Subnet")){ $PropertyHash += @{Subnet = $Subnet} }
	if ($PSBoundParameters.containskey("HasEphemeralOSDisk")){ $PropertyHash += @{HasEphemeralOSDisk = $HasEphemeralOSDisk} }
	if ($PSBoundParameters.containskey("EphemeralOSDiskPlacement")){ $PropertyHash += @{EphemeralOSDiskPlacement = $EphemeralOSDiskPlacement} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeSessionHostParams')
	Return $ReturnObject	
}
function New-NmeSetAsImagePayload {
	<#

	.SYNOPSIS

	Creates an object of type NmeSetAsImagePayload, for use in other Nme module commands

	.PARAMETER Changelog

	string. 

	.PARAMETER PowerOnVm

	boolean. Specify -PowerOnVm $True or -PowerOnVm $False. 

	.PARAMETER ScriptedActionsIds

	Array of integers, listed under the ID column in Nerdio Manager Scripted Actions. Can be retrieved by running Get-NmeScriptedActions

	.PARAMETER GalleryImage

	An object of type NmeGalleryImageRestConfiguration. Can be created using New-NmeGalleryImageRestConfiguration

	.PARAMETER SkipRemoveProfiles

	boolean. Specify -SkipRemoveProfiles $True or -SkipRemoveProfiles $False. 

	.PARAMETER Tags

	object. 

	.PARAMETER InstallCertificates

	boolean. Specify -InstallCertificates $True or -InstallCertificates $False. 

	.PARAMETER RetainOldImage

	boolean. Specify -RetainOldImage $True or -RetainOldImage $False. 

	#>
	[cmdletbinding()]
	Param(
		[string]$Changelog,
		[bool]$PowerOnVm,
		[int[]]$ScriptedActionsIds,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeGalleryImageRestConfiguration"){$true} else{throw "$_ is not a NmeGalleryImageRestConfiguration object. Use New-NmeGalleryImageRestConfiguration to create before calling this function"}})][psobject]$GalleryImage,
		[bool]$SkipRemoveProfiles,
		[hashtable]$Tags,
		[bool]$InstallCertificates,
		[bool]$RetainOldImage
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Changelog")){ $PropertyHash += @{Changelog = $Changelog} }
	if ($PSBoundParameters.containskey("PowerOnVm")){ $PropertyHash += @{PowerOnVm = $PowerOnVm} }
	if ($PSBoundParameters.containskey("ScriptedActionsIds")){ $PropertyHash += @{ScriptedActionsIds = $ScriptedActionsIds} }
	if ($PSBoundParameters.containskey("GalleryImage")){ $PropertyHash += @{GalleryImage = $GalleryImage} }
	if ($PSBoundParameters.containskey("SkipRemoveProfiles")){ $PropertyHash += @{SkipRemoveProfiles = $SkipRemoveProfiles} }
	if ($PSBoundParameters.containskey("Tags")){ $PropertyHash += @{Tags = $Tags} }
	if ($PSBoundParameters.containskey("InstallCertificates")){ $PropertyHash += @{InstallCertificates = $InstallCertificates} }
	if ($PSBoundParameters.containskey("RetainOldImage")){ $PropertyHash += @{RetainOldImage = $RetainOldImage} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeSetAsImagePayload')
	Return $ReturnObject	
}
function New-NmeSetAsImageRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeSetAsImageRequest, for use in other Nme module commands

	.PARAMETER JobPayload

	An object of type NmeSetAsImagePayload. Can be created using New-NmeSetAsImagePayload

	.PARAMETER FailurePolicy

	An object of type NmeJobFailurePolicy. Can be created using New-NmeJobFailurePolicy

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeSetAsImagePayload"){$true} else{throw "$_ is not a NmeSetAsImagePayload object. Use New-NmeSetAsImagePayload to create before calling this function"}})][psobject]$JobPayload,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeJobFailurePolicy"){$true} else{throw "$_ is not a NmeJobFailurePolicy object. Use New-NmeJobFailurePolicy to create before calling this function"}})][psobject]$FailurePolicy
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("JobPayload")){ $PropertyHash += @{JobPayload = $JobPayload} }
	if ($PSBoundParameters.containskey("FailurePolicy")){ $PropertyHash += @{FailurePolicy = $FailurePolicy} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeSetAsImageRequest')
	Return $ReturnObject	
}
function New-NmeSetAsImageRestConfiguration {
	<#

	.SYNOPSIS

	Creates an object of type NmeSetAsImageRestConfiguration, for use in other Nme module commands

	.PARAMETER PowerOnVm

	boolean. Specify -PowerOnVm $True or -PowerOnVm $False. 

	.PARAMETER CustomScriptEnable

	boolean. Specify -CustomScriptEnable $True or -CustomScriptEnable $False. 

	.PARAMETER ChangeLog

	string. 

	.PARAMETER ScriptedActionsIds

	Array of integers, listed under the ID column in Nerdio Manager Scripted Actions. Can be retrieved by running Get-NmeScriptedActions

	.PARAMETER ActiveDirectoryId

	ID of Active Directory profile to be sent with this scripted action. Can be retrieved by running Get-NmeAdConfig

	.PARAMETER GalleryImageParams

	An object of type NmeGalleryImageRestConfiguration. Can be created using New-NmeGalleryImageRestConfiguration

	.PARAMETER RefreshVmParams

	An object of type NmeRefreshVmRestConfiguration. Can be created using New-NmeRefreshVmRestConfiguration

	.PARAMETER RetainOldImage

	boolean. Specify -RetainOldImage $True or -RetainOldImage $False. 

	.PARAMETER Certificates

	boolean. Specify -Certificates $True or -Certificates $False. 

	.PARAMETER UploadToCloudPc

	boolean. Specify -UploadToCloudPc $True or -UploadToCloudPc $False. 

	.PARAMETER SkipRemoveProfiles

	boolean. Specify -SkipRemoveProfiles $True or -SkipRemoveProfiles $False. 

	#>
	[cmdletbinding()]
	Param(
		[bool]$PowerOnVm,
		[bool]$CustomScriptEnable,
		[string]$ChangeLog,
		[int[]]$ScriptedActionsIds,
		[int]$ActiveDirectoryId,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeGalleryImageRestConfiguration"){$true} else{throw "$_ is not a NmeGalleryImageRestConfiguration object. Use New-NmeGalleryImageRestConfiguration to create before calling this function"}})][psobject]$GalleryImageParams,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeRefreshVmRestConfiguration"){$true} else{throw "$_ is not a NmeRefreshVmRestConfiguration object. Use New-NmeRefreshVmRestConfiguration to create before calling this function"}})][psobject]$RefreshVmParams,
		[bool]$RetainOldImage,
		[bool]$Certificates,
		[bool]$UploadToCloudPc,
		[bool]$SkipRemoveProfiles
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("PowerOnVm")){ $PropertyHash += @{PowerOnVm = $PowerOnVm} }
	if ($PSBoundParameters.containskey("CustomScriptEnable")){ $PropertyHash += @{CustomScriptEnable = $CustomScriptEnable} }
	if ($PSBoundParameters.containskey("ChangeLog")){ $PropertyHash += @{ChangeLog = $ChangeLog} }
	if ($PSBoundParameters.containskey("ScriptedActionsIds")){ $PropertyHash += @{ScriptedActionsIds = $ScriptedActionsIds} }
	if ($PSBoundParameters.containskey("ActiveDirectoryId")){ $PropertyHash += @{ActiveDirectoryId = $ActiveDirectoryId} }
	if ($PSBoundParameters.containskey("GalleryImageParams")){ $PropertyHash += @{GalleryImageParams = $GalleryImageParams} }
	if ($PSBoundParameters.containskey("RefreshVmParams")){ $PropertyHash += @{RefreshVmParams = $RefreshVmParams} }
	if ($PSBoundParameters.containskey("RetainOldImage")){ $PropertyHash += @{RetainOldImage = $RetainOldImage} }
	if ($PSBoundParameters.containskey("Certificates")){ $PropertyHash += @{Certificates = $Certificates} }
	if ($PSBoundParameters.containskey("UploadToCloudPc")){ $PropertyHash += @{UploadToCloudPc = $UploadToCloudPc} }
	if ($PSBoundParameters.containskey("SkipRemoveProfiles")){ $PropertyHash += @{SkipRemoveProfiles = $SkipRemoveProfiles} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeSetAsImageRestConfiguration')
	Return $ReturnObject	
}
function New-NmeTempVmId {
	<#

	.SYNOPSIS

	Creates an object of type NmeTempVmId, for use in other Nme module commands

	.PARAMETER SubscriptionId

	The id (guid) of the subscription where this resource resides

	.PARAMETER ResourceGroup

	The Azure resource group where the resource resides

	.PARAMETER Name

	The name of the resource

	#>
	[cmdletbinding()]
	Param(
		[string]$SubscriptionId,
		[string]$ResourceGroup,
		[Parameter(Mandatory=$true)][string]$Name
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("SubscriptionId")){ $PropertyHash += @{SubscriptionId = $SubscriptionId} }
	if ($PSBoundParameters.containskey("ResourceGroup")){ $PropertyHash += @{ResourceGroup = $ResourceGroup} }
	if ($PSBoundParameters.containskey("Name")){ $PropertyHash += @{Name = $Name} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeTempVmId')
	Return $ReturnObject	
}
function New-NmeTempVmRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeTempVmRestModel, for use in other Nme module commands

	.PARAMETER VmId

	An object of type NmeTempVmId. Can be created using New-NmeTempVmId

	.PARAMETER VmSize

	string. 

	.PARAMETER Image

	string. 

	.PARAMETER StorageType

	string. 

	.PARAMETER DiskSize

	integer. 

	.PARAMETER NetworkId

	string. 

	.PARAMETER Subnet

	string. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeTempVmId"){$true} else{throw "$_ is not a NmeTempVmId object. Use New-NmeTempVmId to create before calling this function"}})][psobject]$VmId,
		[Parameter(Mandatory=$true)][string]$VmSize,
		[Parameter(Mandatory=$true)][string]$Image,
		[Parameter(Mandatory=$true)][string]$StorageType,
		[Parameter(Mandatory=$true)][int]$DiskSize,
		[string]$NetworkId,
		[string]$Subnet
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("VmId")){ $PropertyHash += @{VmId = $VmId} }
	if ($PSBoundParameters.containskey("VmSize")){ $PropertyHash += @{VmSize = $VmSize} }
	if ($PSBoundParameters.containskey("Image")){ $PropertyHash += @{Image = $Image} }
	if ($PSBoundParameters.containskey("StorageType")){ $PropertyHash += @{StorageType = $StorageType} }
	if ($PSBoundParameters.containskey("DiskSize")){ $PropertyHash += @{DiskSize = $DiskSize} }
	if ($PSBoundParameters.containskey("NetworkId")){ $PropertyHash += @{NetworkId = $NetworkId} }
	if ($PSBoundParameters.containskey("Subnet")){ $PropertyHash += @{Subnet = $Subnet} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeTempVmRestModel')
	Return $ReturnObject	
}
function New-NmeTimeIntervalWithTimeZone {
	<#

	.SYNOPSIS

	Creates an object of type NmeTimeIntervalWithTimeZone, for use in other Nme module commands

	.PARAMETER Hour

	integer. 

	.PARAMETER TimeZoneId

	string. 

	.PARAMETER Duration

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][int]$Hour,
		[Parameter(Mandatory=$true)][string]$TimeZoneId,
		[Parameter(Mandatory=$true)][int]$Duration
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Hour")){ $PropertyHash += @{Hour = $Hour} }
	if ($PSBoundParameters.containskey("TimeZoneId")){ $PropertyHash += @{TimeZoneId = $TimeZoneId} }
	if ($PSBoundParameters.containskey("Duration")){ $PropertyHash += @{Duration = $Duration} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeTimeIntervalWithTimeZone')
	Return $ReturnObject	
}
function New-NmeTimeRangeWithTimeZone {
	<#

	.SYNOPSIS

	Creates an object of type NmeTimeRangeWithTimeZone, for use in other Nme module commands

	.PARAMETER StartHour

	integer. 

	.PARAMETER EndHour

	integer. 

	.PARAMETER TimeZoneId

	string. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][int]$StartHour,
		[Parameter(Mandatory=$true)][int]$EndHour,
		[Parameter(Mandatory=$true)][string]$TimeZoneId
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("StartHour")){ $PropertyHash += @{StartHour = $StartHour} }
	if ($PSBoundParameters.containskey("EndHour")){ $PropertyHash += @{EndHour = $EndHour} }
	if ($PSBoundParameters.containskey("TimeZoneId")){ $PropertyHash += @{TimeZoneId = $TimeZoneId} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeTimeRangeWithTimeZone')
	Return $ReturnObject	
}
function New-NmeTriggerInfo {
	<#

	.SYNOPSIS

	Creates an object of type NmeTriggerInfo, for use in other Nme module commands

	.PARAMETER TriggerType

	string. Valid values are: CPUUsage, RAMUsage, AvgActiveSessions, AvailableUserSessionSingle, AvailableUserSessions, UserDriven, PersonalAutoGrow, PersonalAutoShrink

	.PARAMETER AverageSessions

	An object of type NmeActiveSessionsConfiguration. Can be created using New-NmeActiveSessionsConfiguration

	.PARAMETER AvailableSessions

	An object of type NmeAvailableUserSessionsConfiguration. Can be created using New-NmeAvailableUserSessionsConfiguration

	.PARAMETER Cpu

	An object of type NmeHostUsageConfiguration. Can be created using New-NmeHostUsageConfiguration

	.PARAMETER Ram

	An object of type NmeHostUsageConfiguration. Can be created using New-NmeHostUsageConfiguration

	.PARAMETER UserDriven

	An object of type NmeUserDrivenRestConfiguration. Can be created using New-NmeUserDrivenRestConfiguration

	.PARAMETER PersonalAutoGrow

	An object of type NmePersonalAutoGrowRestConfiguration. Can be created using New-NmePersonalAutoGrowRestConfiguration

	.PARAMETER PersonalAutoShrink

	An object of type NmePersonalAutoShrinkRestConfiguration. Can be created using New-NmePersonalAutoShrinkRestConfiguration

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateSet("CPUUsage","RAMUsage","AvgActiveSessions","AvailableUserSessionSingle","AvailableUserSessions","UserDriven","PersonalAutoGrow","PersonalAutoShrink")][string]$TriggerType,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeActiveSessionsConfiguration"){$true} else{throw "$_ is not a NmeActiveSessionsConfiguration object. Use New-NmeActiveSessionsConfiguration to create before calling this function"}})][psobject]$AverageSessions,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeAvailableUserSessionsConfiguration"){$true} else{throw "$_ is not a NmeAvailableUserSessionsConfiguration object. Use New-NmeAvailableUserSessionsConfiguration to create before calling this function"}})][psobject]$AvailableSessions,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeHostUsageConfiguration"){$true} else{throw "$_ is not a NmeHostUsageConfiguration object. Use New-NmeHostUsageConfiguration to create before calling this function"}})][psobject]$Cpu,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeHostUsageConfiguration"){$true} else{throw "$_ is not a NmeHostUsageConfiguration object. Use New-NmeHostUsageConfiguration to create before calling this function"}})][psobject]$Ram,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeUserDrivenRestConfiguration"){$true} else{throw "$_ is not a NmeUserDrivenRestConfiguration object. Use New-NmeUserDrivenRestConfiguration to create before calling this function"}})][psobject]$UserDriven,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmePersonalAutoGrowRestConfiguration"){$true} else{throw "$_ is not a NmePersonalAutoGrowRestConfiguration object. Use New-NmePersonalAutoGrowRestConfiguration to create before calling this function"}})][psobject]$PersonalAutoGrow,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmePersonalAutoShrinkRestConfiguration"){$true} else{throw "$_ is not a NmePersonalAutoShrinkRestConfiguration object. Use New-NmePersonalAutoShrinkRestConfiguration to create before calling this function"}})][psobject]$PersonalAutoShrink
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("TriggerType")){ $PropertyHash += @{TriggerType = $TriggerType} }
	if ($PSBoundParameters.containskey("AverageSessions")){ $PropertyHash += @{AverageSessions = $AverageSessions} }
	if ($PSBoundParameters.containskey("AvailableSessions")){ $PropertyHash += @{AvailableSessions = $AvailableSessions} }
	if ($PSBoundParameters.containskey("Cpu")){ $PropertyHash += @{Cpu = $Cpu} }
	if ($PSBoundParameters.containskey("Ram")){ $PropertyHash += @{Ram = $Ram} }
	if ($PSBoundParameters.containskey("UserDriven")){ $PropertyHash += @{UserDriven = $UserDriven} }
	if ($PSBoundParameters.containskey("PersonalAutoGrow")){ $PropertyHash += @{PersonalAutoGrow = $PersonalAutoGrow} }
	if ($PSBoundParameters.containskey("PersonalAutoShrink")){ $PropertyHash += @{PersonalAutoShrink = $PersonalAutoShrink} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeTriggerInfo')
	Return $ReturnObject	
}
function New-NmeUpdateAutoScaleRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeUpdateAutoScaleRequest, for use in other Nme module commands

	.PARAMETER IsEnabled

	boolean. Specify -IsEnabled $True or -IsEnabled $False. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][bool]$IsEnabled
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("IsEnabled")){ $PropertyHash += @{IsEnabled = $IsEnabled} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeUpdateAutoScaleRequest')
	Return $ReturnObject	
}
function New-NmeUpdateHostPoolActiveDirectoryRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeUpdateHostPoolActiveDirectoryRestModel, for use in other Nme module commands

	.PARAMETER Type

	string. Valid values are: Default, Predefined, Custom

	.PARAMETER PredefinedConfigId

	integer. 

	.PARAMETER Custom

	An object of type NmeAdConfigRestPropertiesWithPassword. Can be created using New-NmeAdConfigRestPropertiesWithPassword

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateSet("Default","Predefined","Custom")][string]$Type,
		[int]$PredefinedConfigId,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeAdConfigRestPropertiesWithPassword"){$true} else{throw "$_ is not a NmeAdConfigRestPropertiesWithPassword object. Use New-NmeAdConfigRestPropertiesWithPassword to create before calling this function"}})][psobject]$Custom
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Type")){ $PropertyHash += @{Type = $Type} }
	if ($PSBoundParameters.containskey("PredefinedConfigId")){ $PropertyHash += @{PredefinedConfigId = $PredefinedConfigId} }
	if ($PSBoundParameters.containskey("Custom")){ $PropertyHash += @{Custom = $Custom} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeUpdateHostPoolActiveDirectoryRestModel')
	Return $ReturnObject	
}
function New-NmeUpdateHostPoolFsLogixRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeUpdateHostPoolFsLogixRestModel, for use in other Nme module commands

	.PARAMETER Enable

	boolean. Specify -Enable $True or -Enable $False. 

	.PARAMETER UseDefault

	DEPRECATED

	.PARAMETER Type

	string. Valid values are: Default, Predefined, Custom

	.PARAMETER PredefinedConfigId

	integer. 

	.PARAMETER Custom

	An object of type NmeFsLogixRestProperties. Can be created using New-NmeFsLogixRestProperties

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][bool]$Enable,
		[bool]$UseDefault,
		[ValidateSet("Default","Predefined","Custom")][string]$Type,
		[int]$PredefinedConfigId,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeFsLogixRestProperties"){$true} else{throw "$_ is not a NmeFsLogixRestProperties object. Use New-NmeFsLogixRestProperties to create before calling this function"}})][psobject]$Custom
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Enable")){ $PropertyHash += @{Enable = $Enable} }
	if ($PSBoundParameters.containskey("UseDefault")){ $PropertyHash += @{UseDefault = $UseDefault} }
	if ($PSBoundParameters.containskey("Type")){ $PropertyHash += @{Type = $Type} }
	if ($PSBoundParameters.containskey("PredefinedConfigId")){ $PropertyHash += @{PredefinedConfigId = $PredefinedConfigId} }
	if ($PSBoundParameters.containskey("Custom")){ $PropertyHash += @{Custom = $Custom} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeUpdateHostPoolFsLogixRestModel')
	Return $ReturnObject	
}
function New-NmeUpdateHostPoolTagsRest {
	<#

	.SYNOPSIS

	Creates an object of type NmeUpdateHostPoolTagsRest, for use in other Nme module commands

	.PARAMETER Tags

	object. 

	.PARAMETER UpdateObjects

	boolean. Specify -UpdateObjects $True or -UpdateObjects $False. Update existing AVD object and VMs

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][hashtable]$Tags,
		[bool]$UpdateObjects
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Tags")){ $PropertyHash += @{Tags = $Tags} }
	if ($PSBoundParameters.containskey("UpdateObjects")){ $PropertyHash += @{UpdateObjects = $UpdateObjects} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeUpdateHostPoolTagsRest')
	Return $ReturnObject	
}
function New-NmeUpdateHostPoolTagsResultRest {
	<#

	.SYNOPSIS

	Creates an object of type NmeUpdateHostPoolTagsResultRest, for use in other Nme module commands

	.PARAMETER Tags

	object. 

	.PARAMETER UpdateObjectsJob

	An object of type NmeJobShortInfo. Can be created using New-NmeJobShortInfo

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][hashtable]$Tags,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeJobShortInfo"){$true} else{throw "$_ is not a NmeJobShortInfo object. Use New-NmeJobShortInfo to create before calling this function"}})][psobject]$UpdateObjectsJob
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Tags")){ $PropertyHash += @{Tags = $Tags} }
	if ($PSBoundParameters.containskey("UpdateObjectsJob")){ $PropertyHash += @{UpdateObjectsJob = $UpdateObjectsJob} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeUpdateHostPoolTagsResultRest')
	Return $ReturnObject	
}
function New-NmeUploadMsixPackageRestRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeUploadMsixPackageRestRequest, for use in other Nme module commands

	.PARAMETER LocationId

	string. 

	.PARAMETER ImageName

	string. 

	.PARAMETER PackageLinks

	array. 

	.PARAMETER TempVmParams

	An object of type NmeTempVmRestModel. Can be created using New-NmeTempVmRestModel

	.PARAMETER FailurePolicy

	An object of type NmeJobFailurePolicy. Can be created using New-NmeJobFailurePolicy

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$LocationId,
		[Parameter(Mandatory=$true)][string]$ImageName,
		[Parameter(Mandatory=$true)][string[]]$PackageLinks,
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeTempVmRestModel"){$true} else{throw "$_ is not a NmeTempVmRestModel object. Use New-NmeTempVmRestModel to create before calling this function"}})][psobject]$TempVmParams,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeJobFailurePolicy"){$true} else{throw "$_ is not a NmeJobFailurePolicy object. Use New-NmeJobFailurePolicy to create before calling this function"}})][psobject]$FailurePolicy
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("LocationId")){ $PropertyHash += @{LocationId = $LocationId} }
	if ($PSBoundParameters.containskey("ImageName")){ $PropertyHash += @{ImageName = $ImageName} }
	if ($PSBoundParameters.containskey("PackageLinks")){ $PropertyHash += @{PackageLinks = $PackageLinks} }
	if ($PSBoundParameters.containskey("TempVmParams")){ $PropertyHash += @{TempVmParams = $TempVmParams} }
	if ($PSBoundParameters.containskey("FailurePolicy")){ $PropertyHash += @{FailurePolicy = $FailurePolicy} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeUploadMsixPackageRestRequest')
	Return $ReturnObject	
}
function New-NmeUsageRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeUsageRestModel, for use in other Nme module commands

	.PARAMETER NamedUsers

	integer. 

	.PARAMETER ConcurentUsers

	integer. 

	.PARAMETER MonthlyActiveUsers

	integer. 

	#>
	[cmdletbinding()]
	Param(
		[int]$NamedUsers,
		[int]$ConcurentUsers,
		[int]$MonthlyActiveUsers
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("NamedUsers")){ $PropertyHash += @{NamedUsers = $NamedUsers} }
	if ($PSBoundParameters.containskey("ConcurentUsers")){ $PropertyHash += @{ConcurentUsers = $ConcurentUsers} }
	if ($PSBoundParameters.containskey("MonthlyActiveUsers")){ $PropertyHash += @{MonthlyActiveUsers = $MonthlyActiveUsers} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeUsageRestModel')
	Return $ReturnObject	
}
function New-NmeUserDrivenRestConfiguration {
	<#

	.SYNOPSIS

	Creates an object of type NmeUserDrivenRestConfiguration, for use in other Nme module commands

	.PARAMETER StopDelayMinutes

	integer. 

	.PARAMETER MinAvailableSessions

	integer. 

	.PARAMETER BypassDrainMode

	boolean. Specify -BypassDrainMode $True or -BypassDrainMode $False. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][int]$StopDelayMinutes,
		[int]$MinAvailableSessions,
		[bool]$BypassDrainMode
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("StopDelayMinutes")){ $PropertyHash += @{StopDelayMinutes = $StopDelayMinutes} }
	if ($PSBoundParameters.containskey("MinAvailableSessions")){ $PropertyHash += @{MinAvailableSessions = $MinAvailableSessions} }
	if ($PSBoundParameters.containskey("BypassDrainMode")){ $PropertyHash += @{BypassDrainMode = $BypassDrainMode} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeUserDrivenRestConfiguration')
	Return $ReturnObject	
}
function New-NmeUserSessionActionPayload {
	<#

	.SYNOPSIS

	Creates an object of type NmeUserSessionActionPayload, for use in other Nme module commands

	.PARAMETER Command

	string. Valid values are: LogOff

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateSet("LogOff")][string]$Command
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Command")){ $PropertyHash += @{Command = $Command} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeUserSessionActionPayload')
	Return $ReturnObject	
}
function New-NmeUserSessionActionRequest {
	<#

	.SYNOPSIS

	Creates an object of type NmeUserSessionActionRequest, for use in other Nme module commands

	.PARAMETER JobPayload

	An object of type NmeUserSessionActionPayload. Can be created using New-NmeUserSessionActionPayload

	.PARAMETER FailurePolicy

	An object of type NmeJobFailurePolicy. Can be created using New-NmeJobFailurePolicy

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeUserSessionActionPayload"){$true} else{throw "$_ is not a NmeUserSessionActionPayload object. Use New-NmeUserSessionActionPayload to create before calling this function"}})][psobject]$JobPayload,
		[ValidateScript({if ($_.PSObject.TypeNames -contains "NmeJobFailurePolicy"){$true} else{throw "$_ is not a NmeJobFailurePolicy object. Use New-NmeJobFailurePolicy to create before calling this function"}})][psobject]$FailurePolicy
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("JobPayload")){ $PropertyHash += @{JobPayload = $JobPayload} }
	if ($PSBoundParameters.containskey("FailurePolicy")){ $PropertyHash += @{FailurePolicy = $FailurePolicy} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeUserSessionActionRequest')
	Return $ReturnObject	
}
function New-NmeVmObjectId {
	<#

	.SYNOPSIS

	Creates an object of type NmeVmObjectId, for use in other Nme module commands

	.PARAMETER SubscriptionId

	The id (guid) of the subscription where this resource resides

	.PARAMETER ResourceGroup

	The Azure resource group where the resource resides

	.PARAMETER Name

	The name of the resource

	.PARAMETER AddSuffix

	boolean. Specify -AddSuffix $True or -AddSuffix $False. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$SubscriptionId,
		[Parameter(Mandatory=$true)][string]$ResourceGroup,
		[Parameter(Mandatory=$true)][string]$Name,
		[bool]$AddSuffix
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("SubscriptionId")){ $PropertyHash += @{SubscriptionId = $SubscriptionId} }
	if ($PSBoundParameters.containskey("ResourceGroup")){ $PropertyHash += @{ResourceGroup = $ResourceGroup} }
	if ($PSBoundParameters.containskey("Name")){ $PropertyHash += @{Name = $Name} }
	if ($PSBoundParameters.containskey("AddSuffix")){ $PropertyHash += @{AddSuffix = $AddSuffix} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeVmObjectId')
	Return $ReturnObject	
}
function New-NmeVmTemplateParams {
	<#

	.SYNOPSIS

	Creates an object of type NmeVmTemplateParams, for use in other Nme module commands

	.PARAMETER Prefix

	string. 

	.PARAMETER Size

	string. 

	.PARAMETER Image

	string. 

	.PARAMETER StorageType

	string. 

	.PARAMETER ResourceGroupId

	string. 

	.PARAMETER NetworkId

	string. 

	.PARAMETER Subnet

	string. 

	.PARAMETER DiskSize

	integer. 

	.PARAMETER HasEphemeralOSDisk

	boolean. Specify -HasEphemeralOSDisk $True or -HasEphemeralOSDisk $False. 

	.PARAMETER EphemeralOSDiskPlacement

	string. Valid values are: CacheDisk, ResourceDisk

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$Prefix,
		[Parameter(Mandatory=$true)][string]$Size,
		[Parameter(Mandatory=$true)][string]$Image,
		[Parameter(Mandatory=$true)][string]$StorageType,
		[Parameter(Mandatory=$true)][string]$ResourceGroupId,
		[Parameter(Mandatory=$true)][string]$NetworkId,
		[Parameter(Mandatory=$true)][string]$Subnet,
		[Parameter(Mandatory=$true)][int]$DiskSize,
		[Parameter(Mandatory=$true)][bool]$HasEphemeralOSDisk,
		[ValidateSet("CacheDisk","ResourceDisk")][string]$EphemeralOSDiskPlacement
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("Prefix")){ $PropertyHash += @{Prefix = $Prefix} }
	if ($PSBoundParameters.containskey("Size")){ $PropertyHash += @{Size = $Size} }
	if ($PSBoundParameters.containskey("Image")){ $PropertyHash += @{Image = $Image} }
	if ($PSBoundParameters.containskey("StorageType")){ $PropertyHash += @{StorageType = $StorageType} }
	if ($PSBoundParameters.containskey("ResourceGroupId")){ $PropertyHash += @{ResourceGroupId = $ResourceGroupId} }
	if ($PSBoundParameters.containskey("NetworkId")){ $PropertyHash += @{NetworkId = $NetworkId} }
	if ($PSBoundParameters.containskey("Subnet")){ $PropertyHash += @{Subnet = $Subnet} }
	if ($PSBoundParameters.containskey("DiskSize")){ $PropertyHash += @{DiskSize = $DiskSize} }
	if ($PSBoundParameters.containskey("HasEphemeralOSDisk")){ $PropertyHash += @{HasEphemeralOSDisk = $HasEphemeralOSDisk} }
	if ($PSBoundParameters.containskey("EphemeralOSDiskPlacement")){ $PropertyHash += @{EphemeralOSDiskPlacement = $EphemeralOSDiskPlacement} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeVmTemplateParams')
	Return $ReturnObject	
}
function New-NmeWarningMessageSettings {
	<#

	.SYNOPSIS

	Creates an object of type NmeWarningMessageSettings, for use in other Nme module commands

	.PARAMETER MinutesBeforeRemove

	integer. 

	.PARAMETER Message

	string. 

	#>
	[cmdletbinding()]
	Param(
		[int]$MinutesBeforeRemove,
		[string]$Message
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("MinutesBeforeRemove")){ $PropertyHash += @{MinutesBeforeRemove = $MinutesBeforeRemove} }
	if ($PSBoundParameters.containskey("Message")){ $PropertyHash += @{Message = $Message} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeWarningMessageSettings')
	Return $ReturnObject	
}
function New-NmeWorkspaceScopeRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeWorkspaceScopeRestModel, for use in other Nme module commands

	.PARAMETER WorkspaceId

	Azure resource ID of AVD workspace. E.g.: /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/your-resource-group-name/providers/Microsoft.DesktopVirtualization/workspaces/your-workspace-name

	.PARAMETER HostPoolIds

	array. 

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$WorkspaceId,
		[string[]]$HostPoolIds
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("WorkspaceId")){ $PropertyHash += @{WorkspaceId = $WorkspaceId} }
	if ($PSBoundParameters.containskey("HostPoolIds")){ $PropertyHash += @{HostPoolIds = $HostPoolIds} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeWorkspaceScopeRestModel')
	Return $ReturnObject	
}
function New-NmeWorkspaceScopeUpdateRestModel {
	<#

	.SYNOPSIS

	Creates an object of type NmeWorkspaceScopeUpdateRestModel, for use in other Nme module commands

	.PARAMETER WorkspaceId

	Azure resource ID of AVD workspace. E.g.: /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/your-resource-group-name/providers/Microsoft.DesktopVirtualization/workspaces/your-workspace-name

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$WorkspaceId
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("WorkspaceId")){ $PropertyHash += @{WorkspaceId = $WorkspaceId} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeWorkspaceScopeUpdateRestModel')
	Return $ReturnObject	
}
function New-NmeWvdObjectId {
	<#

	.SYNOPSIS

	Creates an object of type NmeWvdObjectId, for use in other Nme module commands

	.PARAMETER SubscriptionId

	The id (guid) of the subscription where this resource resides

	.PARAMETER ResourceGroup

	The Azure resource group where the resource resides

	.PARAMETER Name

	The name of the resource

	#>
	[cmdletbinding()]
	Param(
		[Parameter(Mandatory=$true)][string]$SubscriptionId,
		[Parameter(Mandatory=$true)][string]$ResourceGroup,
		[Parameter(Mandatory=$true)][string]$Name
	)

	$PropertyHash = @{}
	if ($PSBoundParameters.containskey("SubscriptionId")){ $PropertyHash += @{SubscriptionId = $SubscriptionId} }
	if ($PSBoundParameters.containskey("ResourceGroup")){ $PropertyHash += @{ResourceGroup = $ResourceGroup} }
	if ($PSBoundParameters.containskey("Name")){ $PropertyHash += @{Name = $Name} }
	$ReturnObject = New-Object -TypeName psobject -Property $PropertyHash
	$ReturnObject.PSObject.TypeNames.Insert(0, 'NmeWvdObjectId')
	Return $ReturnObject	
}
