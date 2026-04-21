# New-NmeCredentialsModel

Create an in-memory object for Credentials.

**Output Type:** `Credentials`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| DisableAccount | Boolean | Yes |  |
| UserName | String | Yes |  |
| Password | String | No |  |

## Usage

```powershell
$model = New-NmeCredentialsModel `
    -DisableAccount $true `
    -UserName "<UserName>"
```

