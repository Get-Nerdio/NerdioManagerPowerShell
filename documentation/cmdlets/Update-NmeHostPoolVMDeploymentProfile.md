# Update-NmeHostPoolVMDeploymentProfile

**Endpoint:** `PATCH /api/v1/hostpool-vm-deployment-profiles/{id}`

## Description

Partially update hostpool shared VM deployment profile

**Output Type:** `IResponseWithJobAndHostPoolVMDeploymentProfile`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| Configuration | [IHostPoolVMDeploymentProfileConfigurationUpdate](../models/New-NmeHostPoolVMDeploymentProfileConfigurationUpdateModel.md) | No |  |
| Description | String | No |  |
| Name | String | No |  |

## Examples

```powershell
Update-NmeHostPoolVMDeploymentProfile -Id 0
```

