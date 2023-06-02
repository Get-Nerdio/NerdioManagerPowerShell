function Connect-Nme {
    [CmdletBinding()]
    param(
        [string]$ClientId,
        [string]$ApiScope,
        [string]$ClientSecret,
        [guid]$TenantId,
        [string]$NmeUri
    )
    $script:NmeUri = $NmeUri
    $script:ClientId = $ClientId
    $script:ApiScope = $ApiScope
    $script:TenantId = $tenantId
    $script:ClientSecret = $ClientSecret
    Set-NmeAuthHeaders -Force
    if (Test-NmeApi) {
        Write-Host "Connection successful."
    }
}

function Set-NmeAuthHeaders {
    [CmdletBinding()]
    param([switch]$Force)
    if ($null -eq $Script:AuthHeaders -or ($Script:TokenCreationTime -lt (get-date).AddSeconds(-3000)) -or $Force){
        Write-Verbose "Renewing token"
        $body = "grant_type=client_credentials&client_id=$ClientId&scope=$ApiScope&client_secret=$ClientSecret"
        try {
            Write-Verbose "Requesting auth token"
            $response = Invoke-RestMethod "https://login.microsoftonline.com/$tenantId/oauth2/v2.0/token" -Method 'POST' -Body $body
        }
        catch {
            $message = ParseErrorForResponseBody($_)
            write-error ($message | Out-String)
        }
        $Script:TokenCreationTime = get-date
        $script:AuthHeaders = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
        $script:AuthHeaders.Add("Authorization", "Bearer $($response.access_token)")
        Write-Debug "Renewed NME auth token"
    }
    else {
        Write-Verbose "NME token is current; not renewing"
    }
    # Write-Debug "NME auth header is $($script:AuthHeaders | out-string)"
}

function ParseErrorForResponseBody($ErrorObj) {
    Write-Verbose "Parsing response for error message"
    if ($PSVersionTable.PSVersion.Major -lt 6) {
        if ($ErrorObj.Exception.Response) {  
            $Reader = New-Object System.IO.StreamReader($ErrorObj.Exception.Response.GetResponseStream())
            $Reader.BaseStream.Position = 0
            $Reader.DiscardBufferedData()
            $ResponseBody = $Reader.ReadToEnd()
            if ($ResponseBody.StartsWith('{')) {
                $ResponseBody = $ResponseBody | ConvertFrom-Json
            }
            Write-Output $ResponseBody
            return $ResponseBody.errormessage
        }
        else {
            Write-Debug "No errorobject.exception.response found"
            $ErrorObj
        }
    }
    else {
        if ($ErrorObj.ErrorDetails.Message) {
            return $ErrorObj.ErrorDetails.Message
        }
        else {
            return $ErrorObj
        }
    }
    
}

function CapString {
    Param(
        [string]$String
    )
    $firstLetter = $string.Substring(0,1).ToUpper()
    $restOfTheString = $string.Substring(1)
    $string = $firstLetter + $restOfTheString
    $string
}
function CapProps {
    Param (
        [Parameter(ValueFromPipeline=$true)][psobject]$Object
    )
    BEGIN {}
    PROCESS {
        if ($Object){
            $TypeName = $Object.psobject.typenames | Where-Object {$_ -NotMatch 'System\.'} | select -First 1
            $Properties =  Get-Member -InputObject $Object | Where-Object MemberType -eq NoteProperty
            $NewObject = New-Object -TypeName psobject  
            foreach ($prop in $Properties) {
                if ($prop.Definition -match 'object') {
                    $NewObject | Add-Member -NotePropertyName (CapString $prop.name) -NotePropertyValue (CapProps $Object.($prop.name))
                }
                else {$NewObject | Add-Member -NotePropertyName (CapString $prop.name) -NotePropertyValue $Object.($prop.name)}
            }
            if ($TypeName) {$NewObject.PSObject.TypeNames.Insert(0, $TypeName)}
            return $NewObject
        }
    }
    END{}
}


