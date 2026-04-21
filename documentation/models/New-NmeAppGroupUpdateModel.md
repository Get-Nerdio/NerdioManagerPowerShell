# New-NmeAppGroupUpdateModel

Create an in-memory object for AppGroupUpdate.

**Output Type:** `AppGroupUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Items | [IAppGroupItemCreate[]](New-NmeAppGroupItemCreateModel.md) | No | Pass as array. |
| Name | String | No |  |

## Usage

```powershell
$items = New-NmeAppGroupItemCreateModel `
    -CachedName "<CachedName>" `
    -ExternalId "<ExternalId>" `
    -Reboot $true `
    -RepoId 0 `
    -Version "<Version>"
$model = New-NmeAppGroupUpdateModel `
    -Items $items `
    -Name "<Name>"
```

