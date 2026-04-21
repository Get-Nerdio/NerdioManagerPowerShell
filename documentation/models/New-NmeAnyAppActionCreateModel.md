# New-NmeAnyAppActionCreateModel

Create an in-memory object for AnyAppActionCreate.

**Output Type:** `AnyAppActionCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ExternalId | String | Yes |  |
| Name | String | Yes |  |
| RepoId | Int32 | Yes |  |
| Type | String | Yes | Values: `Install`, `Uninstall` |
| Reboot | Boolean | No |  |
| Version | String | No |  |

## Usage

```powershell
$model = New-NmeAnyAppActionCreateModel `
    -ExternalId "<ExternalId>" `
    -Name "<Name>" `
    -RepoId 0 `
    -Type "Install"
```

