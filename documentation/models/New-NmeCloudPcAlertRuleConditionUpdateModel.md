# New-NmeCloudPcAlertRuleConditionUpdateModel

Create an in-memory object for CloudPcAlertRuleConditionUpdate.

**Output Type:** `CloudPcAlertRuleConditionUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AggregationType | String | Yes | Values: `Unknown`, `Count`, `Percentage`, `AffectedCloudPcCount`, `AffectedCloudPcPercentage`, `DurationInMinutes`, `Off` |
| Category | String | Yes | Values: `Unknown`, `ProvisionFailures`, `ImageUploadFailures`, `AzureNetworkConnectionCheckFailures`, `CloudPcInGracePeriod`, `FrontlineInsufficientLicenses`, `CloudPcConnectionErrors`, `CloudPcHostHealthCheckFailures`, `CloudPcZoneOutage`, `FrontlineBufferUsageDuration`, `FrontlineBufferUsageThreshold`, `CloudPcUserSettingsPersistenceUsageThreshold`, `CloudPcDeprovisionedThreshold`, `CloudPcReserveDeprovisionFailedThreshold` |
| ThresholdValue | Int32 | No |  |

## Usage

```powershell
$model = New-NmeCloudPcAlertRuleConditionUpdateModel `
    -AggregationType "Unknown" `
    -Category "Unknown"
```

