# New-NmeShellAppVersionFileCreateModel

Create an in-memory object for ShellAppVersionFileCreate.

**Output Type:** `ShellAppVersionFileCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Sha256 | String | Yes |  |
| SourceUrl | String | Yes |  |

## Usage

```powershell
$model = New-NmeShellAppVersionFileCreateModel `
    -Sha256 "<Sha256>" `
    -SourceUrl "<SourceUrl>"
```

