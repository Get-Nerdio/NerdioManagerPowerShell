# Invoke-NmeHostPoolUnassignUser

**Endpoint:** `POST /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/unassign`

## Description

Unassign users and/or groups from ARM host pool

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
Invoke-NmeHostPoolUnassignUser `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -AppGroups @("/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.DesktopVirtualization/applicationgroups/app-group-1") `
    -Groups @("d70c6c9b-9090-4406-8803-84b9496393e2") `
    -Users @("e17e2ba9-f329-4b55-8d65-4a26fdcd11d1")
```

