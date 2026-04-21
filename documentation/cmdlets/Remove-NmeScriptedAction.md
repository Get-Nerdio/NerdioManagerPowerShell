# Remove-NmeScriptedAction

**Endpoint:** `DELETE /api/v1/scripted-actions/{id}`

## Description

Delete scripted action

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Force | SwitchParameter | Yes |  |
| Id | Int32 | Yes |  |

## Examples

```powershell
Remove-NmeScriptedAction `
    -Force `
    -Id 0
```

