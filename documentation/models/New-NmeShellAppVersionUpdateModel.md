# New-NmeShellAppVersionUpdateModel

Create an in-memory object for ShellAppVersionUpdate.

**Output Type:** `ShellAppVersionUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| FileIsEnabled | Boolean | No |  |
| InstallScriptOverrideIsEnabled | Boolean | No |  |
| InstallScriptOverrideValue | String | No |  |
| IsPreview | Boolean | No |  |
| Name | String | No |  |
| ValueSha256 | String | No |  |
| ValueSourceUrl | String | No |  |

## Usage

```powershell
$model = New-NmeShellAppVersionUpdateModel `
    -FileIsEnabled $true `
    -InstallScriptOverrideIsEnabled $true `
    -InstallScriptOverrideValue "<InstallScriptOverrideValue>" `
    -IsPreview $true `
    -Name "<Name>" `
    -ValueSha256 "<ValueSha256>" `
    -ValueSourceUrl "<ValueSourceUrl>"
```

