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
    -Groups @("b2d74a05-9cef-4482-c994-e2f04a78f629") `
    -Users @("a1c63f94-8bde-4371-b883-d1e93f67e518")
```

