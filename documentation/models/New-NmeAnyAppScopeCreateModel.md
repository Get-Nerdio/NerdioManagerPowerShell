# New-NmeAnyAppScopeCreateModel

Create an in-memory object for AnyAppScopeCreate.

**Output Type:** `AnyAppScopeCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Type | String | Yes | Values: `AVD_PersonalPools`, `AVD_PooledPools`, `AVD_ExactHosts`, `Intune`, `AVD_Workspaces`, `AVD_NGPs`, `AVD_NGP_Groups` |
| DeviceGroups | Object | No |  |
| HostPools | Object | No |  |
| Hosts | Object | No |  |
| NgpGroupIds | Object | No |  |
| NgpIds | Object | No |  |
| TenantId | String | No |  |
| Users | [IAdObjectCreate[]](New-NmeAdObjectCreateModel.md) | No | Pass as array. |
| Workspaces | Object | No |  |

## Usage

```powershell
$model = New-NmeAnyAppScopeCreateModel `
    -Type "AVD_PersonalPools"
```

