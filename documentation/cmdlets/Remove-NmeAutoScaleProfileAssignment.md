# Remove-NmeAutoScaleProfileAssignment

**Endpoint:** `DELETE /api/v1/auto-scale-profile/{profileId}/assignments/{assignmentId}`

**Output Type:** `Boolean`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AssignmentId | Int32 | Yes |  |
| ProfileId | Int32 | Yes |  |
| PassThru | SwitchParameter | No | Returns true when the command succeeds |

## Examples

```powershell
Remove-NmeAutoScaleProfileAssignment `
    -AssignmentId 0 `
    -ProfileId 0
```

