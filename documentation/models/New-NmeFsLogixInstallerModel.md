# New-NmeFsLogixInstallerModel

Create an in-memory object for FsLogixInstaller.

**Output Type:** `FsLogixInstaller`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ForceUpdate | Boolean | Yes |  |
| Version | String | Yes |  |

## Usage

```powershell
$model = New-NmeFsLogixInstallerModel `
    -ForceUpdate $true `
    -Version "<Version>"
```

