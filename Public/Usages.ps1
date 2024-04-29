Function Get-NmeHostPoolUsage {
	<#

	.SYNOPSIS

	Get usage of ARM host pool.

	.DESCRIPTION

	Get usage of ARM host pool. 

	This function calls the /api/v1/usages/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName} endpoint of the NME REST API, using the get method.


	.PARAMETER SubscriptionId

	The id (guid) of the subscription where this usages resides

	.PARAMETER ResourceGroup

	The Azure resource group where the usages resides

	.PARAMETER HostPoolName

	The name of the Host Pool

	.PARAMETER StartUtc

	Start date in UTC

	.PARAMETER EndUtc

	End date in UTC

	#>

	[CmdletBinding()]
	Param(
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$SubscriptionId,
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$ResourceGroup,
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$HostPoolName,
		[Parameter(ValueFromPipelineByPropertyName=$true)][string]$StartUtc,
		[Parameter(ValueFromPipelineByPropertyName=$true)][string]$EndUtc
	)
	Set-NmeAuthHeaders
	Try {
		$QueryString = '?'
		$QueryStrings = @{}
		$QueryStrings += @{startUtc= $startUtc}
		$QueryStrings += @{endUtc= $endUtc}
		$QueryString += ($QueryStrings.GetEnumerator() | % { "$($_.Key)=$($_.Value)" }) -join '&'
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/usages/arm/hostpool/$SubscriptionId/$ResourceGroup/$HostPoolName$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeUsageRestModel')
		$Result | Add-Member -NotePropertyName 'subscriptionId' -NotePropertyValue $subscriptionId -erroraction 'SilentlyContinue'
		$Result | Add-Member -NotePropertyName 'resourceGroup' -NotePropertyValue $resourceGroup -erroraction 'SilentlyContinue'
		$Result | Add-Member -NotePropertyName 'hostPoolName' -NotePropertyValue $hostPoolName -erroraction 'SilentlyContinue'
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
Function Get-NmeAllWorkSpaceUsage {
	<#

	.SYNOPSIS

	Get usage of all ARM workspaces.

	.DESCRIPTION

	Get usage of all ARM workspaces. 

	This function calls the /api/v1/usages/arm/workspace endpoint of the NME REST API, using the get method.


	.PARAMETER StartUtc

	Start date in UTC

	.PARAMETER EndUtc

	End date in UTC

	#>

	[CmdletBinding()]
	Param(
		[Parameter(ValueFromPipelineByPropertyName=$true)][string]$StartUtc,
		[Parameter(ValueFromPipelineByPropertyName=$true)][string]$EndUtc
	)
	Set-NmeAuthHeaders
	Try {
		$QueryString = '?'
		$QueryStrings = @{}
		$QueryStrings += @{startUtc= $startUtc}
		$QueryStrings += @{endUtc= $endUtc}
		$QueryString += ($QueryStrings.GetEnumerator() | % { "$($_.Key)=$($_.Value)" }) -join '&'
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/usages/arm/workspace$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeUsageRestModel')
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
Function Get-NmeWorkSpaceUsage {
	<#

	.SYNOPSIS

	Get usage of ARM workspace.

	.DESCRIPTION

	Get usage of ARM workspace. 

	This function calls the /api/v1/usages/arm/workspace/{subscriptionId}/{resourceGroup}/{workspaceName} endpoint of the NME REST API, using the get method.


	.PARAMETER SubscriptionId

	The id (guid) of the subscription where this usages resides

	.PARAMETER ResourceGroup

	The Azure resource group where the usages resides

	.PARAMETER WorkspaceName

	Name of the AVD Workspace

	.PARAMETER StartUtc

	Start date in UTC

	.PARAMETER EndUtc

	End date in UTC

	#>

	[CmdletBinding()]
	Param(
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$SubscriptionId,
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$ResourceGroup,
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$WorkspaceName,
		[Parameter(ValueFromPipelineByPropertyName=$true)][string]$StartUtc,
		[Parameter(ValueFromPipelineByPropertyName=$true)][string]$EndUtc
	)
	Set-NmeAuthHeaders
	Try {
		$QueryString = '?'
		$QueryStrings = @{}
		$QueryStrings += @{startUtc= $startUtc}
		$QueryStrings += @{endUtc= $endUtc}
		$QueryString += ($QueryStrings.GetEnumerator() | % { "$($_.Key)=$($_.Value)" }) -join '&'
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/usages/arm/workspace/$SubscriptionId/$ResourceGroup/$WorkspaceName$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeUsageRestModel')
		$Result | Add-Member -NotePropertyName 'subscriptionId' -NotePropertyValue $subscriptionId -erroraction 'SilentlyContinue'
		$Result | Add-Member -NotePropertyName 'resourceGroup' -NotePropertyValue $resourceGroup -erroraction 'SilentlyContinue'
		$Result | Add-Member -NotePropertyName 'workspaceName' -NotePropertyValue $workspaceName -erroraction 'SilentlyContinue'
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
