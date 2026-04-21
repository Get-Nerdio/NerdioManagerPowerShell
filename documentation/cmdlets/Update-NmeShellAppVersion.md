# Update-NmeShellAppVersion

**Endpoint:** `PATCH /api/v1/shell-app/{id}/version/{name}`

## Description

Edit Shell App version

**Output Type:** `IResponseWithJobAndShellAppVersion`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| Name | String | Yes |  |
| FileIsEnabled | SwitchParameter | No |  |
| InstallScriptOverrideIsEnabled | SwitchParameter | No |  |
| InstallScriptOverrideValue | String | No |  |
| IsPreview | SwitchParameter | No |  |
| Name1 | String | No |  |
| ValueSha256 | String | No |  |
| ValueSourceUrl | String | No |  |

## Examples

### Example 1: Change version name and preview

```powershell
Update-NmeShellAppVersion `
    -Id 0 `
    -Name "3.0" `
    -IsPreview
```

### Example 2: Change install script override

```powershell
Update-NmeShellAppVersion `
    -Id 0 `
    -Name "<Name>" `
    -InstallScriptOverrideIsEnabled `
    -InstallScriptOverrideValue "New install script override"
```

### Example 3: Turn off install script override

```powershell
Update-NmeShellAppVersion `
    -Id 0 `
    -Name "<Name>"
```

### Example 4: Change file

```powershell
Update-NmeShellAppVersion `
    -Id 0 `
    -Name "<Name>" `
    -FileIsEnabled `
    -ValueSha256 "New external file hash" `
    -ValueSourceUrl "New external file url"
```

### Example 5: Remove file

```powershell
Update-NmeShellAppVersion `
    -Id 0 `
    -Name "<Name>"
```

