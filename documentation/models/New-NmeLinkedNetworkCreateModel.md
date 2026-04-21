# New-NmeLinkedNetworkCreateModel

Create an in-memory object for LinkedNetworkCreate.

**Output Type:** `LinkedNetworkCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| NetworkName | String | Yes |  |
| ResourceGroupName | String | Yes |  |
| SubnetName | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Usage

```powershell
$model = New-NmeLinkedNetworkCreateModel `
    -NetworkName "<NetworkName>" `
    -ResourceGroupName "<ResourceGroupName>" `
    -SubnetName "<SubnetName>" `
    -SubscriptionId "<SubscriptionId>"
```

