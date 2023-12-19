Function Get-NmeImages {
	<#

	.SYNOPSIS

	Get list of all images.

	.DESCRIPTION

	Get list of all images. 

	This function calls the /api/v1/image endpoint of the NME REST API, using the get method.


	.PARAMETER ImageType

	Valid values are: MarketplaceImage, CustomImage, or ComputeGalleryImage

	#>

	[CmdletBinding()]
	Param(
		[Parameter(ValueFromPipelineByPropertyName=$true)][ValidateSet("MarketplaceImage", "CustomImage", "ComputeGalleryImage")][string]$ImageType
	)
	Set-NmeAuthHeaders
	Try {
		$QueryString = '?'
		$QueryStrings = @{}
		$QueryStrings += @{imageType= $imageType}
		$QueryString += ($QueryStrings.GetEnumerator() | % { "$($_.Key)=$($_.Value)" }) -join '&'
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/image$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeImageRestModel')
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
