# New-NmeScriptedActionOptionModel

Create an in-memory object for ScriptedActionOption.

**Output Type:** `ScriptedActionOption`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| GroupParams | IScriptedActionOptionGroupParams | Yes |  |
| Id | Int32 | Yes |  |
| Params | IScriptedActionOptionParams | Yes |  |
| Type | String | Yes | Values: `Action`, `Group` |

## Usage

```powershell
$model = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
```

