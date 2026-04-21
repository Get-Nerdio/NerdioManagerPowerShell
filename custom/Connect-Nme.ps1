function Connect-Nme {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string] $NmeUri,

        [ValidateSet('AzureCloud', 'AzureUSGovernment')]
        [string] $CloudEnvironment = 'AzureCloud',

        [Parameter(Mandatory = $true)]
        [guid] $TenantId,

        [Parameter(Mandatory = $true)]
        [string] $ClientId,

        [Parameter(Mandatory = $true)]
        [string] $ApiScope,

        [Parameter(Mandatory = $true)]
        [string] $ClientSecret
    )

    $env:NmeBaseUrl = $NmeUri
    $env:NmeClientId = $ClientId
    $env:NmeApiScope = $ApiScope
    $env:NmeTenantId = $TenantId
    $env:NmeClientSecret = [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($ClientSecret))
    $env:NmeCloudEnvironment = $CloudEnvironment

    Remove-Item Env:NmeAccessToken -ErrorAction SilentlyContinue
    Remove-Item Env:NmeTokenCreationTime -ErrorAction SilentlyContinue
}