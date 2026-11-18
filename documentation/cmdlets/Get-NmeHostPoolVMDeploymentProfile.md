# Get-NmeHostPoolVMDeploymentProfile

**Category:** Host Pool VM Deployment Profiles

**Endpoint:** `GET /api/v1/hostpool-vm-deployment-profiles`

**Endpoint:** `GET /api/v1/hostpool-vm-deployment-profiles/{id}`

## Description

Get hostpool shared VM deployment profiles

Get hostpool shared VM deployment profile

**Output Type:** `IHostPoolVMDeploymentProfile`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |

## Examples

### Example 1: GET /api/v1/hostpool-vm-deployment-profiles

```powershell
Get-NmeHostPoolVMDeploymentProfile
```

### Example 2: GET /api/v1/hostpool-vm-deployment-profiles/{id}

```powershell
Get-NmeHostPoolVMDeploymentProfile -Id 0
```

