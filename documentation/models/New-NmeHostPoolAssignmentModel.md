# New-NmeHostPoolAssignmentModel

Create an in-memory object for HostPoolAssignment.

**Output Type:** `HostPoolAssignment`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ObjectId | String | Yes |  |
| ObjectType | String | Yes | Values: `User`, `Group` |

## Usage

```powershell
$model = New-NmeHostPoolAssignmentModel `
    -ObjectId "<ObjectId>" `
    -ObjectType "User"
```

