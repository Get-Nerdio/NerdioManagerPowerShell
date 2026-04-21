# New-NmeAppGroupItemCreateModel

Create an in-memory object for AppGroupItemCreate.

**Output Type:** `AppGroupItemCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| CachedName | String | Yes |  |
| ExternalId | String | Yes |  |
| Reboot | Boolean | Yes |  |
| RepoId | Int32 | Yes |  |
| Version | String | Yes |  |

## Usage

```powershell
$model = New-NmeAppGroupItemCreateModel `
    -CachedName "<CachedName>" `
    -ExternalId "<ExternalId>" `
    -Reboot $true `
    -RepoId 0 `
    -Version "<Version>"
```

