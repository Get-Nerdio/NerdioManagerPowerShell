# New-NmeArmHostPoolAssignmentModel

Create an in-memory object for ArmHostPoolAssignment.

**Output Type:** `ArmHostPoolAssignment`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AppGroups | Object | No |  |
| Groups | Object | No |  |
| Users | Object | No |  |

## Usage

```powershell
$model = New-NmeArmHostPoolAssignmentModel `
    -AppGroups "<AppGroups>" `
    -Groups "<Groups>" `
    -Users "<Users>"
```

