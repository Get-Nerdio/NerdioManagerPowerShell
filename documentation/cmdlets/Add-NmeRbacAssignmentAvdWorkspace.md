# Add-NmeRbacAssignmentAvdWorkspace

**Endpoint:** `POST /api/v1/users-and-roles/assignment/{objectId}/avd-workspaces`

## Description

Add workspace to an assignment

**Output Type:** `IResponseWithJobAndRbacAssignment`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ObjectId | String | Yes |  |
| WorkspaceId | String | Yes |  |

## Examples

```powershell
Add-NmeRbacAssignmentAvdWorkspace `
    -ObjectId "<ObjectId>" `
    -WorkspaceId "<WorkspaceId>"
```

