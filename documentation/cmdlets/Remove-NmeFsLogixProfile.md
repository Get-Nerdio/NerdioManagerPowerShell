# Remove-NmeFsLogixProfile

**Endpoint:** `DELETE /api/v1/fslogix/{id}`

## Description

Delete FSLogix profile

**Output Type:** `Boolean`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| PassThru | SwitchParameter | No | Returns true when the command succeeds |

## Examples

```powershell
Remove-NmeFsLogixProfile -Id 0
```

