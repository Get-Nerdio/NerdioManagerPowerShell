Function Get-NmeJob {
	<#

	.SYNOPSIS

	Get job by id.

	.DESCRIPTION

	Get job by id. 

	This function calls the /api/v1/job/{jobId} endpoint of the NME REST API, using the get method.


	.PARAMETER JobId

	Nerdio Manager job id

	#>

	[CmdletBinding()]
	Param(
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][int]$JobId
	)
	Set-NmeAuthHeaders
	Try {
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/job/$JobId$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeJob')
		$Result | Add-Member -NotePropertyName 'jobId' -NotePropertyValue $jobId -erroraction 'SilentlyContinue'
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
Function Get-NmeJobTasks {
	<#

	.SYNOPSIS

	Get job tasks by job id.

	.DESCRIPTION

	Get job tasks by job id. 

	This function calls the /api/v1/job/{jobId}/tasks endpoint of the NME REST API, using the get method.


	.PARAMETER JobId

	Nerdio Manager job id

	#>

	[CmdletBinding()]
	Param(
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][int]$JobId
	)
	Set-NmeAuthHeaders
	Try {
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/job/$JobId/tasks$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeJobTask')
		$Result | ForEach-Object {$_ | Add-Member -NotePropertyName 'jobId' -NotePropertyValue $jobId -erroraction 'SilentlyContinue'}
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
