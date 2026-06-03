# New-NmeServicePrincipalParamsModel

Create an in-memory object for ServicePrincipalParams.

**Output Type:** `ServicePrincipalParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AppId | String | Yes |  |
| AzureType | String | Yes | Values: `AzureCloud`, `AzureUSGovernment`, `AzureChina` |
| AppName | String | No |  |
| AppSecret | String | No |  |
| CertificateName | String | No |  |

## Usage

```powershell
$model = New-NmeServicePrincipalParamsModel `
    -AppId "<AppId>" `
    -AzureType "AzureCloud"
```

