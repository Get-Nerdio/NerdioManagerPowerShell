Function Get-NmeAdConfig {
	<#

	.SYNOPSIS

	Get Active Directory configurations.

	.DESCRIPTION

	Get Active Directory configurations. 

	This function calls the /api/v1/ad/config endpoint of the NME REST API, using the get method.




	#>

	[CmdletBinding()]
	Param(

	)
	Set-NmeAuthHeaders
	Try {
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/ad/config$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeAdConfiguration')
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
