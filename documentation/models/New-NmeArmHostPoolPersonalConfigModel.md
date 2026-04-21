# New-NmeArmHostPoolPersonalConfigModel

Create an in-memory object for ArmHostPoolPersonalConfig.

**Output Type:** `ArmHostPoolPersonalConfig`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AssignmentType | String | Yes | Values: `Automatic`, `Direct` |
| MultiplePersistent | Boolean | No |  |

## Usage

```powershell
$model = New-NmeArmHostPoolPersonalConfigModel `
    -AssignmentType "Automatic"
```

