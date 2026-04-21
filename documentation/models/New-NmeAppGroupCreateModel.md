# New-NmeAppGroupCreateModel

Create an in-memory object for AppGroupCreate.

**Output Type:** `AppGroupCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Items | [IAppGroupItemCreate[]](New-NmeAppGroupItemCreateModel.md) | Yes | Pass as array. |
| Name | String | Yes |  |

## Usage

```powershell
$items = New-NmeAppGroupItemCreateModel `
    -CachedName "<CachedName>" `
    -ExternalId "<ExternalId>" `
    -Reboot $true `
    -RepoId 0 `
    -Version "<Version>"
$model = New-NmeAppGroupCreateModel `
    -Items $items `
    -Name "<Name>"
```

