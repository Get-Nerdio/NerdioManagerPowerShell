# New-NmePowerStateCommandModel

Create an in-memory object for PowerStateCommand.

**Output Type:** `PowerStateCommand`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| JobPayloadCommand | String | Yes | Values: `Restart`, `Stop`, `Start` |
| ExtensionHibernation | Boolean | No |  |
| FailurePolicyCleanup | Boolean | No |  |
| FailurePolicyRestart | Boolean | No |  |

## Usage

```powershell
$model = New-NmePowerStateCommandModel `
    -JobPayloadCommand "Restart"
```

