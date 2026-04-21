# New-NmeScriptedActionUpdateModel

Create an in-memory object for ScriptedActionUpdate.

**Output Type:** `ScriptedActionUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Description | String | No |  |
| ExecutionEnvironment | String | No | Values: `CustomScript`, `AzureAutomation` |
| ExecutionMode | String | No | Values: `Combined`, `Individual`, `IndividualWithRestart` |
| ExecutionTimeout | Int32 | No |  |
| Name | String | No |  |
| Script | String | No |  |
| Tags | Object | No |  |

## Usage

```powershell
$model = New-NmeScriptedActionUpdateModel `
    -Description "<Description>" `
    -ExecutionEnvironment "CustomScript" `
    -ExecutionMode "Combined" `
    -ExecutionTimeout 0 `
    -Name "<Name>" `
    -Script "<Script>" `
    -Tags "<Tags>"
```

