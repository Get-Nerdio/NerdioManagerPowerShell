# New-NmeRbacAssignmentUpdateModel

Create an in-memory object for RbacAssignmentUpdate.

**Output Type:** `RbacAssignmentUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AvdWorkspaces | [IRbacWorkspaceScopeUpdate[]](New-NmeRbacWorkspaceScopeUpdateModel.md) | Yes | Pass as array. |

## Usage

```powershell
$avdWorkspaces = New-NmeRbacWorkspaceScopeUpdateModel `
    -WorkspaceId "<WorkspaceId>"
$model = New-NmeRbacAssignmentUpdateModel `
    -AvdWorkspaces $avdWorkspaces
```

