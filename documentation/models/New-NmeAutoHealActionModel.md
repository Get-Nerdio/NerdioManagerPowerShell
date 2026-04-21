# New-NmeAutoHealActionModel

Create an in-memory object for AutoHealAction.

**Output Type:** `AutoHealAction`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Type | String | Yes | Values: `RestartVm`, `ScriptedAction`, `RemoveVm` |
| ScriptedActionId | Int32 | No |  |

## Usage

```powershell
$model = New-NmeAutoHealActionModel `
    -Type "RestartVm"
```

