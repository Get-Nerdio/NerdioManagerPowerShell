# Get-NmeShellApp

**Category:** Shell Apps

**Endpoint:** `GET /api/v1/shell-app`

**Endpoint:** `GET /api/v1/shell-app/{id}`

## Description

List all Shell Apps, or get a single Shell App by Id.

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |

## Examples

### Example 1: GET /api/v1/shell-app

```powershell
Get-NmeShellApp
```

### Example 2: GET /api/v1/shell-app/{id}

```powershell
Get-NmeShellApp -Id 0
```

