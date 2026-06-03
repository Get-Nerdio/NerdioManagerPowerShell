# Get-NmeNotificationAction

**Category:** Notifications

**Endpoint:** `GET /api/v1/notifications/actions`

**Endpoint:** `GET /api/v1/notifications/actions/{id}`

## Description

Get notification actions list.

Get notification action by id.

**Output Type:** `INotificationAction`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |

## Examples

### Example 1: GET /api/v1/notifications/actions

```powershell
Get-NmeNotificationAction
```

### Example 2: GET /api/v1/notifications/actions/{id}

```powershell
Get-NmeNotificationAction -Id 0
```

