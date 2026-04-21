# Invoke-NmeRunbookScriptedActionRun

**Endpoint:** `POST /api/v1/scripted-actions/{id}/execution`

## Description

Run Azure runbook scripted action in Automation account

**Output Type:** `IJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| MinutesToWait | Int32 | Yes |  |
| ParamsBindings | Hashtable | Yes | Key is parameter name, value is `@{value = "..."; isSecure = $false}` |
| SubscriptionId | String | Yes |  |
| AdConfigId | Int32 | No |  |

## Examples

```powershell
Invoke-NmeRunbookScriptedActionRun `
    -Id 0 `
    -MinutesToWait 30 `
    -ParamsBindings @{param1 = @{value = "custom_value"; isSecure = $false}; param2 = @{value = "name_of_secure_variable"; isSecure = $true}} `
    -SubscriptionId "e0b52e85-7caf-4260-a772-c0d82e56d407"
```

