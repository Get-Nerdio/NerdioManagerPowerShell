# New-NmeAppPolicyOneTimeCreateModel

Create an in-memory object for AppPolicyOneTimeCreate.

**Output Type:** `AppPolicyOneTimeCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Actions | [IAnyAppActionCreate[]](New-NmeAnyAppActionCreateModel.md) | Yes | Pass as array. |
| ConcurrencyBalancer | String | Yes | Values: `Global`, `ByPool` |
| ConcurrencyMaxJobs | Int32 | Yes |  |
| Scopes | [IAnyAppScopeCreate[]](New-NmeAnyAppScopeCreateModel.md) | Yes | Pass as array. |
| ScriptDelivery | String | Yes | Values: `Default`, `TaskRunner` |
| Name | String | No |  |

## Usage

```powershell
$actions = New-NmeAnyAppActionCreateModel `
    -ExternalId "<ExternalId>" `
    -Name "<Name>" `
    -RepoId 0 `
    -Type "Install"
$scopes = New-NmeAnyAppScopeCreateModel `
    -Type "AVD_PersonalPools"
$model = New-NmeAppPolicyOneTimeCreateModel `
    -Actions $actions `
    -ConcurrencyBalancer "Global" `
    -ConcurrencyMaxJobs 0 `
    -Scopes $scopes `
    -ScriptDelivery "Default"
```

