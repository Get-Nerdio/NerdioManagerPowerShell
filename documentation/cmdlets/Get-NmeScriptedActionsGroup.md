# Get-NmeScriptedActionsGroup

**Category:** Scripted Actions Groups

**Endpoint:** `GET /api/v1/scripted-actions-group`

**Endpoint:** `GET /api/v1/scripted-actions-group/{id}`

## Description

List scripted actions groups, or get a single group by Id.

**Output Type:** `IScriptedActionsGroup`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |

## Examples

### Example 1: GET /api/v1/scripted-actions-group

```powershell
Get-NmeScriptedActionsGroup
```

### Example 2: GET /api/v1/scripted-actions-group/{id}

```powershell
Get-NmeScriptedActionsGroup -Id 0
```

