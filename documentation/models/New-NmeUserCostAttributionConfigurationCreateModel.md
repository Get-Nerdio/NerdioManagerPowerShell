# New-NmeUserCostAttributionConfigurationCreateModel

Create an in-memory object for UserCostAttributionConfigurationCreate.

**Output Type:** `UserCostAttributionConfigurationCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| DefaultReportType | String | Yes | Values: `Uniform`, `Proportional`, `Unallocated` |
| DisplayName | String | Yes |  |
| IncludeAllCosts | Boolean | Yes |  |
| SubscriptionsIds | Object | Yes |  |
| Tags | IUserCostAttributionConfigurationCreateTags | Yes |  |
| UseDefaultTags | Boolean | Yes |  |
| WorkspaceIds | Object | Yes |  |

## Usage

```powershell
$model = New-NmeUserCostAttributionConfigurationCreateModel `
    -DefaultReportType "Uniform" `
    -DisplayName "<DisplayName>" `
    -IncludeAllCosts $true `
    -SubscriptionsIds "<SubscriptionsIds>" `
    -Tags @{} `
    -UseDefaultTags $true `
    -WorkspaceIds "<WorkspaceIds>"
```

