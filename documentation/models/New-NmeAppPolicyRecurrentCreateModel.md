# New-NmeAppPolicyRecurrentCreateModel

Create an in-memory object for AppPolicyRecurrentCreate.

**Output Type:** `AppPolicyRecurrentCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Actions | [IAnyUamPolicyActionCreate[]](New-NmeAnyUamPolicyActionCreateModel.md) | Yes | Pass as array. |
| ConcurrencyBalancer | String | Yes | Values: `Global`, `ByPool` |
| ConcurrencyMaxJobs | Int32 | Yes |  |
| IsEnabled | Boolean | Yes |  |
| Name | String | Yes |  |
| Scopes | [IAnyAppScopeCreate[]](New-NmeAnyAppScopeCreateModel.md) | Yes | Pass as array. |
| ScriptDelivery | String | Yes | Values: `Default`, `TaskRunner` |
| Description | String | No |  |

## Usage

```powershell
$actions = New-NmeAnyUamPolicyActionCreateModel `
    -Type "Install"
$scopes = New-NmeAnyAppScopeCreateModel `
    -Type "AVD_PersonalPools"
$model = New-NmeAppPolicyRecurrentCreateModel `
    -Actions $actions `
    -ConcurrencyBalancer "Global" `
    -ConcurrencyMaxJobs 0 `
    -IsEnabled $true `
    -Name "<Name>" `
    -Scopes $scopes `
    -ScriptDelivery "Default"
```

