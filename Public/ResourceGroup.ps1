Function Get-NmeLinkedResourceGroup {
	<#

	.SYNOPSIS

	Get linked resource groups.

	.DESCRIPTION

	Get linked resource groups. 

	This function calls the /api/v1/resourcegroup endpoint of the NME REST API, using the get method.




	#>

	[CmdletBinding()]
	Param(

	)
	Set-NmeAuthHeaders
	Try {
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/resourcegroup$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeLinkedResourceGroupRestModel')
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
Function New-NmeLinkedResourceGroup {
	<#

	.SYNOPSIS

	Link Azure resource group.

	.DESCRIPTION

	Link Azure resource group. 

	This function calls the /api/v1/resourcegroup/{subscriptionId}/{resourceGroup}/linked endpoint of the NME REST API, using the post method.


	.PARAMETER SubscriptionId

	The id (guid) of the subscription where this resourcegroup resides

	.PARAMETER ResourceGroup

	The Azure resource group where the resourcegroup resides

	.PARAMETER NmeLinkResourceGroupRequest

	Requires an NmeLinkResourceGroupRequest object, as generated by the New-NmeLinkResourceGroupRequest command.

	#>

	[CmdletBinding()]
	Param(
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][ValidatePattern('(\{|\()?[A-Za-z0-9]{4}([A-Za-z0-9]{4}\-?){4}[A-Za-z0-9]{12}(\}|\()?')][string]$SubscriptionId,
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$ResourceGroup,
		[Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$True)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeLinkResourceGroupRequest"){$true} else{throw " is not a NmeLinkResourceGroupRequest object."}})]$NmeLinkResourceGroupRequest
	)
	Set-NmeAuthHeaders
	Try {
		$json = $NmeLinkResourceGroupRequest | ConvertTo-Json -Depth 20
		Write-Debug 'json:'
		Write-Debug $json
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/resourcegroup/$SubscriptionId/$ResourceGroup/linked$QueryString" -Method post -Headers $script:AuthHeaders -ContentType 'application/json' -body $json
		Write-Verbose ($result | out-string)
		$Result.PSObject.TypeNames.Insert(0, 'NmeResponseWithJob')
		$Result | Add-Member -NotePropertyName 'subscriptionId' -NotePropertyValue $subscriptionId -erroraction 'SilentlyContinue'
		$Result | Add-Member -NotePropertyName 'resourceGroup' -NotePropertyValue $resourceGroup -erroraction 'SilentlyContinue'
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
Function Remove-NmeLinkedResourceGroup {
	<#

	.SYNOPSIS

	Unlink Azure resource group.

	.DESCRIPTION

	Unlink Azure resource group. 

	This function calls the /api/v1/resourcegroup/{subscriptionId}/{resourceGroup}/linked endpoint of the NME REST API, using the delete method.


	.PARAMETER SubscriptionId

	The id (guid) of the subscription where this resourcegroup resides

	.PARAMETER ResourceGroup

	The Azure resource group where the resourcegroup resides

	#>

	[CmdletBinding()]
	Param(
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][ValidatePattern('(\{|\()?[A-Za-z0-9]{4}([A-Za-z0-9]{4}\-?){4}[A-Za-z0-9]{12}(\}|\()?')][string]$SubscriptionId,
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$ResourceGroup
	)
	Set-NmeAuthHeaders
	Try {
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/resourcegroup/$SubscriptionId/$ResourceGroup/linked$Querystring" -Method delete -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeResponseWithJob')
		$Result | Add-Member -NotePropertyName 'subscriptionId' -NotePropertyValue $subscriptionId -erroraction 'SilentlyContinue'
		$Result | Add-Member -NotePropertyName 'resourceGroup' -NotePropertyValue $resourceGroup -erroraction 'SilentlyContinue'
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
