# Invoke-NmeUserCostAttributionConfigurationReportBuild

**Endpoint:** `POST /api/v1/user-cost-attribution/configuration/{id}/report/{year}/{month}`

## Description

Create report

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | String | Yes |  |
| Month | Int32 | Yes |  |
| Year | Int32 | Yes |  |
| PassThru | SwitchParameter | No | Returns true when the command succeeds |

## Examples

```powershell
Invoke-NmeUserCostAttributionConfigurationReportBuild `
    -Id "<Id>" `
    -Month 0 `
    -Year 0
```

