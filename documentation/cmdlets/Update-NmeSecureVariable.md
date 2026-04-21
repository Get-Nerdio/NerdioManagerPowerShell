# Update-NmeSecureVariable

**Endpoint:** `PATCH /api/v1/secure-variable`

## Description

Update secure variable partially

**Output Type:** `ISecureVariable`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| AssignmentRequired | SwitchParameter | No |  |
| ScriptedActions | Int32[] | No |  |
| ShellAppAccessible | SwitchParameter | No |  |
| Value | String | No |  |

## Examples

### Example 1: Update secret value

```powershell
Update-NmeSecureVariable `
    -Name "Variable1" `
    -Value "new_secret_value"
```

### Example 2: Update assignments

```powershell
Update-NmeSecureVariable `
    -Name "Variable1" `
    -AssignmentRequired `
    -ScriptedActions @(1, 2, 3)
```

