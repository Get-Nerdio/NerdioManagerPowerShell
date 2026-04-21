# Update-NmeLinkedSubscription

**Endpoint:** `PATCH /api/v1/subscriptions/{subscriptionId}`

**Output Type:** `ILinkedSubscription`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| SubscriptionId | String | Yes |  |
| AvdEnabled | SwitchParameter | No |  |
| CostManagementEnabled | SwitchParameter | No |  |

## Examples

```powershell
Update-NmeLinkedSubscription -SubscriptionId "<SubscriptionId>"
```

