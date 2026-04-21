# New-NmeServicePrincipalParamsModel

Create an in-memory object for ServicePrincipalParams.

**Output Type:** `ServicePrincipalParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AppId | String | Yes |  |
| AppSecret | String | Yes |  |
| AzureType | String | Yes | Values: `AzureCloud`, `AzureUSGovernment`, `AzureChina` |
| AppName | String | No |  |

## Usage

```powershell
$model = New-NmeServicePrincipalParamsModel `
    -AppId "<AppId>" `
    -AppSecret "<AppSecret>" `
    -AzureType "AzureCloud"
```

