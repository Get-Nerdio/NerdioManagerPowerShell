# Connect-Nme

## Description

Authenticates to the Nerdio Manager REST API for subsequent cmdlet calls

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ApiScope | String | Yes | REST API scope (e.g. `api://00000000-0000-0000-0000-000000000000/.default`) |
| ClientId | String | Yes | App Registration Client ID (e.g. `00000000-0000-0000-0000-000000000000`) |
| ClientSecret | String | Yes | App Registration Secret (60 characters) |
| NmeUri | String | Yes | Base URL of your Nerdio Manager instance (e.g. `https://your-nme-app.azurewebsites.net`) |
| TenantId | Guid | Yes | Entra ID tenant ID (e.g. `00000000-0000-0000-0000-000000000000`) |
| CloudEnvironment | String | No | Values: `AzureCloud`, `AzureUSGovernment`. Default is `AzureCloud` |

## Examples


```powershell
Connect-Nme `
    -NmeUri       "https://your-nme-app.azurewebsites.net" `
    -TenantId     "00000000-0000-0000-0000-000000000000" `
    -ClientId     "00000000-0000-0000-0000-000000000000" `
    -ClientSecret "your-client-secret" `
    -ApiScope     "api://00000000-0000-0000-0000-000000000000/.default"
```

