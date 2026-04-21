# Get-NmeUserCostAttributionConfiguration

**Category:** User Cost Attribution

**Endpoint:** `GET /api/v1/user-cost-attribution/configuration`

**Endpoint:** `GET /api/v1/user-cost-attribution/configuration/{id}`

## Description

List user cost attribution configurations, or get a single configuration by Id.

**Output Type:** `IUserCostAttributionConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | String | Yes |  |

## Examples

### Example 1: GET /api/v1/user-cost-attribution/configuration

```powershell
Get-NmeUserCostAttributionConfiguration
```

### Example 2: GET /api/v1/user-cost-attribution/configuration/{id}

```powershell
Get-NmeUserCostAttributionConfiguration -Id "<Id>"
```

