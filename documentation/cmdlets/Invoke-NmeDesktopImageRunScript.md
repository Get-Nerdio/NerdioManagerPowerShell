# Invoke-NmeDesktopImageRunScript

**Endpoint:** `POST /api/v1/desktop-image/{subscriptionId}/{resourceGroup}/{name}/script`

## Description

Run script on desktop image VM

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| RestartVM | SwitchParameter | Yes |  |
| ScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | Yes |  |
| SubscriptionId | String | Yes |  |
| ActiveDirectoryId | Int32 | No |  |

## Examples

```powershell
$scriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
Invoke-NmeDesktopImageRunScript `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -RestartVM `
    -ScriptedActions @($scriptedActions) `
    -SubscriptionId "<SubscriptionId>" `
    -ActiveDirectoryId 1
```

