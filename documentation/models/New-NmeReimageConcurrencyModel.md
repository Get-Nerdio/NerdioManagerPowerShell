# New-NmeReimageConcurrencyModel

Create an in-memory object for ReimageConcurrency.

**Output Type:** `ReimageConcurrency`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| MaxFailedTasks | Int32 | Yes |  |
| Tasks | Int32 | Yes |  |

## Usage

```powershell
$model = New-NmeReimageConcurrencyModel `
    -MaxFailedTasks 0 `
    -Tasks 0
```

