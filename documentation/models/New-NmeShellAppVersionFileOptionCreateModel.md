# New-NmeShellAppVersionFileOptionCreateModel

Create an in-memory object for ShellAppVersionFileOptionCreate.

**Output Type:** `ShellAppVersionFileOptionCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IsEnabled | Boolean | Yes |  |
| ValueSha256 | String | No |  |
| ValueSourceUrl | String | No |  |

## Usage

```powershell
$model = New-NmeShellAppVersionFileOptionCreateModel `
    -IsEnabled $true
```

