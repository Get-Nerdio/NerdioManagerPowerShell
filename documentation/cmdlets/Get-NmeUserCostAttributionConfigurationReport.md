# Get-NmeUserCostAttributionConfigurationReport

**Endpoint:** `GET /api/v1/user-cost-attribution/configuration/{id}/report/{year}/{month}`

## Description

Get report status and result if available

**Output Type:** `IUserCostAttributionReportResponse`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | String | Yes |  |
| Month | Int32 | Yes |  |
| Year | Int32 | Yes |  |
| ReportType | String | No | Values: `Uniform`, `Proportional`, `Unallocated` |

## Examples

```powershell
Get-NmeUserCostAttributionConfigurationReport `
    -Id "<Id>" `
    -Month 0 `
    -Year 0
```

