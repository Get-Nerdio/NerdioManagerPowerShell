# Get-NmeFileShareAutoscale

**Endpoint:** `GET /api/v1/storage/azure-files/{subscriptionId}/{resourceGroup}/{accountName}/{shareName}/auto-scale`

## Description

Get Azure Files auto-scale

**Output Type:** `IAzureFilesAutoscaleConfig`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AccountName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| ShareName | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Get-NmeFileShareAutoscale `
    -AccountName "<AccountName>" `
    -ResourceGroup "<ResourceGroup>" `
    -ShareName "<ShareName>" `
    -SubscriptionId "<SubscriptionId>"
```

