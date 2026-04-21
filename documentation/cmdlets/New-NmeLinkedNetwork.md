# New-NmeLinkedNetwork

**Endpoint:** `POST /api/v1/networks`

## Description

Link virtual network

**Output Type:** `ILinkedNetwork`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| NetworkName | String | Yes |  |
| ResourceGroupName | String | Yes |  |
| SubnetName | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
New-NmeLinkedNetwork `
    -NetworkName "v-net-1" `
    -ResourceGroupName "resource-group-1" `
    -SubnetName "LAN" `
    -SubscriptionId "e0b52e85-7caf-4260-a772-c0d82e56d407"
```

