# Get-NmeRbacAssignment

**Category:** RBAC roles

**Endpoint:** `GET /api/v1/users-and-roles/assignment`

**Endpoint:** `GET /api/v1/users-and-roles/assignment/{objectId}`

## Description

Get all RBAC assignments

Get user or group RBAC assignment

**Output Type:** `IRbacAssignment`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ObjectId | String | Yes |  |

## Examples

### Example 1: GET /api/v1/users-and-roles/assignment

```powershell
Get-NmeRbacAssignment
```

### Example 2: GET /api/v1/users-and-roles/assignment/{objectId}

```powershell
Get-NmeRbacAssignment -ObjectId "<ObjectId>"
```

