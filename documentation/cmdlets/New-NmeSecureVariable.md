# New-NmeSecureVariable

**Endpoint:** `POST /api/v1/secure-variable`

## Description

Create secure variable

**Output Type:** `ISecureVariable`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AssignmentRequired | SwitchParameter | Yes |  |
| Name | String | Yes |  |
| ShellAppAccessible | SwitchParameter | Yes |  |
| Value | String | Yes |  |
| ScriptedActions | Int32[] | No |  |

## Examples

```powershell
New-NmeSecureVariable `
    -AssignmentRequired `
    -Name "Variable1" `
    -ShellAppAccessible `
    -Value "secret_value" `
    -ScriptedActions @(1, 2, 3)
```

