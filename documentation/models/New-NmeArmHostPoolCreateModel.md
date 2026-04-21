# New-NmeArmHostPoolCreateModel

Create an in-memory object for ArmHostPoolCreate.

**Output Type:** `ArmHostPoolCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| WorkspaceIdName | String | Yes |  |
| WorkspaceIdResourceGroup | String | Yes |  |
| WorkspaceIdSubscriptionId | String | Yes |  |
| ActiveDirectoryAdProfileId | Int32 | No |  |
| AppGroupName | String | No |  |
| Description | String | No |  |
| FsLogixCustom | [IHostPoolFsLogixProperties](New-NmeHostPoolFsLogixPropertiesModel.md) | No |  |
| FsLogixEnable | Boolean | No |  |
| FsLogixPredefinedConfigId | Int32 | No |  |
| FsLogixType | String | No | Values: `Default`, `Predefined`, `Custom` |
| PersonalParamAssignmentType | String | No | Values: `Automatic`, `Direct` |
| PersonalParamMultiplePersistent | Boolean | No |  |
| PooledParamIsDesktop | Boolean | No |  |
| PooledParamIsSingleUser | Boolean | No |  |
| SourceHostPoolId | String | No |  |
| Tags | IArmHostPoolCreateTags | No |  |

## Usage

```powershell
$model = New-NmeArmHostPoolCreateModel `
    -WorkspaceIdName "<WorkspaceIdName>" `
    -WorkspaceIdResourceGroup "<WorkspaceIdResourceGroup>" `
    -WorkspaceIdSubscriptionId "<WorkspaceIdSubscriptionId>"
```

