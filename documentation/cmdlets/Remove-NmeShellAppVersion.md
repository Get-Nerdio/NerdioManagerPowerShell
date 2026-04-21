# Remove-NmeShellAppVersion

**Endpoint:** `DELETE /api/v1/shell-app/{id}/version/{name}`

## Description

Delete Shell App version

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| Name | String | Yes |  |

## Examples

```powershell
Remove-NmeShellAppVersion `
    -Id 0 `
    -Name "<Name>"
```

