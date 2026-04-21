# New-NmeAutoScaleProfile

**Endpoint:** `POST /api/v1/auto-scale-profile`

**Output Type:** `IAutoScaleProfile`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Mode | String | Yes | Values: `Default`, `WorkingHours`, `UserDriven` |
| Name | String | Yes |  |
| Default | [IAutoScaleDefaultConfiguration](../models/New-NmeAutoScaleDefaultConfigurationModel.md) | No |  |
| Description | String | No |  |
| UserDriven | [IAutoScaleUserDrivenConfigurationCreate](../models/New-NmeAutoScaleUserDrivenConfigurationCreateModel.md) | No |  |
| WorkingHours | [IAutoScaleWorkingHoursConfiguration](../models/New-NmeAutoScaleWorkingHoursConfigurationModel.md) | No |  |

## Examples

### Example 1: Default scaling mode

```powershell
New-NmeAutoScaleProfile `
    -Mode "Default" `
    -Name "Shared" `
    -Description "Description"
```

### Example 2: Working hours scaling mode

```powershell
New-NmeAutoScaleProfile `
    -Mode "Default" `
    -Name "Schedule-based" `
    -Description "Description"
```

### Example 3: User driven scaling mode

```powershell
New-NmeAutoScaleProfile `
    -Mode "Default" `
    -Name "User-driven" `
    -Description "Description"
```

