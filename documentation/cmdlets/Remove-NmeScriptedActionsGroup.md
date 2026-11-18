# Remove-NmeScriptedActionsGroup

**Endpoint:** `DELETE /api/v1/scripted-actions-groups/{id}`

## Description

Delete scripted actions group

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Force | SwitchParameter | Yes |  |
| Id | Int32 | Yes |  |

## Examples

```powershell
Remove-NmeScriptedActionsGroup `
    -Force `
    -Id 0
```

