# New-NmeMsixPackageFromFile

**Endpoint:** `POST /api/v1/app-attach/package-msix/direct`

## Description

Upload MSIX package (up to 100MB)

Default failure policy values are: cleanup = false, restart = false incase not specified
If TempVmSubscriptionId and/or TempVmResourceGroup is not specified, default resource group will be used
If TempVmNetworkId and/or TempVmSubnet is not specified, default network will be used
To reset example values press "reset", then "cancel" and "try it out"

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| LocationId | String | Yes |  |

## Examples

```powershell
New-NmeMsixPackageFromFile -LocationId "<LocationId>"
```

