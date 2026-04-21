# New-NmeScriptedAction

**Endpoint:** `POST /api/v1/scripted-actions`

## Description

Create scripted action

**Output Type:** `IResponseWithJobAndScriptedAction`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ExecutionEnvironment | String | Yes | Values: `CustomScript`, `AzureAutomation` |
| ExecutionMode | String | Yes | Values: `Combined`, `Individual`, `IndividualWithRestart` |
| Name | String | Yes |  |
| Script | String | Yes |  |
| Description | String | No |  |
| ExecutionTimeout | Int32 | No |  |
| Tags | String[] | No |  |

## Examples

### Example 1: Custom script with combined execution mode

```powershell
New-NmeScriptedAction `
    -ExecutionEnvironment "CustomScript" `
    -ExecutionMode "Combined" `
    -Name "Action name" `
    -Script "Write-Host `"Hello world!`"" `
    -Description "Test action which writes a single line to output" `
    -Tags @()
```

### Example 2: Azure RunBook script with individual execution mode and timeout

```powershell
New-NmeScriptedAction `
    -ExecutionEnvironment "AzureAutomation" `
    -ExecutionMode "Individual" `
    -Name "Action name" `
    -Script "Write-Host `"Hello world!`"" `
    -Description "Test action which writes a single line to output" `
    -ExecutionTimeout 0 `
    -Tags @()
```

