# Get-NmeAutoScaleProfile

**Category:** Auto-scale profile

**Endpoint:** `GET /api/v1/auto-scale-profile`

**Endpoint:** `GET /api/v1/auto-scale-profile/{profileId}`

## Description

List auto-scale profiles, or get a single profile by Id.

**Output Type:** `IAutoScaleProfile`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ProfileId | Int32 | Yes |  |

## Examples

### Example 1: GET /api/v1/auto-scale-profile

```powershell
Get-NmeAutoScaleProfile
```

### Example 2: GET /api/v1/auto-scale-profile/{profileId}

```powershell
Get-NmeAutoScaleProfile -ProfileId 0
```

