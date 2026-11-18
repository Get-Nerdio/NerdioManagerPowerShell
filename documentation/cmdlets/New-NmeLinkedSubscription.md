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
| ServicePrincipalCertificateName | String | No |  |

## Examples

### Example 1: Link subscription which has configured RBAC roles for NME app

```powershell
New-NmeLinkedSubscription `
    -SubscriptionId "e0b52e85-7caf-4260-a772-c0d82e56d407" `
    -TenantId "09ca289d-7bb6-42c2-8f1d-2dc8858b81bf"
```

### Example 2: Link subscription using app credentials

```powershell
New-NmeLinkedSubscription `
    -SubscriptionId "e0b52e85-7caf-4260-a772-c0d82e56d407" `
    -TenantId "09ca289d-7bb6-42c2-8f1d-2dc8858b81bf" `
    -ServicePrincipalAppId "a1c63f94-8bde-4371-b883-d1e93f67e518" `
    -ServicePrincipalAppSecret "_ASFsaf97asf9a7sfoa_~~2143" `
    -ServicePrincipalAzureType "AzureCloud"
```

