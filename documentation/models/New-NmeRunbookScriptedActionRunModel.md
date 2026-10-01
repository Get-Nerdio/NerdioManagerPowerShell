# New-NmeRunbookScriptedActionRunModel

Create an in-memory object for RunbookScriptedActionRun.

**Output Type:** `RunbookScriptedActionRun`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| MinutesToWait | Int32 | Yes |  |
| SubscriptionId | String | Yes |  |
| AdConfigId | Int32 | No |  |
| ParamsBindings | IRunbookScriptedActionRunParamsBindings | No |  |

## Usage

```powershell
$model = New-NmeRunbookScriptedActionRunModel `
    -MinutesToWait 0 `
    -SubscriptionId "<SubscriptionId>"
```

