# Remove-NmeAppManagementRecurrentPolicy

**Endpoint:** `DELETE /api/v1/app-management/policy/recurrent/{policyId}`

## Description

Delete recurrent policy

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| PolicyId | Int32 | Yes |  |

## Examples

```powershell
Remove-NmeAppManagementRecurrentPolicy -PolicyId 0
```

