# New-NmeAnyUamPolicyActionCreateModel

Create an in-memory object for AnyUamPolicyActionCreate.

**Output Type:** `AnyUamPolicyActionCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Type | String | Yes | Values: `Install`, `Uninstall`, `InstallGroup`, `UninstallGroup` |
| AssignmentType | String | No | Values: `Available`, `Required` |
| ExternalId | String | No |  |
| GroupId | Int32 | No |  |
| GroupName | String | No |  |
| Name | String | No |  |
| OnUpgradeFail | String | No | Values: `Reinstall`, `Fail` |
| Reboot | Boolean | No |  |
| RepoId | Int32 | No |  |
| Version | String | No |  |

## Usage

```powershell
$model = New-NmeAnyUamPolicyActionCreateModel `
    -Type "Install"
```

