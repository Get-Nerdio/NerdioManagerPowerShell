# New-NmeJobFailurePolicyModel

Create an in-memory object for JobFailurePolicy.

**Output Type:** `JobFailurePolicy`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Cleanup | Boolean | No |  |
| Restart | Boolean | No |  |

## Usage

```powershell
$model = New-NmeJobFailurePolicyModel `
    -Cleanup $true `
    -Restart $true
```

