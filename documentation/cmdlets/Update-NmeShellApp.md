# Update-NmeShellApp

**Endpoint:** `PATCH /api/v1/shell-app/{id}`

## Description

Edit Shell App

**Output Type:** `IResponseWithJobAndShellApp`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| Description | String | No |  |
| DetectScript | String | No |  |
| FileUnzip | SwitchParameter | No |  |
| InstallScript | String | No |  |
| IsPublic | SwitchParameter | No |  |
| Name | String | No |  |
| Publisher | String | No |  |
| UninstallScript | String | No |  |

## Examples

### Example 1: Change name

```powershell
Update-NmeShellApp `
    -Id 0 `
    -Name "New Shell App Name"
```

### Example 2: Change many properties

```powershell
Update-NmeShellApp `
    -Id 0 `
    -Description "New description of Shell App" `
    -DetectScript "New detect script" `
    -FileUnzip `
    -InstallScript "New install script" `
    -IsPublic `
    -Name "New Shell App Name" `
    -Publisher "New Shell App Publisher" `
    -UninstallScript "New uninstall script"
```

