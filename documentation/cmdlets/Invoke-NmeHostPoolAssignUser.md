# Invoke-NmeHostPoolAssignUser

**Endpoint:** `POST /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/assign`

## Description

Assign users and/or groups to ARM host pool

### Notes
- **Users** can be either an array of principals or GUIDs
- **Groups** can be an array of GUID only

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| AppGroups | String[] | No |  |
| Groups | String[] | No |  |
| Users | String[] | No |  |

## Examples

```powershell
Invoke-NmeHostPoolAssignUser `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -AppGroups @("/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.DesktopVirtualization/applicationgroups/app-group-1") `
    -Groups @("34a1e06d-efb1-4bb3-9c5f-92ea65f6d168") `
    -Users @("9f642ae1-09a8-4124-992e-c584b4bfd783")
```

