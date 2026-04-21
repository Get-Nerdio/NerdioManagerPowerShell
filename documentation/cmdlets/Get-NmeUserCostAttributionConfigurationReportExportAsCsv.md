# Get-NmeUserCostAttributionConfigurationReportExportAsCsv

**Endpoint:** `GET /api/v1/user-cost-attribution/configuration/{id}/report/{year}/{month}/export`

## Description

Export report (csv)

**Output Type:** `Boolean`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | String | Yes |  |
| Month | Int32 | Yes |  |
| OutFile | String | Yes | Path to write output file to |
| Year | Int32 | Yes |  |
| ExportType | String | No | Values: `UserCostDetail`, `ResourceCostDetail`, `ResourceCostSummary` |
| PassThru | SwitchParameter | No | Returns true when the command succeeds |
| ReportType | String | No | Applicable only for UserCostDetail and ResourceCostDetail export types. Values: `Uniform`, `Proportional`, `Unallocated` |

## Examples

```powershell
Get-NmeUserCostAttributionConfigurationReportExportAsCsv `
    -Id "<Id>" `
    -Month 0 `
    -OutFile "<OutFile>" `
    -Year 0
```

