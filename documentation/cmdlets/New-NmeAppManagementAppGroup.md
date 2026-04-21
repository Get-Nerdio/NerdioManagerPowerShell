# New-NmeAppManagementAppGroup

**Endpoint:** `POST /api/v1/app-management/app-group`

## Description

Create a new app group

**Output Type:** `IResponseWithJobAndAppGroup`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Items | [IAppGroupItemCreate[]](../models/New-NmeAppGroupItemCreateModel.md) | Yes |  |
| Name | String | Yes |  |

## Examples

```powershell
$items = New-NmeAppGroupItemCreateModel `
    -CachedName "<CachedName>" `
    -ExternalId "<ExternalId>" `
    -Reboot $true `
    -RepoId 0 `
    -Version "<Version>"
New-NmeAppManagementAppGroup `
    -Items @($items) `
    -Name "test group"
```

