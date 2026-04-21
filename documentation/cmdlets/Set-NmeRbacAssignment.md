# Set-NmeRbacAssignment

**Endpoint:** `PUT /api/v1/users-and-roles/assignment/{objectId}`

## Description

Update user or group RBAC assignment

### Notes
- Only built-in roles are supported now
- Only workspaces update is supported now

**Output Type:** `IResponseWithJobAndRbacAssignment`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AvdWorkspaces | [IRbacWorkspaceScopeUpdate[]](../models/New-NmeRbacWorkspaceScopeUpdateModel.md) | Yes |  |
| ObjectId | String | Yes |  |

## Examples

```powershell
$avdWorkspaces = New-NmeRbacWorkspaceScopeUpdateModel `
    -WorkspaceId "<WorkspaceId>"
Set-NmeRbacAssignment `
    -AvdWorkspaces @($avdWorkspaces) `
    -ObjectId "<ObjectId>"
```

