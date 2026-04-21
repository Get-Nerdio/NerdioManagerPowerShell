# New-NmeAppManagementOnetimePolicy

**Endpoint:** `POST /api/v1/app-management/policy/onetime`

## Description

Create a new onetime policy

**Output Type:** `IResponseWithJobAndAppPolicyOneTime`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Actions | [IAnyAppActionCreate[]](../models/New-NmeAnyAppActionCreateModel.md) | Yes |  |
| ConcurrencyBalancer | String | Yes | Values: `Global`, `ByPool` |
| ConcurrencyMaxJobs | Int32 | Yes |  |
| Scopes | [IAnyAppScopeCreate[]](../models/New-NmeAnyAppScopeCreateModel.md) | Yes |  |
| ScriptDelivery | String | Yes | Values: `Default`, `TaskRunner` |
| Name | String | No |  |

## Examples

### Example 1: Create OneTime policy (install)

```powershell
$actions = New-NmeAnyAppActionCreateModel `
    -ExternalId "Microsoft.DotNet.Runtime.8" `
    -Name "Install .Net 8" `
    -RepoId 1 `
    -Type "Install" `
    -Reboot $false `
    -Version "23.01"
$users = New-NmeAdObjectCreateModel `
    -Id "<Id>" `
    -ObjectType "User"
$scopes = New-NmeAnyAppScopeCreateModel `
    -Type "AVD_PersonalPools" `
    -HostPools @("/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourcegroups/resource-group-1/providers/microsoft.desktopvirtualization/hostpools/hostpool-name") `
    -TenantId "09ca289d-7bb6-42c2-8f1d-2dc8858b81bf" `
    -Users $users
New-NmeAppManagementOnetimePolicy `
    -Actions @($actions) `
    -ConcurrencyBalancer "Global" `
    -ConcurrencyMaxJobs 10 `
    -Scopes @($scopes) `
    -ScriptDelivery "Default" `
    -Name "Install .Net 8"
```

### Example 2: Create OneTime policy (uninstall)

```powershell
$actions = New-NmeAnyAppActionCreateModel `
    -ExternalId "Microsoft.DotNet.Runtime.8" `
    -Name "Uninstall .Net 8" `
    -RepoId 1 `
    -Type "Uninstall"
$users = New-NmeAdObjectCreateModel `
    -Id "<Id>" `
    -ObjectType "User"
$scopes = New-NmeAnyAppScopeCreateModel `
    -Type "AVD_PersonalPools" `
    -HostPools @("/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourcegroups/resource-group-1/providers/microsoft.desktopvirtualization/hostpools/hostpool-name") `
    -TenantId "09ca289d-7bb6-42c2-8f1d-2dc8858b81bf" `
    -Users $users
New-NmeAppManagementOnetimePolicy `
    -Actions @($actions) `
    -ConcurrencyBalancer "Global" `
    -ConcurrencyMaxJobs 10 `
    -Scopes @($scopes) `
    -ScriptDelivery "Default" `
    -Name "Install .Net 8"
```

