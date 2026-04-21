# New-NmeHostChangeModel

Create an in-memory object for HostChange.

**Output Type:** `HostChange`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostChangeCount | Int32 | Yes |  |
| Value | Single | Yes |  |

## Usage

```powershell
$model = New-NmeHostChangeModel `
    -HostChangeCount 0 `
    -Value 0
```

