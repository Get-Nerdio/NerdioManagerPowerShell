# New-NmeHostPool

**Endpoint:** `POST /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}`

## Description

Create ARM host pool

### Notes
To create static host pool either *pooledParams* or *personalParams* property must be specified:
- *isDesktop = true* will create pool with Desktop Application Group
- *isDesktop = false* will create pool with RemoteApp Application Group
- *isSingleUser = true* will set session limit to 1 per each host in pool
- *isSingleUser = false* will set session limit to 999999 per each host in pool
            
To clone an existing ARM host pool, the *sourceHostPool* property must be specified.
            
The *pooledParams*, *personalParams*, *adProfileId* and *tags* properties are not allowed to be used with *sourceHostPool*.

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| WorkspaceIdName | String | Yes |  |
| WorkspaceIdResourceGroup | String | Yes |  |
| WorkspaceIdSubscriptionId | String | Yes |  |
| ActiveDirectoryAdProfileId | Int32 | No |  |
| AppGroupName | String | No |  |
| Description | String | No |  |
| FLogixCustom | [IHostPoolFsLogixProperties](../models/New-NmeHostPoolFsLogixPropertiesModel.md) | No |  |
| FLogixEnable | SwitchParameter | No |  |
| FLogixPredefinedConfigId | Int32 | No |  |
| FLogixType | String | No | Values: `Default`, `Predefined`, `Custom` |
| PersonalParamAssignmentType | String | No | Values: `Automatic`, `Direct` |
| PersonalParamMultiplePersistent | SwitchParameter | No |  |
| PooledParamIsDesktop | SwitchParameter | No |  |
| PooledParamIsSingleUser | SwitchParameter | No |  |
| SourceHostPoolId | String | No |  |
| Tags | Hashtable | No | Key is Azure tag name, value is tag value |

## Examples

```powershell
New-NmeHostPool `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -WorkspaceIdName "<WorkspaceIdName>" `
    -WorkspaceIdResourceGroup "<WorkspaceIdResourceGroup>" `
    -WorkspaceIdSubscriptionId "<WorkspaceIdSubscriptionId>"
```

