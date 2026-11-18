# New-NmeWorkspace

**Endpoint:** `POST /api/v1/workspace`

## Description

Create ARM workspace

**Output Type:** `IResponseWithJobAndArmWorkspace`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| DeploymentScope | String | Yes | Values: `Geographical`, `Regional` |
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
    -DeploymentScope "Geographical" `
    -IdName "<IdName>" `
    -IdResourceGroup "<IdResourceGroup>" `
    -IdSubscriptionId "<IdSubscriptionId>" `
    -Location "eastus2" `
    -Description "some description" `
    -FriendlyName "friendly name" `
    -Tags @{tag-name = "tag-value"}
```

