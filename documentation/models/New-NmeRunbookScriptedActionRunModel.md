# New-NmeRunbookScriptedActionRunModel

Create an in-memory object for RunbookScriptedActionRun.

**Output Type:** `RunbookScriptedActionRun`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| MinutesToWait | Int32 | Yes |  |
| ParamsBindings | IRunbookScriptedActionRunParamsBindings | Yes |  |
| SubscriptionId | String | Yes |  |
| AdConfigId | Int32 | No |  |

## Usage

```powershell
$model = New-NmeRunbookScriptedActionRunModel `
    -MinutesToWait 0 `
    -ParamsBindings @{} `
    -SubscriptionId "<SubscriptionId>"
```

