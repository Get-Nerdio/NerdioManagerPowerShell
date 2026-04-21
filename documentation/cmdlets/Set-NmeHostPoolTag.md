# Set-NmeHostPoolTag

**Endpoint:** `PUT /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/tag`

## Description

Update custom tags for ARM host pool

**Output Type:** `IHostPoolTagsUpdateResult`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| Tags | Hashtable | Yes | Key is Azure tag name, value is tag value |
| UpdateObjects | SwitchParameter | Yes |  |

## Examples

```powershell
Set-NmeHostPoolTag `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -Tags @{TAG1_NAME = "TAG1_VALUE"; TAG2_NAME = "TAG2_VALUE"} `
    -UpdateObjects
```

