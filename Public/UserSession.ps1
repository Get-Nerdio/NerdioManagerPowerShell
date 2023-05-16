Function Get-NmeHostPoolSessions {
	<#

	.SYNOPSIS

	Get ARM host pool user sessions.

	.DESCRIPTION

	Get ARM host pool user sessions. 

	This function calls the /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/session endpoint of the NME REST API, using the get method.


	.PARAMETER SubscriptionId

	The id (guid) of the subscription where this hostpool resides

	.PARAMETER ResourceGroup

	The Azure resource group where the hostpool resides

	.PARAMETER HostPoolName

	The name of the Host Pool

	.PARAMETER Hostname

	Name of AVD host

	.PARAMETER Username

	Username of assigned user

	#>

	[CmdletBinding()]
	Param(
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$SubscriptionId,
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$ResourceGroup,
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$HostPoolName,
		[Parameter(ValueFromPipelineByPropertyName=$true)][string]$Hostname,
		[Parameter(ValueFromPipelineByPropertyName=$true)][string]$Username
	)
	Set-NmeAuthHeaders
	Try {
		$QueryString = '?'
		$QueryStrings = @{}
		$QueryStrings += @{hostname= $hostname}
		$QueryStrings += @{username= $username}
		$QueryString += ($QueryStrings.GetEnumerator() | % { "$($_.Key)=$($_.Value)" }) -join '&'
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/arm/hostpool/$SubscriptionId/$ResourceGroup/$HostPoolName/session$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeArmSession')
		$Result | ForEach-Object {$_ | Add-Member -NotePropertyName 'subscriptionId' -NotePropertyValue $subscriptionId -erroraction 'SilentlyContinue'}
		$Result | ForEach-Object {$_ | Add-Member -NotePropertyName 'resourceGroup' -NotePropertyValue $resourceGroup -erroraction 'SilentlyContinue'}
		$Result | ForEach-Object {$_ | Add-Member -NotePropertyName 'hostPoolName' -NotePropertyValue $hostPoolName -erroraction 'SilentlyContinue'}
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
Function Get-NmeWorkspaceSessions {
	<#

	.SYNOPSIS

	Get ARM workspace user sessions.

	.DESCRIPTION

	Get ARM workspace user sessions. 

	This function calls the /api/v1/arm/workspace/{subscriptionId}/{resourceGroup}/{workspaceName}/session endpoint of the NME REST API, using the get method.


	.PARAMETER SubscriptionId

	The id (guid) of the subscription where this workspace resides

	.PARAMETER ResourceGroup

	The Azure resource group where the workspace resides

	.PARAMETER WorkspaceName

	Name of the AVD Workspace

	.PARAMETER Hostname

	Name of AVD host

	.PARAMETER Username

	Username of assigned user

	#>

	[CmdletBinding()]
	Param(
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$SubscriptionId,
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$ResourceGroup,
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$WorkspaceName,
		[Parameter(ValueFromPipelineByPropertyName=$true)][string]$Hostname,
		[Parameter(ValueFromPipelineByPropertyName=$true)][string]$Username
	)
	Set-NmeAuthHeaders
	Try {
		$QueryString = '?'
		$QueryStrings = @{}
		$QueryStrings += @{hostname= $hostname}
		$QueryStrings += @{username= $username}
		$QueryString += ($QueryStrings.GetEnumerator() | % { "$($_.Key)=$($_.Value)" }) -join '&'
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/arm/workspace/$SubscriptionId/$ResourceGroup/$WorkspaceName/session$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeArmSession')
		$Result | ForEach-Object {$_ | Add-Member -NotePropertyName 'subscriptionId' -NotePropertyValue $subscriptionId -erroraction 'SilentlyContinue'}
		$Result | ForEach-Object {$_ | Add-Member -NotePropertyName 'resourceGroup' -NotePropertyValue $resourceGroup -erroraction 'SilentlyContinue'}
		$Result | ForEach-Object {$_ | Add-Member -NotePropertyName 'workspaceName' -NotePropertyValue $workspaceName -erroraction 'SilentlyContinue'}
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
Function New-NmeHostPoolSessionAction {
	<#

	.SYNOPSIS

	Perform action for ARM host pool user session.

	.DESCRIPTION

	Perform action for ARM host pool user session. 

	This function calls the /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostname}/session/{sessionId}/action endpoint of the NME REST API, using the post method.


	.PARAMETER SubscriptionId

	The id (guid) of the subscription where this hostpool resides

	.PARAMETER ResourceGroup

	The Azure resource group where the hostpool resides

	.PARAMETER HostPoolName

	The name of the Host Pool

	.PARAMETER Hostname

	Name of AVD host

	.PARAMETER SessionId

	The session id

	.PARAMETER NmeUserSessionActionRequest

	Requires an NmeUserSessionActionRequest object, as generated by the New-NmeUserSessionActionRequest command.

	#>

	[CmdletBinding()]
	Param(
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$SubscriptionId,
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$ResourceGroup,
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$HostPoolName,
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$Hostname,
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$SessionId,
		[Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$True)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeUserSessionActionRequest"){$true} else{throw " is not a NmeUserSessionActionRequest object."}})]$NmeUserSessionActionRequest
	)
	Set-NmeAuthHeaders
	Try {
		$json = $NmeUserSessionActionRequest | ConvertTo-Json -Depth 20
		Write-Debug 'json:'
		Write-Debug $json
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/arm/hostpool/$SubscriptionId/$ResourceGroup/$HostPoolName/host/$Hostname/session/$SessionId/action$QueryString" -Method post -Headers $script:AuthHeaders -ContentType 'application/json' -body $json
		Write-Verbose ($result | out-string)
		$Result.PSObject.TypeNames.Insert(0, 'NmeResponseWithJob')
		$Result | Add-Member -NotePropertyName 'subscriptionId' -NotePropertyValue $subscriptionId -erroraction 'SilentlyContinue'
		$Result | Add-Member -NotePropertyName 'resourceGroup' -NotePropertyValue $resourceGroup -erroraction 'SilentlyContinue'
		$Result | Add-Member -NotePropertyName 'hostPoolName' -NotePropertyValue $hostPoolName -erroraction 'SilentlyContinue'
		$Result | Add-Member -NotePropertyName 'hostname' -NotePropertyValue $hostname -erroraction 'SilentlyContinue'
		$Result | Add-Member -NotePropertyName 'sessionId' -NotePropertyValue $sessionId -erroraction 'SilentlyContinue'
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
