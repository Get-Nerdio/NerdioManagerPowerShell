Function Test-NmeApi {
	<#

	.SYNOPSIS

	.

	.DESCRIPTION

	. 

	This function calls the /api/v1/test endpoint of the NME REST API, using the get method.




	#>

	[CmdletBinding()]
	Param(

	)
	Set-NmeAuthHeaders
	Try {
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/test$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
