# New-NmeSecureVariableUpdateModel

Create an in-memory object for SecureVariableUpdate.

**Output Type:** `SecureVariableUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| AssignmentRequired | Boolean | No |  |
| ScriptedActions | Object | No |  |
| ShellAppAccessible | Boolean | No |  |
| Value | String | No |  |

## Usage

```powershell
$model = New-NmeSecureVariableUpdateModel `
    -Name "<Name>"
```

