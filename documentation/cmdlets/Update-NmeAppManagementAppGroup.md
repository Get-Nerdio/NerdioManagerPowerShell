# Update-NmeAppManagementAppGroup

**Endpoint:** `PATCH /api/v1/app-management/app-group/{appGroupId}`

## Description

Edit app group

**Output Type:** `IResponseWithJobAndAppGroup`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AppGroupId | Int32 | Yes |  |
| Items | [IAppGroupItemCreate[]](../models/New-NmeAppGroupItemCreateModel.md) | No |  |
| Name | String | No |  |

## Examples

### Example 1: Change name

```powershell
Update-NmeAppManagementAppGroup `
    -AppGroupId 0 `
    -Name "new name"
```

### Example 2: Change items

```powershell
$items = New-NmeAppGroupItemCreateModel `
    -CachedName "Microsoft .NET Runtime 8.0" `
    -ExternalId "Microsoft.DotNet.Runtime.8" `
    -Reboot $true `
    -RepoId 1 `
    -Version "8.0.0"
Update-NmeAppManagementAppGroup `
    -AppGroupId 0 `
    -Items @($items)
```

