# Get-NmeLinkedSubscription

**Category:** Subscriptions

**Endpoint:** `GET /api/v1/subscriptions`

**Endpoint:** `GET /api/v1/subscriptions/{subscriptionId}`

**Output Type:** `ILinkedSubscription`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| SubscriptionId | String | Yes |  |

## Examples

### Example 1: GET /api/v1/subscriptions

```powershell
Get-NmeLinkedSubscription
```

### Example 2: GET /api/v1/subscriptions/{subscriptionId}

```powershell
Get-NmeLinkedSubscription -SubscriptionId "<SubscriptionId>"
```

