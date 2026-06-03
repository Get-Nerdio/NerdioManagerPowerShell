# Get-NmeNotificationCondition

**Category:** Notifications

**Endpoint:** `GET /api/v1/notifications/conditions/nerdio`

**Endpoint:** `GET /api/v1/notifications/conditions/nerdio/{id}`

## Description

Get list of Nerdio notification conditions.

Get Nerdio notification condition by id.

**Output Type:** `INotificationCondition`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |

## Examples

### Example 1: GET /api/v1/notifications/conditions/nerdio

```powershell
Get-NmeNotificationCondition
```

### Example 2: GET /api/v1/notifications/conditions/nerdio/{id}

```powershell
Get-NmeNotificationCondition -Id 0
```

