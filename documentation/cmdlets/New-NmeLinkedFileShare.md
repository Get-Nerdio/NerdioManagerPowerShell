# New-NmeLinkedFileShare

**Endpoint:** `POST /api/v1/storage/azure-files/{subscriptionId}/{resourceGroup}/{accountName}/{shareName}/link`

## Description

Link File Share

**Output Type:** `Boolean`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AccountName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| ShareName | String | Yes |  |
| SubscriptionId | String | Yes |  |
| PassThru | SwitchParameter | No | Returns true when the command succeeds |

## Examples

```powershell
New-NmeLinkedFileShare `
    -AccountName "<AccountName>" `
    -ResourceGroup "<ResourceGroup>" `
    -ShareName "<ShareName>" `
    -SubscriptionId "<SubscriptionId>"
```

