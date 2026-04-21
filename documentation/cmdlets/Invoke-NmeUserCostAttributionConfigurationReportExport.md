# Invoke-NmeUserCostAttributionConfigurationReportExport

**Endpoint:** `POST /api/v1/user-cost-attribution/configuration/{id}/report/{year}/{month}/export`

## Description

Start async export of report

This is an asynchronous operation. The response contains an exportId that should be used with the PollExport endpoint to check export status.

Workflow:
1. Call this endpoint to start the export - returns exportId
2. Poll GET export/{exportId} until status is 'Completed'
3. Use the downloadUrl from the polling response to download the CSV file

**Output Type:** `String`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ExportType | String | Yes | Export type (ResourceCostSummary/UserCostSummary/HostPoolSummary) Values: `ResourceCostSummary`, `UserCostSummary`, `HostPoolSummary` |
| Id | String | Yes |  |
| Month | Int32 | Yes |  |
| ReportType | String | Yes | Report type (Allocated/Unallocated/Uniform) Values: `Uniform`, `Proportional`, `Unallocated` |
| Year | Int32 | Yes |  |
| PassThru | SwitchParameter | No | Returns true when the command succeeds |

## Examples

```powershell
Invoke-NmeUserCostAttributionConfigurationReportExport `
    -ExportType "ResourceCostSummary" `
    -Id "<Id>" `
    -Month 0 `
    -ReportType "Uniform" `
    -Year 0
```

