# Update-NmeAppManagementRecurrentPolicy

**Endpoint:** `PATCH /api/v1/app-management/policy/recurrent/{policyId}`

## Description

Edit recurrent policy

**Output Type:** `IResponseWithJobAndAppPolicyRecurrent`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| PolicyId | Int32 | Yes |  |
| Actions | [IAnyUamPolicyActionCreate[]](../models/New-NmeAnyUamPolicyActionCreateModel.md) | No |  |
| ConcurrencyBalancer | String | No | Values: `Global`, `ByPool` |
| ConcurrencyMaxJobs | Int32 | No |  |
| Description | String | No |  |
| IsEnabled | SwitchParameter | No |  |
| Name | String | No |  |
| Scopes | [IAnyAppScopeCreate[]](../models/New-NmeAnyAppScopeCreateModel.md) | No |  |

## Examples

### Example 1: Disable Policy

```powershell
Update-NmeAppManagementRecurrentPolicy -PolicyId 0
```

### Example 2: Enable Policy

```powershell
Update-NmeAppManagementRecurrentPolicy `
    -PolicyId 0 `
    -IsEnabled
```

### Example 3: Change description

```powershell
Update-NmeAppManagementRecurrentPolicy `
    -PolicyId 0 `
    -Description "New description"
```

