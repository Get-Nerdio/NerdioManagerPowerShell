Function Get-NmeUserSelfService {
	<#

	.SYNOPSIS

	Get user self-service settings.

	.DESCRIPTION

	Get user self-service settings. 

	This function calls the /api/v1/user-self-service endpoint of the NME REST API, using the get method.




	#>

	[CmdletBinding()]
	Param(

	)
	Set-NmeAuthHeaders
	Try {
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/user-self-service$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeLogoSettingsDto')
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
