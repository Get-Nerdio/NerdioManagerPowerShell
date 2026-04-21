# New-NmeLinkedSubscriptionCreateModel

Create an in-memory object for LinkedSubscriptionCreate.

**Output Type:** `LinkedSubscriptionCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AvdEnabled | Boolean | Yes |  |
| CostManagementEnabled | Boolean | Yes |  |
| SubscriptionId | String | Yes |  |
| TenantId | String | Yes |  |
| ServicePrincipalAppId | String | No |  |
| ServicePrincipalAppName | String | No |  |
| ServicePrincipalAppSecret | String | No |  |
| ServicePrincipalAzureType | String | No | Values: `AzureCloud`, `AzureUSGovernment`, `AzureChina` |

## Usage

```powershell
$model = New-NmeLinkedSubscriptionCreateModel `
    -AvdEnabled $true `
    -CostManagementEnabled $true `
    -SubscriptionId "<SubscriptionId>" `
    -TenantId "<TenantId>"
```

