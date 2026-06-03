# New-NmeNotificationConditionTargetModel

Create an in-memory object for NotificationConditionTarget.

**Output Type:** `NotificationConditionTarget`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Scope | String | Yes | Values: `Workspace`, `HostPool`, `WorkspaceAny`, `HostPoolAny` |
| Value | String | No |  |

## Usage

```powershell
$model = New-NmeNotificationConditionTargetModel `
    -Scope "Workspace"
```

