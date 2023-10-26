# Introduction 
A PowerShell module for managing Nerdio Manager for Enterprise (NME) 

# 0.5.0 Release Notes:
- App Management function Get-NmeAppRepository now available
- New ability to manage scripted action groups
- New function Get-NmeDesktopImage to list NME images
- Rolling drain mode parameters for Host Pool AutoScale configuration
- Enhancements to managing scripted actions
- New functions for managing images
- New functions for querying Entra ID & Entra domain services profiles
- New functions for managing ControlUp integrations
- New parameters for New-NmePersonalAutoShrinkRestConfiguration
- New parameter IntelligentPrestageMode for function New-NmePreStateHostsConfiguration
- New options for host pool user self service
- New-NmeTimeIntervalWithTimeZone parameter TimeZoneId is now deprecated
- New RDP configuration options
- New fucntion Set-NmeAppAttachImageVersionName

# Breaking changes:
- New mandatory parameters for New-NmeHostPoolVmDeploymentRestModel
- New mandatory parameter RdpShortpath for New-NmeHostPoolVmDeploymentRestPutRequest
- New-NmeHostPoolRdpModelRest has been updated to New-NmeArmHostPoolRdpModelRest; you will need to replace the former with the latter
- object BulkJobParams used in New-NmeRunScriptScheduledBulkJobParams has changed parameters
- TimeZoneId is now a required parameter for New-NmeDynamicPoolConfiguration and Set-NmeDynamicPoolConfiguration 

# Getting Started
Copy the NerdioManagerPowerShell directory to your modules directory, then run

`Import-Module NerdioManagerPowerShell`

Note that the NME Rest API must be enabled as a prerequisite for this module to function

# Authenticating

You'll need the Nerdio REST API ClientId, ClientSecret, TenantId, ApiScope, and URI. All of these are available in NME->Settings->Integrations

Then run:

`Connect-Nme -ClientId <ClientId> -ClientSecret <ClientSecret> -TenantId <TenantId> -ApiScope <ApiScope> -NmeUri <Uri>`

This creates a token for the module to use in Rest API requests. Subsequently, the module will re-generate a new token whenever the old token expires,
so re-authenticating is not necessary within the same PowerShell session.

# Testing the module

To see all available functions, run

`Get-Command -Module NerdioManagerPowerShell`

You can get help for a specific command with, e.g.:

`Get-Help -Name New-NmeHostPool -Full`

Setting the Verbose preference to 'Continue' will provide more feedback on what the module is doing.

`$VerbosePreference = 'Continue'`

# Notes:

This module is essentially a 1:1 mapping of Rest API functions into PowerShell. As such, there are ways in which it is not very "PowerShell-y"
For example, many functions require you to first create an object that you will then use as a parameter. For example, the New-NmeHostPool function
requires an NmeCreateArmHostPoolRequest object, which you must first create using New-NmeCreateArmHostPoolRequest, which in turn requires a
NmePooledParams or NmePersonalParams object, which must first be created using New-NmePooledParams or New-NmePersonalParams.

It is our hope to eventually make the module behave more like powershell users would expect, without as many nested objects.

# Examples:

```
# Create a host pool

$hpname = <host pool name>
$WorkspaceId = New-NmeWvdObjectId -subscriptionId <subscriptionId> -resourceGroup <rg name> -name <workspace name>
$pooledparams = New-NmePooledParams -isDesktop $true -isSingleUser $false 
$NewTags = New-NmeHostPoolTagsRest -Tags @{TagName = 'TagValue'}
New-NmeHostPool -subscriptionId <subscriptionId> -resourceGroup <rg name> -hostPoolName $hpname -NmeCreateArmHostPoolRequest (New-NmeCreateArmHostPoolRequest -workspaceId $WorkspaceId -pooledParams $pooledparams -Tags @{Testing = 'PS Module'})
$hp = Get-NmeHostPool -subscriptionId <subscriptionId> -resourceGroup <rg name> -hostPoolName $hpname 

# Convert the HP from static to dynamic

$hp | ConvertTo-NmeDynamicHostPool 

# Create an AutoScale configuration object

$Image = 'microsoftwindowsdesktop/windows-11/win11-22h2-avd/latest'
$NetworkId = '/subscriptions/<subscriptionId>/resourceGroups/<rg name>/providers/Microsoft.Network/virtualNetworks/<vnet name>'
$rgid='/subscriptions/<subscriptionId>/resourceGroups/<rg name>'
$VMTemplate = New-NmeVmTemplateParams `
                -prefix 'pstest' -size "Standard_D2s_v3" `
                -image $image -storageType StandardSSD_LRS `
                -resourceGroupId $rgid `
                -networkId $NetworkId `
                -subnet '<subnet name>' `
                -diskSize 128  `
                -HasEphemeralOSDisk $false 

$ScaleCriteria = New-NmeHostUsageConfiguration `
                  -scaleIn (New-NmeHostUsage -hostChangeCount 1 -value 40 -averageTimeRangeInMinutes 15) `
                  -scaleOut (New-NmeHostUsage -hostChangeCount 1 -value 80 -averageTimeRangeInMinutes 5) 


$ASConfig = New-NmeDynamicPoolConfiguration `
                -isEnabled $false `
                -vmTemplate $vmtemplate `
                -isSingleUserDesktop $false `
                -reuseVmNames $false `
                -enableFixFailedTask $false `
                -activeHostType AvailableForConnection `
                -minCountCreatedVmsType HostPoolCapacity `
                -scalingMode Default `
                -hostPoolCapacity 1 `
                -minActiveHostsCount 1 `
                -burstCapacity 0 `
                -autoScaleCriteria CPUUsage `
                -scaleInAggressiveness Low `
                -hostUsageScaleCriteria $ScaleCriteria `
                -scaleInRestriction (New-NmeScaleIntimeRestrictionConfiguration -enable $false) `
                -preStageHosts (New-NmePreStateHostsConfiguration -enable $false) `
                -removeMessaging (New-NmeWarningMessageSettings -minutesBeforeRemove 10 -message 'We are performaing maintenance on this host pool. Please log off and log back on to continue working') `
                -autoHeal (New-NmeAutoHealConfiguration -enable $false) `
                -autoScaleInterval 10 `
                -StoppedDiskType 'StandardSSD_LRS'

# Update host pool with AutoScale configuration
Set-NmeHostPoolAutoScaleConfig -subscriptionId <subscription id guid> `
                               -resourceGroup <rg name> `
                               -hostPoolName <host pool name> `
                               -NmeDynamicPoolConfiguration $ASConfig `
                               -autoHealActions $true 

# Enable AutoScale
$asupdate = New-NmeUpdateAutoScaleRequest -isEnabled $true
$result = Update-NmeHostPoolAutoScaleConfig -subscriptionId <subscriptionId> -resourceGroup <rg name> -hostPoolName <host pool name> -NmeUpdateAutoScaleRequest $asupdate
```
