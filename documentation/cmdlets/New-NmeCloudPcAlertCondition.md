# New-NmeCloudPcAlertCondition

**Endpoint:** `POST /api/v1/cloud-pc/tenant/{tenantId}/alert-condition`

## Description

Create a new Cloud PC alert condition.

Only identity tenant is currently supported.

**Output Type:** `IResponseWithJobAndCloudPcAlertCondition`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Enabled | SwitchParameter | Yes |  |
| IsPortalPopupNotificationEnabled | SwitchParameter | Yes |  |
| NotificationEmailAddresses | String[] | Yes |  |
| SeverityType | String | Yes | Values: `Unknown`, `Informational`, `Warning`, `Critical` |
| TemplateType | String | Yes | Values: `Unknown`, `CloudPcProvisionScenario`, `CloudPcImageUploadScenario`, `CloudPcOnPremiseNetworkConnectionCheckScenario`, `CloudPcInGracePeriodScenario`, `CloudPcFrontlineInsufficientLicensesScenario`, `CloudPcInaccessibleScenario`, `CloudPcFrontlineConcurrencyScenario`, `CloudPcUserSettingsPersistenceScenario`, `CloudPcDeprovisionFailedScenario` |
| TenantId | String | Yes |  |
| Conditions | [ICloudPcAlertRuleConditionUpdate[]](../models/New-NmeCloudPcAlertRuleConditionUpdateModel.md) | No |  |
| PassThru | SwitchParameter | No | Returns true when the command succeeds |

## Examples

```powershell
$conditions = New-NmeCloudPcAlertRuleConditionUpdateModel `
    -AggregationType "Unknown" `
    -Category "Unknown"
New-NmeCloudPcAlertCondition `
    -Enabled `
    -IsPortalPopupNotificationEnabled `
    -NotificationEmailAddresses @("administrator@contoso.com") `
    -SeverityType "Critical" `
    -TemplateType "CloudPcProvisionScenario" `
    -TenantId "<TenantId>" `
    -Conditions @($conditions)
```

