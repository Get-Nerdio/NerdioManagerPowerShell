# Get-NmeHostPoolAutoscaleProfile

**Endpoint:** `GET /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/auto-scale/profile-override/{assignmentType}`

**Output Type:** `IAutoScaleProfileOverride`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AssignmentType | String | Yes | Values: `Primary`, `Secondary` |
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Get-NmeHostPoolAutoscaleProfile `
    -AssignmentType "Primary" `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

