# Invoke-NmeHostPoolRunScript

**Endpoint:** `POST /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/script-execution`

## Description

Run script on ARM host pool session hosts' VMs

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| BulkJobParamCountFailedTaskToStopWork | Int32 | Yes |  |
| BulkJobParamExcludeNotRunning | SwitchParameter | Yes |  |
| BulkJobParamRestartVms | SwitchParameter | Yes |  |
| BulkJobParamTaskParallelism | Int32 | Yes |  |
| ConfigScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | Yes |  |
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| BulkJobParamEnableDrainMode | SwitchParameter | No |  |
| BulkJobParamMessage | String | No |  |
| BulkJobParamMinutesBeforeRemove | Int32 | No |  |
| BulkJobParamSessionHostsToProcessNames | String[] | No |  |
| ConfigActiveDirectoryId | Int32 | No |  |
| FailurePolicyCleanup | SwitchParameter | No |  |
| FailurePolicyRestart | SwitchParameter | No |  |

## Examples

```powershell
$configScriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
Invoke-NmeHostPoolRunScript `
    -BulkJobParamCountFailedTaskToStopWork 0 `
    -BulkJobParamExcludeNotRunning `
    -BulkJobParamRestartVms `
    -BulkJobParamTaskParallelism 0 `
    -ConfigScriptedActions @($configScriptedActions) `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

