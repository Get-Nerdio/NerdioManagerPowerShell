# New-NmeVmObjectIdModel

Create an in-memory object for VmObjectId.

**Output Type:** `VmObjectId`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AddSuffix | Boolean | Yes |  |
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Usage

```powershell
$model = New-NmeVmObjectIdModel `
    -AddSuffix $true `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

