# New-NmeShellAppCreateModel

Create an in-memory object for ShellAppCreate.

**Output Type:** `ShellAppCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Description | String | Yes |  |
| DetectScript | String | Yes |  |
| FileUnzip | Boolean | Yes |  |
| InstallScript | String | Yes |  |
| IsPublic | Boolean | Yes |  |
| Name | String | Yes |  |
| Publisher | String | Yes |  |
| UninstallScript | String | Yes |  |
| Versions | [IShellAppVersionCreate[]](New-NmeShellAppVersionCreateModel.md) | Yes | Pass as array. |

## Usage

```powershell
$versions = New-NmeShellAppVersionCreateModel `
    -IsPreview $true `
    -Name "<Name>"
$model = New-NmeShellAppCreateModel `
    -Description "<Description>" `
    -DetectScript "<DetectScript>" `
    -FileUnzip $true `
    -InstallScript "<InstallScript>" `
    -IsPublic $true `
    -Name "<Name>" `
    -Publisher "<Publisher>" `
    -UninstallScript "<UninstallScript>" `
    -Versions $versions
```

