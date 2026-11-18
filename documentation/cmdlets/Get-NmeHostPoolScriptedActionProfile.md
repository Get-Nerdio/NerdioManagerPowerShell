# Get-NmeHostPoolScriptedActionProfile

**Category:** Host Pool Scripted Action Profiles

**Endpoint:** `GET /api/v1/hostpool-scripted-action-profiles`

**Endpoint:** `GET /api/v1/hostpool-scripted-action-profiles/{id}`

## Description

Get hostpool shared scripted action profiles

Get hostpool shared scripted action profile

**Output Type:** `IHostPoolScriptedActionProfile`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |

## Examples

### Example 1: GET /api/v1/hostpool-scripted-action-profiles

```powershell
Get-NmeHostPoolScriptedActionProfile
```

### Example 2: GET /api/v1/hostpool-scripted-action-profiles/{id}

```powershell
Get-NmeHostPoolScriptedActionProfile -Id 0
```

