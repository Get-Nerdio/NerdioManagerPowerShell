# Remove-NmeAutoScaleProfile

**Endpoint:** `DELETE /api/v1/auto-scale-profile/{profileId}`

**Output Type:** `Boolean`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ProfileId | Int32 | Yes |  |
| PassThru | SwitchParameter | No | Returns true when the command succeeds |

## Examples

```powershell
Remove-NmeAutoScaleProfile -ProfileId 0
```

