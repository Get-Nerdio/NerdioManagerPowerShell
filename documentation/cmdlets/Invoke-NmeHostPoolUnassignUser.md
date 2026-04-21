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
    -Groups @("76a433c3-8669-4faa-8348-5e847f1550e0") `
    -Users @("b89f4533-26b8-480c-a786-bbb25446e54d")
```

