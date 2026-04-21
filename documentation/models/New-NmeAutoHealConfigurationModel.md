# New-NmeAutoHealConfigurationModel

Create an in-memory object for AutoHealConfiguration.

**Output Type:** `AutoHealConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Enable | Boolean | Yes |  |
| ConfigActions | [IAutoHealAction[]](New-NmeAutoHealActionModel.md) | No | Pass as array. |
| ConfigSessionCriteria | String | No | Values: `WithoutSessions`, `WithoutActive`, `WithActive` |
| ConfigStaleHeartbeatMinutes | Int32 | No |  |
| ConfigWaitMinutes | Int32 | No |  |
| ConfigWaitMinutesBeforeFirstAction | Int32 | No |  |
| ConfigWvdStatuses | Object | No | Values: `Available`, `Unavailable`, `Shutdown`, `Disconnected`, `Upgrading`, `UpgradeFailed`, `NoHeartbeat`, `NotJoinedToDomain`, `DomainTrustRelationshipLost`, `SxSStackListenerNotReady`, `FSLogixNotHealthy`, `NeedsAssistance` |
| Configs | [IAutoHealConfigurationItem[]](New-NmeAutoHealConfigurationItemModel.md) | No | Pass as array. |

## Usage

```powershell
$model = New-NmeAutoHealConfigurationModel `
    -Enable $true
```

