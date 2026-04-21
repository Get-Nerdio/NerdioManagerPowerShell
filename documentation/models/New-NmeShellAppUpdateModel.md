# New-NmeShellAppUpdateModel

Create an in-memory object for ShellAppUpdate.

**Output Type:** `ShellAppUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Description | String | No |  |
| DetectScript | String | No |  |
| FileUnzip | Boolean | No |  |
| InstallScript | String | No |  |
| IsPublic | Boolean | No |  |
| Name | String | No |  |
| Publisher | String | No |  |
| UninstallScript | String | No |  |

## Usage

```powershell
$model = New-NmeShellAppUpdateModel `
    -Description "<Description>" `
    -DetectScript "<DetectScript>" `
    -FileUnzip $true `
    -InstallScript "<InstallScript>" `
    -IsPublic $true `
    -Name "<Name>" `
    -Publisher "<Publisher>" `
    -UninstallScript "<UninstallScript>"
```

