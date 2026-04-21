# New-NmeSessionHostRemoveParamsModel

Create an in-memory object for SessionHostRemoveParams.

**Output Type:** `SessionHostRemoveParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ForceRemoveWvdRecord | Boolean | Yes |  |
| RemoveUsedVMName | Boolean | Yes |  |
| SkipAdRemoval | Boolean | Yes |  |

## Usage

```powershell
$model = New-NmeSessionHostRemoveParamsModel `
    -ForceRemoveWvdRecord $true `
    -RemoveUsedVMName $true `
    -SkipAdRemoval $true
```

