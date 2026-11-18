# Remove-NmeHostPoolVMDeploymentProfile

**Endpoint:** `DELETE /api/v1/hostpool-vm-deployment-profiles/{id}`

## Description

Delete hostpool shared VM deployment profile

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |

## Examples

```powershell
Remove-NmeHostPoolVMDeploymentProfile -Id 0
```

