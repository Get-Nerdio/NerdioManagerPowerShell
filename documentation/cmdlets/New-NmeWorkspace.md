# New-NmeWorkspace

**Endpoint:** `POST /api/v1/workspace`

## Description

Create ARM workspace

**Output Type:** `IResponseWithJobAndArmWorkspace`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IdName | String | Yes |  |
| IdResourceGroup | String | Yes |  |
| IdSubscriptionId | String | Yes |  |
| Location | String | Yes |  |
| Description | String | No |  |
| FriendlyName | String | No |  |
| Tags | Hashtable | No | Key is Azure tag name, value is tag value |

## Examples

```powershell
New-NmeWorkspace `
    -IdName "<IdName>" `
    -IdResourceGroup "<IdResourceGroup>" `
    -IdSubscriptionId "<IdSubscriptionId>" `
    -Location "eastus2" `
    -Description "some description" `
    -FriendlyName "friendly name" `
    -Tags @{tag-name = "tag-value"}
```

