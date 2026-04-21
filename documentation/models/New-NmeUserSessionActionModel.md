# New-NmeUserSessionActionModel

Create an in-memory object for UserSessionAction.

**Output Type:** `UserSessionAction`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| FailurePolicyCleanup | Boolean | No |  |
| FailurePolicyRestart | Boolean | No |  |

## Usage

```powershell
$model = New-NmeUserSessionActionModel `
    -FailurePolicyCleanup $true `
    -FailurePolicyRestart $true
```

