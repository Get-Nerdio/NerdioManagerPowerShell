# New-NmeSecureVariableCreateOrUpdateModel

Create an in-memory object for SecureVariableCreateOrUpdate.

**Output Type:** `SecureVariableCreateOrUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AssignmentRequired | Boolean | Yes |  |
| Name | String | Yes |  |
| ScriptedActions | Object | Yes |  |
| ShellAppAccessible | Boolean | Yes |  |
| Value | String | Yes |  |

## Usage

```powershell
$model = New-NmeSecureVariableCreateOrUpdateModel `
    -AssignmentRequired $true `
    -Name "<Name>" `
    -ScriptedActions "<ScriptedActions>" `
    -ShellAppAccessible $true `
    -Value "<Value>"
```

