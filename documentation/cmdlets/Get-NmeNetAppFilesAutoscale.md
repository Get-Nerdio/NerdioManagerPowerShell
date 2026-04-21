# Get-NmeNetAppFilesAutoscale

**Endpoint:** `GET /api/v1/storage/netapp-files/{subscriptionId}/{resourceGroupName}/{accountName}/{poolName}/{volumeName}/auto-scale`

## Description

Get Net App Files auto-scale

**Output Type:** `INetAppFilesAutoscaleConfig`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AccountName | String | Yes |  |
| PoolName | String | Yes |  |
| ResourceGroupName | String | Yes |  |
| SubscriptionId | String | Yes |  |
| VolumeName | String | Yes |  |

## Examples

```powershell
Get-NmeNetAppFilesAutoscale `
    -AccountName "<AccountName>" `
    -PoolName "<PoolName>" `
    -ResourceGroupName "<ResourceGroupName>" `
    -SubscriptionId "<SubscriptionId>" `
    -VolumeName "<VolumeName>"
```

