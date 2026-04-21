# New-NmeLinkedSubscriptionUpdateModel

Create an in-memory object for LinkedSubscriptionUpdate.

**Output Type:** `LinkedSubscriptionUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AvdEnabled | Boolean | No |  |
| CostManagementEnabled | Boolean | No |  |

## Usage

```powershell
$model = New-NmeLinkedSubscriptionUpdateModel `
    -AvdEnabled $true `
    -CostManagementEnabled $true
```

