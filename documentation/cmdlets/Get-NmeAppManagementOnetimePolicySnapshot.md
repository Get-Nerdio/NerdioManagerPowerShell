# Get-NmeAppManagementOnetimePolicySnapshot

**Endpoint:** `GET /api/v1/app-management/policy/onetime/{policyId}/state`

## Description

Get onetime policy state snapshot

**Output Type:** `IPolicyState`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| PolicyId | Int32 | Yes |  |

## Examples

```powershell
Get-NmeAppManagementOnetimePolicySnapshot -PolicyId 0
```

