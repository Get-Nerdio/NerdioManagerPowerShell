# New-NmeUserCostAttributionConfiguration

**Endpoint:** `POST /api/v1/user-cost-attribution/configuration`

## Description

Create configuration

**Output Type:** `IResponseWithJobAndUserCostAttributionConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| DefaultReportType | String | Yes | Values: `Uniform`, `Proportional`, `Unallocated` |
| DisplayName | String | Yes |  |
| IncludeAllCosts | SwitchParameter | Yes |  |
| SubscriptionsIds | String[] | Yes |  |
| Tags | Hashtable | Yes | Key is Azure tag name, value is array of tag values |
| UseDefaultTags | SwitchParameter | Yes |  |
| WorkspaceIds | String[] | Yes |  |

## Examples

```powershell
New-NmeUserCostAttributionConfiguration `
    -DefaultReportType "Proportional" `
    -DisplayName "Complete AVD deployment" `
    -IncludeAllCosts `
    -SubscriptionsIds @("e0b52e85-7caf-4260-a772-c0d82e56d407") `
    -Tags @{CUSTOM_TAG_NAME = @("CUSTOM_TAG_VALUE")} `
    -UseDefaultTags `
    -WorkspaceIds @("/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourcegroups/resource-group-1/providers/microsoft.operationalinsights/workspaces/workspace-1")
```

