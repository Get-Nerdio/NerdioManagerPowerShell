# New-NmeLinkedSubscription

**Endpoint:** `POST /api/v1/subscriptions`

## Description

Link Azure subscription

**Output Type:** `ILinkedSubscription`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AvdEnabled | SwitchParameter | Yes |  |
| CostManagementEnabled | SwitchParameter | Yes |  |
| SubscriptionId | String | Yes |  |
| TenantId | String | Yes |  |
| ServicePrincipalAppId | String | No |  |
| ServicePrincipalAppName | String | No |  |
| ServicePrincipalAppSecret | String | No |  |
| ServicePrincipalAzureType | String | No | Values: `AzureCloud`, `AzureUSGovernment`, `AzureChina` |

## Examples

### Example 1: Link subscription which has configured RBAC roles for NME app

```powershell
New-NmeLinkedSubscription `
    -SubscriptionId "e0b52e85-7caf-4260-a772-c0d82e56d407" `
    -TenantId "4b039cff-6912-4149-9421-5f0070f3139c"
```

### Example 2: Link subscription using app credentials

```powershell
New-NmeLinkedSubscription `
    -SubscriptionId "e0b52e85-7caf-4260-a772-c0d82e56d407" `
    -TenantId "4b039cff-6912-4149-9421-5f0070f3139c" `
    -ServicePrincipalAppId "22207be8-a5f4-4c56-9480-43f0f9077e83" `
    -ServicePrincipalAppSecret "_ASFsaf97asf9a7sfoa_~~2143" `
    -ServicePrincipalAzureType "AzureCloud"
```

