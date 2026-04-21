# New-NmeActiveSessionsConfigurationModel

Create an in-memory object for ActiveSessionsConfiguration.

**Output Type:** `ActiveSessionsConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ScaleInHostChangeCount | Int32 | Yes |  |
| ScaleInValue | Single | Yes |  |
| ScaleOutHostChangeCount | Int32 | Yes |  |
| ScaleOutValue | Single | Yes |  |

## Usage

```powershell
$model = New-NmeActiveSessionsConfigurationModel `
    -ScaleInHostChangeCount 0 `
    -ScaleInValue 0 `
    -ScaleOutHostChangeCount 0 `
    -ScaleOutValue 0
```

