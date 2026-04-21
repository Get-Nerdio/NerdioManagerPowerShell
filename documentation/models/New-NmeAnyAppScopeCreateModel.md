# New-NmeAnyAppScopeCreateModel

Create an in-memory object for AnyAppScopeCreate.

**Output Type:** `AnyAppScopeCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Type | String | Yes | Values: `AVD_PersonalPools`, `AVD_PooledPools`, `AVD_ExactHosts`, `Intune`, `AVD_Workspaces` |
| DeviceGroups | Object | No |  |
| HostPools | Object | No |  |
| Hosts | Object | No |  |
| TenantId | String | No |  |
| Users | [IAdObjectCreate[]](New-NmeAdObjectCreateModel.md) | No | Pass as array. |
| Workspaces | Object | No |  |

## Usage

```powershell
$model = New-NmeAnyAppScopeCreateModel `
    -Type "AVD_PersonalPools"
```

