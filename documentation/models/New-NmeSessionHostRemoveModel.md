# New-NmeSessionHostRemoveModel

Create an in-memory object for SessionHostRemove.

**Output Type:** `SessionHostRemove`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| JobPayloadForceRemoveWvdRecord | Boolean | Yes |  |
| JobPayloadRemoveUsedVMName | Boolean | Yes |  |
| JobPayloadSkipAdRemoval | Boolean | Yes |  |
| FailurePolicyCleanup | Boolean | No |  |
| FailurePolicyRestart | Boolean | No |  |

## Usage

```powershell
$model = New-NmeSessionHostRemoveModel `
    -JobPayloadForceRemoveWvdRecord $true `
    -JobPayloadRemoveUsedVMName $true `
    -JobPayloadSkipAdRemoval $true
```

