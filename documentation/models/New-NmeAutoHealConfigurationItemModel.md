# New-NmeAutoHealConfigurationItemModel

Create an in-memory object for AutoHealConfigurationItem.

**Output Type:** `AutoHealConfigurationItem`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| SessionCriteria | String | Yes | Values: `WithoutSessions`, `WithoutActive`, `WithActive` |
| WaitMinutes | Int32 | Yes |  |
| WvdStatuses | Object | Yes | Values: `Available`, `Unavailable`, `Shutdown`, `Disconnected`, `Upgrading`, `UpgradeFailed`, `NoHeartbeat`, `NotJoinedToDomain`, `DomainTrustRelationshipLost`, `SxSStackListenerNotReady`, `FSLogixNotHealthy`, `NeedsAssistance` |
| Actions | [IAutoHealAction[]](New-NmeAutoHealActionModel.md) | No | Pass as array. |
| StaleHeartbeatMinutes | Int32 | No |  |
| WaitMinutesBeforeFirstAction | Int32 | No |  |

## Usage

```powershell
$model = New-NmeAutoHealConfigurationItemModel `
    -SessionCriteria "WithoutSessions" `
    -WaitMinutes 0 `
    -WvdStatuses "Available"
```

