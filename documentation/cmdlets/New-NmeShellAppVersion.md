# New-NmeShellAppVersion

**Endpoint:** `POST /api/v1/shell-app/{id}/version`

## Description

Add Shell App version

**Output Type:** `IResponseWithJobAndShellAppVersion`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| IsPreview | SwitchParameter | Yes |  |
| Name | String | Yes |  |
| FileSha256 | String | No |  |
| FileSourceUrl | String | No |  |
| InstallScriptOverride | String | No |  |

## Examples

### Example 1: Add version

```powershell
New-NmeShellAppVersion `
    -Id 0 `
    -IsPreview `
    -Name "3.0"
```

### Example 2: Add version with file and install script override

```powershell
New-NmeShellAppVersion `
    -Id 0 `
    -IsPreview `
    -Name "3.0" `
    -FileSha256 "External file hash" `
    -FileSourceUrl "External file url" `
    -InstallScriptOverride "Install script override"
```

