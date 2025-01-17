Function Get-NmeLogo {
	<#

	.SYNOPSIS

	Get logo settings.

	.DESCRIPTION

	Get logo settings. 

	This function calls the /api/v1/portal/logo endpoint of the NME REST API, using the get method.




	#>

	[CmdletBinding()]
	Param(

	)
	Set-NmeAuthHeaders
	Try {
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/portal/logo$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeLogoSettingsRestModel')
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
