# New-NmeCloudPcAlertConditionCreateModel

Create an in-memory object for CloudPcAlertConditionCreate.

**Output Type:** `CloudPcAlertConditionCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Enabled | Boolean | Yes |  |
| IsPortalPopupNotificationEnabled | Boolean | Yes |  |
| NotificationEmailAddresses | Object | Yes |  |
| SeverityType | String | Yes | Values: `Unknown`, `Informational`, `Warning`, `Critical` |
| TemplateType | String | Yes | Values: `Unknown`, `CloudPcProvisionScenario`, `CloudPcImageUploadScenario`, `CloudPcOnPremiseNetworkConnectionCheckScenario`, `CloudPcInGracePeriodScenario`, `CloudPcFrontlineInsufficientLicensesScenario`, `CloudPcInaccessibleScenario`, `CloudPcFrontlineConcurrencyScenario`, `CloudPcUserSettingsPersistenceScenario`, `CloudPcDeprovisionFailedScenario` |
| Conditions | [ICloudPcAlertRuleConditionUpdate[]](New-NmeCloudPcAlertRuleConditionUpdateModel.md) | No | Pass as array. |

## Usage

```powershell
$model = New-NmeCloudPcAlertConditionCreateModel `
    -Enabled $true `
    -IsPortalPopupNotificationEnabled $true `
    -NotificationEmailAddresses "<NotificationEmailAddresses>" `
    -SeverityType "Unknown" `
    -TemplateType "Unknown"
```

