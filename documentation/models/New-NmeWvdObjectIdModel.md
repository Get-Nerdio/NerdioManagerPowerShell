# New-NmeWvdObjectIdModel

Create an in-memory object for WvdObjectId.

**Output Type:** `WvdObjectId`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Usage

```powershell
$model = New-NmeWvdObjectIdModel `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

