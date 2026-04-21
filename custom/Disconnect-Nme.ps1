function Disconnect-Nme {
    [CmdletBinding()]
    param()
    Remove-Item Env:NmeBaseUrl -ErrorAction SilentlyContinue
    Remove-Item Env:NmeClientId -ErrorAction SilentlyContinue
    Remove-Item Env:NmeApiScope -ErrorAction SilentlyContinue
    Remove-Item Env:NmeTenantId -ErrorAction SilentlyContinue
    Remove-Item Env:NmeClientSecret -ErrorAction SilentlyContinue
    Remove-Item Env:NmeCloudEnvironment -ErrorAction SilentlyContinue

    Remove-Item Env:NmeAccessToken -ErrorAction SilentlyContinue
    Remove-Item Env:NmeTokenCreationTime -ErrorAction SilentlyContinue
}