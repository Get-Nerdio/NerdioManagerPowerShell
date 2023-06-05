Function Get-NmeAppAttachImage {
	<#

	.SYNOPSIS

	Get list of MSIX app attach images.

	.DESCRIPTION

	Get list of MSIX app attach images. 

	This function calls the /api/v1/app-attach/image endpoint of the NME REST API, using the get method.




	#>

	[CmdletBinding()]
	Param(

	)
	Set-NmeAuthHeaders
	Try {
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/app-attach/image$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeAppAttachImageRestModel')
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
Function New-NmeAppAttachImage {
	<#

	.SYNOPSIS

	Create MSIX app attach image.

	.DESCRIPTION

	### Use this endpoint to create a new MSIX app attach image. The created image does not have any versions. This endpoint does not allow to upload any files.
### To upload a new version from .vhd(x) file you can use api/v1/app-attach/image/{imageId}/version endpoint.
### There is no way to upload a new version from .msix files, but you can create a new MSIX app attach image from .msix files.. 

	This function calls the /api/v1/app-attach/image endpoint of the NME REST API, using the post method.


	.PARAMETER NmeAppAttachImageRestPostRequest

	Requires an NmeAppAttachImageRestPostRequest object, as generated by the New-NmeAppAttachImageRestPostRequest command.

	#>

	[CmdletBinding()]
	Param(
		[Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$True)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeAppAttachImageRestPostRequest"){$true} else{throw " is not a NmeAppAttachImageRestPostRequest object."}})]$NmeAppAttachImageRestPostRequest
	)
	Set-NmeAuthHeaders
	Try {
		$json = $NmeAppAttachImageRestPostRequest | ConvertTo-Json -Depth 20
		Write-Debug 'json:'
		Write-Debug $json
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/app-attach/image$QueryString" -Method post -Headers $script:AuthHeaders -ContentType 'application/json' -body $json
		Write-Verbose ($result | out-string)
		$Result.PSObject.TypeNames.Insert(0, 'NmeResponseWithJobAndAppAttachImageRestModel')
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
Function Get-NmeAppAttachImageVersion {
	<#

	.SYNOPSIS

	Get list of MSIX app attach image versions.

	.DESCRIPTION

	Get list of MSIX app attach image versions. 

	This function calls the /api/v1/app-attach/image/{imageId}/versions endpoint of the NME REST API, using the get method.


	.PARAMETER ImageId

	GUID of App Attach Image

	#>

	[CmdletBinding()]
	Param(
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$ImageId
	)
	Set-NmeAuthHeaders
	Try {
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/app-attach/image/$ImageId/versions$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeAppAttachImageVersionRestModel')
		$Result | ForEach-Object {$_ | Add-Member -NotePropertyName 'imageId' -NotePropertyValue $imageId -erroraction 'SilentlyContinue'}
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
Function Get-NmeMSIXAppAttachStorageLocations {
	<#

	.SYNOPSIS

	Get list of MSIX app attach storage locations.

	.DESCRIPTION

	Get list of MSIX app attach storage locations. 

	This function calls the /api/v1/app-attach/locations endpoint of the NME REST API, using the get method.




	#>

	[CmdletBinding()]
	Param(

	)
	Set-NmeAuthHeaders
	Try {
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/app-attach/locations$Querystring" -Method get -Headers $script:AuthHeaders -ContentType 'application/json'
		$Result.PSObject.TypeNames.Insert(0, 'NmeLinkedStorageLocationRestModel')
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
Function Set-NmeAppAttachImageId {
	<#

	.SYNOPSIS

	Update MSIX app attach image.

	.DESCRIPTION

	Update MSIX app attach image. 

	This function calls the /api/v1/app-attach/image/{imageId} endpoint of the NME REST API, using the patch method.


	.PARAMETER ImageId

	GUID of App Attach Image

	.PARAMETER NmeAppAttachImageRestPatchRequest

	Requires an NmeAppAttachImageRestPatchRequest object, as generated by the New-NmeAppAttachImageRestPatchRequest command.

	#>

	[CmdletBinding()]
	Param(
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$ImageId,
		[Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$True)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeAppAttachImageRestPatchRequest"){$true} else{throw " is not a NmeAppAttachImageRestPatchRequest object."}})]$NmeAppAttachImageRestPatchRequest
	)
	Set-NmeAuthHeaders
	Try {
		$json = $NmeAppAttachImageRestPatchRequest | ConvertTo-Json -Depth 20
		Write-Debug 'json:'
		Write-Debug $json
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/app-attach/image/$ImageId$QueryString" -Method patch -Headers $script:AuthHeaders -ContentType 'application/json' -body $json
		Write-Verbose ($result | out-string)
		$Result.PSObject.TypeNames.Insert(0, 'NmeResponseWithJobAndAppAttachImageRestModel')
		$Result | Add-Member -NotePropertyName 'imageId' -NotePropertyValue $imageId -erroraction 'SilentlyContinue'
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
Function New-NmeMSIXPackage {
	<#

	.SYNOPSIS

	Upload MSIX package.

	.DESCRIPTION

	### If PackageLinks contains URL of file in the same file share as location, no uploading and downloading will be performed. In other way file will be downloaded and then uploaded to the location.
### Default failure policy values are: cleanup = false, restart = false incase not specified
### If SubscriptionId and/or ResourceGroup is not specified, default resource group will be used
### If NetworkId and/or Subnet is not specified, default network will be used. 

	This function calls the /api/v1/app-attach/package-msix endpoint of the NME REST API, using the post method.


	.PARAMETER NmeUploadMsixPackageRestRequest

	Requires an NmeUploadMsixPackageRestRequest object, as generated by the New-NmeUploadMsixPackageRestRequest command.

	#>

	[CmdletBinding()]
	Param(
		[Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$True)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeUploadMsixPackageRestRequest"){$true} else{throw " is not a NmeUploadMsixPackageRestRequest object."}})]$NmeUploadMsixPackageRestRequest
	)
	Set-NmeAuthHeaders
	Try {
		$json = $NmeUploadMsixPackageRestRequest | ConvertTo-Json -Depth 20
		Write-Debug 'json:'
		Write-Debug $json
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/app-attach/package-msix$QueryString" -Method post -Headers $script:AuthHeaders -ContentType 'application/json' -body $json
		Write-Verbose ($result | out-string)
		$Result.PSObject.TypeNames.Insert(0, 'NmeResponseWithJob')
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
Function New-NmeMSIXPackageDirectUpload {
	<#

	.SYNOPSIS

	Upload MSIX package (up to 100MB).

	.DESCRIPTION

	### Default failure policy values are: cleanup = false, restart = false incase not specified
### If TempVmSubscriptionId and/or TempVmResourceGroup is not specified, default resource group will be used
### If TempVmNetworkId and/or TempVmSubnet is not specified, default network will be used
### To reset example values press "reset", then "cancel" and "try it out". 

	This function calls the /api/v1/app-attach/package-msix/direct endpoint of the NME REST API, using the post method.




	#>

	[CmdletBinding()]
	Param(

	)
	Set-NmeAuthHeaders
	Try {
		$json = $ | ConvertTo-Json -Depth 20
		Write-Debug 'json:'
		Write-Debug $json
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/app-attach/package-msix/direct$QueryString" -Method post -Headers $script:AuthHeaders -ContentType 'application/json' -body $json
		Write-Verbose ($result | out-string)
		$Result.PSObject.TypeNames.Insert(0, 'NmeResponseWithJob')
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
Function New-NmeMSIXImageVersion {
	<#

	.SYNOPSIS

	Upload MSIX app attach image version.

	.DESCRIPTION

	### Use this endpoint to upload a new version of existing MSIX app attach image from .vhd(x) file.
### If PackageLink contains URL of file in the same file share as location, no uploading and downloading will be performed. In other way file will be downloaded and then uploaded to the location.. 

	This function calls the /api/v1/app-attach/image/{imageId}/version endpoint of the NME REST API, using the post method.


	.PARAMETER ImageId

	GUID of App Attach Image

	.PARAMETER NmeAppAttachImageVersionRestPostRequest

	Requires an NmeAppAttachImageVersionRestPostRequest object, as generated by the New-NmeAppAttachImageVersionRestPostRequest command.

	#>

	[CmdletBinding()]
	Param(
		[Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)][string]$ImageId,
		[Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$True)][ValidateScript({if ($_.PSObject.TypeNames -contains "NmeAppAttachImageVersionRestPostRequest"){$true} else{throw " is not a NmeAppAttachImageVersionRestPostRequest object."}})]$NmeAppAttachImageVersionRestPostRequest
	)
	Set-NmeAuthHeaders
	Try {
		$json = $NmeAppAttachImageVersionRestPostRequest | ConvertTo-Json -Depth 20
		Write-Debug 'json:'
		Write-Debug $json
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/app-attach/image/$ImageId/version$QueryString" -Method post -Headers $script:AuthHeaders -ContentType 'application/json' -body $json
		Write-Verbose ($result | out-string)
		$Result.PSObject.TypeNames.Insert(0, 'NmeResponseWithJob')
		$Result | Add-Member -NotePropertyName 'imageId' -NotePropertyValue $imageId -erroraction 'SilentlyContinue'
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}
Function New-NmeMSIXImageCertificate {
	<#

	.SYNOPSIS

	Upload certificate.

	.DESCRIPTION

	Upload certificate. 

	This function calls the /api/v1/app-attach/certificate endpoint of the NME REST API, using the post method.




	#>

	[CmdletBinding()]
	Param(

	)
	Set-NmeAuthHeaders
	Try {
		$json = $ | ConvertTo-Json -Depth 20
		Write-Debug 'json:'
		Write-Debug $json
		$Result = Invoke-RestMethod "$script:NmeUri/api/v1/app-attach/certificate$QueryString" -Method post -Headers $script:AuthHeaders -ContentType 'application/json' -body $json
		Write-Verbose ($result | out-string)
		$Result.PSObject.TypeNames.Insert(0, 'NmeResponseWithJob')
		$Result | CapProps
	}
	Catch {
		$message = ParseErrorForResponseBody($_)
		write-error ($message | out-string)
	}
}