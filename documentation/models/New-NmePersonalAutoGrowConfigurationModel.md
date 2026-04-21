# New-NmePersonalAutoGrowConfigurationModel

Create an in-memory object for PersonalAutoGrowConfiguration.

**Output Type:** `PersonalAutoGrowConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| UnassignedThreshold | Int32 | Yes |  |
| Unit | Int32 | Yes | Values: `0`, `1` |

## Usage

```powershell
$model = New-NmePersonalAutoGrowConfigurationModel `
    -UnassignedThreshold 0 `
    -Unit "0"
```

