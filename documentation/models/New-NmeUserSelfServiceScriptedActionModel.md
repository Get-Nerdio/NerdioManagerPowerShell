# New-NmeUserSelfServiceScriptedActionModel

Create an in-memory object for UserSelfServiceScriptedAction.

**Output Type:** `UserSelfServiceScriptedAction`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ActionGroupParams | IScriptedActionOptionGroupParams | Yes |  |
| ActionId | Int32 | Yes |  |
| ActionParams | IScriptedActionOptionParams | Yes |  |
| ActionType | String | Yes | Values: `Action`, `Group` |
| DisplayName | String | Yes |  |
| Id | Int32 | No |  |

## Usage

```powershell
$model = New-NmeUserSelfServiceScriptedActionModel `
    -ActionGroupParams @{} `
    -ActionId 0 `
    -ActionParams @{} `
    -ActionType "Action" `
    -DisplayName "<DisplayName>"
```

