Function Get-NmeLinkedNetworks {
	<#

	.SYNOPSIS

	Get all linked virtual networks.

	.DESCRIPTION

	Get all linked virtual networks. 

	This function calls the /api/v1/networks endpoint of the NME REST API, using the get method.




	#>

	[CmdletBinding()]
	Param(

	)
	Set-NmeAuthHeaders
	Try {
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/networks$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeLinkedNetworkRestModel')
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
Function New-NmeLinkedNetworks {
	<#

	.SYNOPSIS

	Link virtual network.

	.DESCRIPTION

	Link virtual network. 

	This function calls the /api/v1/networks endpoint of the NME REST API, using the post method.


	.PARAMETER NmeLinkNetworkRestPayload

	Requires an NmeLinkNetworkRestPayload object, as generated by the New-NmeLinkNetworkRestPayload command.

	#>

	[CmdletBinding()]
	Param(
		[Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$True)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeLinkNetworkRestPayload"){$true} else{throw " is not a NmeLinkNetworkRestPayload object."}})]$NmeLinkNetworkRestPayload
	)
	Set-NmeAuthHeaders
	Try {
		$json = $NmeLinkNetworkRestPayload | ConvertTo-Json -Depth 20
		Write-Debug 'json:'
		Write-Debug $json
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/networks$QueryString" -Method post -Headers $script:AuthHeaders -ContentType 'application/json' -body $json
		Write-Verbose ($result | out-string)
		$Result.PSObject.TypeNames.Insert(0, 'NmeLinkedNetworkRestModel')
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
