# Update-NmeUserCostAttributionConfiguration

**Endpoint:** `PATCH /api/v1/user-cost-attribution/configuration/{id}`

## Description

Partially update configuration

**Output Type:** `IResponseWithJobAndUserCostAttributionConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | String | Yes |  |
| DefaultReportType | String | No | Values: `Uniform`, `Proportional`, `Unallocated` |
| DisplayName | String | No |  |
| IsDefault | SwitchParameter | No |  |

## Examples

### Example 1: Update display name and default report type

```powershell
Update-NmeUserCostAttributionConfiguration `
    -Id "<Id>" `
    -DefaultReportType "Proportional" `
    -DisplayName "Complete AVD deployment"
```

### Example 2: Set configuration as default

```powershell
Update-NmeUserCostAttributionConfiguration `
    -Id "<Id>" `
    -IsDefault
```

