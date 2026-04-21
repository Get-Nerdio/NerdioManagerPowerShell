# New-NmeShellAppVersionCreateModel

Create an in-memory object for ShellAppVersionCreate.

**Output Type:** `ShellAppVersionCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IsPreview | Boolean | Yes |  |
| Name | String | Yes |  |
| FileSha256 | String | No |  |
| FileSourceUrl | String | No |  |
| InstallScriptOverride | String | No |  |

## Usage

```powershell
$model = New-NmeShellAppVersionCreateModel `
    -IsPreview $true `
    -Name "<Name>"
```

