# New-NmeShellApp

**Endpoint:** `POST /api/v1/shell-app`

## Description

Create Shell App

**Output Type:** `IResponseWithJobAndShellApp`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Description | String | Yes |  |
| DetectScript | String | Yes |  |
| FileUnzip | SwitchParameter | Yes |  |
| InstallScript | String | Yes |  |
| IsPublic | SwitchParameter | Yes |  |
| Name | String | Yes |  |
| Publisher | String | Yes |  |
| UninstallScript | String | Yes |  |
| Versions | [IShellAppVersionCreate[]](../models/New-NmeShellAppVersionCreateModel.md) | Yes |  |

## Examples

### Example 1: Shell App with one version

```powershell
$versions = New-NmeShellAppVersionCreateModel `
    -IsPreview $true `
    -Name "1.0"
New-NmeShellApp `
    -Description "Description of Shell App" `
    -DetectScript "Detect script" `
    -InstallScript "Install script" `
    -Name "Shell App #1" `
    -Publisher "Shell App Publisher" `
    -UninstallScript "Uninstall script" `
    -Versions @($versions)
```

### Example 2: Shell App: empty install script, one version which has file and install script override

```powershell
$versions = New-NmeShellAppVersionCreateModel `
    -IsPreview $true `
    -Name "1.0" `
    -InstallScriptOverride "Install script override"
New-NmeShellApp `
    -Description "Description of Shell App" `
    -DetectScript "Detect script" `
    -InstallScript "" `
    -Name "Shell App #1" `
    -Publisher "Shell App Publisher" `
    -UninstallScript "Uninstall script" `
    -Versions @($versions)
```

### Example 3: Shell App with a few versions: one version has file and install script override

```powershell
$versions = New-NmeShellAppVersionCreateModel `
    -IsPreview $true `
    -Name "1.0" `
    -InstallScriptOverride "Install script override"
New-NmeShellApp `
    -Description "Description of Shell App" `
    -DetectScript "Detect script" `
    -InstallScript "Install script" `
    -Name "Shell App #1" `
    -Publisher "Shell App Publisher" `
    -UninstallScript "Uninstall script" `
    -Versions @($versions)
```

