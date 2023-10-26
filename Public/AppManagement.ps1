Function Get-NmeAppRepository {
	<#

	.SYNOPSIS

	Get Winget private repositories.

	.DESCRIPTION

	Get Winget private repositories. 

	This function calls the /api/v1/app-management/repository endpoint of the NME REST API, using the get method.




	#>

	[CmdletBinding()]
	Param(

	)
	Set-NmeAuthHeaders
	Try {
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/app-management/repository$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeWingetPrivateRepository')
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
