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
| ScriptedActions | Int32[] | Yes |  |
| ShellAppAccessible | SwitchParameter | Yes |  |
| Value | String | Yes |  |

## Examples

```powershell
New-NmeSecureVariable `
    -AssignmentRequired `
    -Name "Variable1" `
    -ScriptedActions @(1, 2, 3) `
    -ShellAppAccessible `
    -Value "secret_value"
```

