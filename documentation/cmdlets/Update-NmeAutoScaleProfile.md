# Update-NmeAutoScaleProfile

**Endpoint:** `PATCH /api/v1/auto-scale-profile/{profileId}`

**Output Type:** `IAutoScaleProfile`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ProfileId | Int32 | Yes |  |
| Default | [IAutoScaleDefaultConfigurationUpdate](../models/New-NmeAutoScaleDefaultConfigurationUpdateModel.md) | No |  |
| Description | String | No |  |
| Name | String | No |  |
| UserDriven | [IAutoScaleUserDrivenConfigurationUpdate](../models/New-NmeAutoScaleUserDrivenConfigurationUpdateModel.md) | No |  |
| WorkingHours | [IAutoScaleWorkingHoursConfigurationUpdate](../models/New-NmeAutoScaleWorkingHoursConfigurationUpdateModel.md) | No |  |

## Examples

### Example 1: Default scaling mode

```powershell
Update-NmeAutoScaleProfile `
    -ProfileId 0 `
    -Description "description" `
    -Name "default"
```

### Example 2: Working hours scaling mode

```powershell
Update-NmeAutoScaleProfile `
    -ProfileId 0 `
    -Description "Description" `
    -Name "Schedule-based"
```

### Example 3: User-driven scaling mode

```powershell
Update-NmeAutoScaleProfile `
    -ProfileId 0 `
    -Description "Description" `
    -Name "User-driven"
```

