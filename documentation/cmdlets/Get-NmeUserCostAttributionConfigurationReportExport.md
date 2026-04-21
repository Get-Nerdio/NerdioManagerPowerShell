# Get-NmeUserCostAttributionConfigurationReportExport

**Endpoint:** `GET /api/v1/user-cost-attribution/export/{exportId}`

## Description

Poll export status and get download URL when completed

**Output Type:** `IUserCostAttributionExportReportResponse`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ExportId | String | Yes | Export ID returned from POST configuration/{id}/report/{year}/{month}/export |
| PassThru | SwitchParameter | No | Returns true when the command succeeds |

## Examples

```powershell
Get-NmeUserCostAttributionConfigurationReportExport -ExportId "<ExportId>"
```

