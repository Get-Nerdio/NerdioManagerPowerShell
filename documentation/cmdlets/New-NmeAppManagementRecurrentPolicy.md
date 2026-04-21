# New-NmeAppManagementRecurrentPolicy

**Endpoint:** `POST /api/v1/app-management/policy/recurrent`

## Description

Create a new recurrent policy

**Output Type:** `IResponseWithJobAndAppPolicyRecurrent`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Actions | [IAnyUamPolicyActionCreate[]](../models/New-NmeAnyUamPolicyActionCreateModel.md) | Yes |  |
| ConcurrencyBalancer | String | Yes | Values: `Global`, `ByPool` |
| ConcurrencyMaxJobs | Int32 | Yes |  |
| IsEnabled | SwitchParameter | Yes |  |
| Name | String | Yes |  |
| Scopes | [IAnyAppScopeCreate[]](../models/New-NmeAnyAppScopeCreateModel.md) | Yes |  |
| ScriptDelivery | String | Yes | Values: `Default`, `TaskRunner` |
| Description | String | No |  |

## Examples

### Example 1: Create recurrent policy (install)

```powershell
$actions = New-NmeAnyUamPolicyActionCreateModel `
    -Type "Install" `
    -ExternalId "Microsoft.DotNet.Runtime.8" `
    -Name "Install .Net 8" `
    -Reboot $false `
    -RepoId 1 `
    -Version "23.01"
$users = New-NmeAdObjectCreateModel `
    -Id "<Id>" `
    -ObjectType "User"
$scopes = New-NmeAnyAppScopeCreateModel `
    -Type "AVD_PersonalPools" `
    -HostPools @("/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourcegroups/resource-group-1/providers/microsoft.desktopvirtualization/hostpools/hostpool-name") `
    -TenantId "09ca289d-7bb6-42c2-8f1d-2dc8858b81bf" `
    -Users $users
New-NmeAppManagementRecurrentPolicy `
    -Actions @($actions) `
    -ConcurrencyBalancer "Global" `
    -ConcurrencyMaxJobs 10 `
    -IsEnabled `
    -Name "Install .Net 8" `
    -Scopes @($scopes) `
    -ScriptDelivery "Default" `
    -Description "Install .Net 8"
```

### Example 2: Create recurrent policy (uninstall)

```powershell
$actions = New-NmeAnyUamPolicyActionCreateModel `
    -Type "Uninstall" `
    -ExternalId "Microsoft.DotNet.Runtime.8" `
    -Name "Uninstall .Net 8" `
    -RepoId 1
$users = New-NmeAdObjectCreateModel `
    -Id "<Id>" `
    -ObjectType "User"
$scopes = New-NmeAnyAppScopeCreateModel `
    -Type "AVD_PersonalPools" `
    -HostPools @("/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourcegroups/resource-group-1/providers/microsoft.desktopvirtualization/hostpools/hostpool-name") `
    -TenantId "09ca289d-7bb6-42c2-8f1d-2dc8858b81bf" `
    -Users $users
New-NmeAppManagementRecurrentPolicy `
    -Actions @($actions) `
    -ConcurrencyBalancer "Global" `
    -ConcurrencyMaxJobs 10 `
    -IsEnabled `
    -Name "Uninstall .Net 8" `
    -Scopes @($scopes) `
    -ScriptDelivery "Default" `
    -Description "Uninstall .Net 8"
```

