# Get-NmeAppManagementRecurrentPolicySnapshot

**Endpoint:** `GET /api/v1/app-management/policy/recurrent/{policyId}/state`

## Description

Get recurrent policy state snapshot

**Output Type:** `IPolicyState`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| PolicyId | Int32 | Yes |  |

## Examples

```powershell
Get-NmeAppManagementRecurrentPolicySnapshot -PolicyId 0
```

