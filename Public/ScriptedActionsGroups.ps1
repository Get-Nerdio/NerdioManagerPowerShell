Function Get-NmeScriptedActionsGroup {
	<#

	.SYNOPSIS

	Get scripted actions groups.

	.DESCRIPTION

	Get scripted actions groups. 

	This function calls the /api/v1/scripted-actions-group endpoint of the NME REST API, using the get method.




	#>

	[CmdletBinding()]
	Param(

	)
	Set-NmeAuthHeaders
	Try {
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/scripted-actions-group$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeScriptedActionsGroup')
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
Function Get-NmeScriptedActionsGroupId {
	<#

	.SYNOPSIS

	Get scripted actions group.

	.DESCRIPTION

	Get scripted actions group. 

	This function calls the /api/v1/scripted-actions-group/{id} endpoint of the NME REST API, using the get method.


	.PARAMETER Id

	ID of scripted Action

	#>

	[CmdletBinding()]
	Param(
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][int]$Id
	)
	Set-NmeAuthHeaders
	Try {
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/scripted-actions-group/$Id$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeScriptedActionsGroup')
		$Result | Add-Member -NotePropertyName 'id' -NotePropertyValue $id -erroraction 'SilentlyContinue'
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
