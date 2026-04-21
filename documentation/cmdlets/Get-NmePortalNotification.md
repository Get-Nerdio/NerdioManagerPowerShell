# Get-NmePortalNotification

**Category:** Portal Notification

**Endpoint:** `GET /api/v1/portal-notification`

**Endpoint:** `GET /api/v1/portal-notification/{id}`

## Description

List portal notifications, or get a single notification by Id.

**Output Type:** `IPortalNotification`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |

## Examples

### Example 1: GET /api/v1/portal-notification

```powershell
Get-NmePortalNotification
```

### Example 2: GET /api/v1/portal-notification/{id}

```powershell
Get-NmePortalNotification -Id 0
```

