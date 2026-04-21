# Remove-NmeSecureVariable

**Endpoint:** `DELETE /api/v1/secure-variable`

## Description

Delete secure variable

**Output Type:** `Boolean`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| PassThru | SwitchParameter | No | Returns true when the command succeeds |

## Examples

```powershell
Remove-NmeSecureVariable -Name "Variable1"
```

