# New-NmeAppPolicyRecurrentUpdateModel

Create an in-memory object for AppPolicyRecurrentUpdate.

**Output Type:** `AppPolicyRecurrentUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Actions | [IAnyUamPolicyActionCreate[]](New-NmeAnyUamPolicyActionCreateModel.md) | No | Pass as array. |
| ConcurrencyBalancer | String | No | Values: `Global`, `ByPool` |
| ConcurrencyMaxJobs | Int32 | No |  |
| Description | String | No |  |
| IsEnabled | Boolean | No |  |
| Name | String | No |  |
| Scopes | [IAnyAppScopeCreate[]](New-NmeAnyAppScopeCreateModel.md) | No | Pass as array. |

## Usage

```powershell
$actions = New-NmeAnyUamPolicyActionCreateModel `
    -Type "Install"
$scopes = New-NmeAnyAppScopeCreateModel `
    -Type "AVD_PersonalPools"
$model = New-NmeAppPolicyRecurrentUpdateModel `
    -Actions $actions `
    -ConcurrencyBalancer "Global" `
    -ConcurrencyMaxJobs 0 `
    -Description "<Description>" `
    -IsEnabled $true `
    -Name "<Name>" `
    -Scopes $scopes
```

