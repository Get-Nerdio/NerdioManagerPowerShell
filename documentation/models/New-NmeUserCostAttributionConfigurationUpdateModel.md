# New-NmeUserCostAttributionConfigurationUpdateModel

Create an in-memory object for UserCostAttributionConfigurationUpdate.

**Output Type:** `UserCostAttributionConfigurationUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| DefaultReportType | String | No | Values: `Uniform`, `Proportional`, `Unallocated` |
| DisplayName | String | No |  |
| IsDefault | Boolean | No |  |

## Usage

```powershell
$model = New-NmeUserCostAttributionConfigurationUpdateModel `
    -DefaultReportType "Uniform" `
    -DisplayName "<DisplayName>" `
    -IsDefault $true
```

