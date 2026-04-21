# New-NmeScriptedActionCreateModel

Create an in-memory object for ScriptedActionCreate.

**Output Type:** `ScriptedActionCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ExecutionEnvironment | String | Yes | Values: `CustomScript`, `AzureAutomation` |
| ExecutionMode | String | Yes | Values: `Combined`, `Individual`, `IndividualWithRestart` |
| Name | String | Yes |  |
| Script | String | Yes |  |
| Description | String | No |  |
| ExecutionTimeout | Int32 | No |  |
| Tags | Object | No |  |

## Usage

```powershell
$model = New-NmeScriptedActionCreateModel `
    -ExecutionEnvironment "CustomScript" `
    -ExecutionMode "Combined" `
    -Name "<Name>" `
    -Script "<Script>"
```

