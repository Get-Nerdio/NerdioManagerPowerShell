# Remove-NmeAppManagementOnetimePolicy

**Endpoint:** `DELETE /api/v1/app-management/policy/onetime/{policyId}`

## Description

Delete onetime policy

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| PolicyId | Int32 | Yes |  |

## Examples

```powershell
Remove-NmeAppManagementOnetimePolicy -PolicyId 0
```

