# Get-NmeAppManagementRepositoryApp

**Endpoint:** `GET /api/v1/app-management/repository/{repoId}/app`

## Description

Obtain apps from repository

**Output Type:** `IResponseListAndAnyApp`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| RepoId | Int32 | Yes |  |
| SearchTerm | String | No |  |

## Examples

```powershell
Get-NmeAppManagementRepositoryApp -RepoId 0
```

