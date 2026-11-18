# New-NmeAppGroupItemCreateModel

Create an in-memory object for AppGroupItemCreate.

**Output Type:** `AppGroupItemCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| CachedName | String | Yes |  |
| ExternalId | String | Yes |  |
| RepoId | Int32 | Yes |  |
| Version | String | Yes |  |
| AssignmentType | String | No | Values: `Available`, `Required` |
| OnUpgradeFail | String | No | Values: `Reinstall`, `Fail` |
| Reboot | Boolean | No |  |

## Usage

```powershell
$model = New-NmeAppGroupItemCreateModel `
    -CachedName "<CachedName>" `
    -ExternalId "<ExternalId>" `
    -RepoId 0 `
    -Version "<Version>"
```

