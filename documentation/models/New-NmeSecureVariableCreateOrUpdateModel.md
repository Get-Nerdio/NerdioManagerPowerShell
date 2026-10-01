# New-NmeSecureVariableCreateOrUpdateModel

Create an in-memory object for SecureVariableCreateOrUpdate.

**Output Type:** `SecureVariableCreateOrUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AssignmentRequired | Boolean | Yes |  |
| Name | String | Yes |  |
| ShellAppAccessible | Boolean | Yes |  |
| Value | String | Yes |  |
| ScriptedActions | Object | No |  |

## Usage

```powershell
$model = New-NmeSecureVariableCreateOrUpdateModel `
    -AssignmentRequired $true `
    -Name "<Name>" `
    -ShellAppAccessible $true `
    -Value "<Value>"
```

