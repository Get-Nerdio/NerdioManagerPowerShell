# Update-NmeScriptedAction

**Endpoint:** `PATCH /api/v1/scripted-actions/{id}`

## Description

Partially update scripted action

**Output Type:** `IResponseWithJobAndScriptedAction`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| Description | String | No |  |
| ExecutionEnvironment | String | No | Values: `CustomScript`, `AzureAutomation` |
| ExecutionMode | String | No | Values: `Combined`, `Individual`, `IndividualWithRestart` |
| ExecutionTimeout | Int32 | No |  |
| Name | String | No |  |
| Script | String | No |  |
| Tags | String[] | No |  |

## Examples

### Example 1: Update name and description

```powershell
Update-NmeScriptedAction `
    -Id 0 `
    -Description "Test action which writes a single line to output" `
    -Name "Action name"
```

### Example 2: Update script

```powershell
Update-NmeScriptedAction `
    -Id 0 `
    -Script "Write-Host `"Hello world!`""
```

### Example 3: Update execution timeout

```powershell
Update-NmeScriptedAction `
    -Id 0 `
    -ExecutionTimeout 0
```

