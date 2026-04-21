# New-NmeArmHostPoolPooledConfigModel

Create an in-memory object for ArmHostPoolPooledConfig.

**Output Type:** `ArmHostPoolPooledConfig`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IsSingleUser | Boolean | Yes |  |
| IsDesktop | Boolean | No |  |

## Usage

```powershell
$model = New-NmeArmHostPoolPooledConfigModel `
    -IsSingleUser $true
```

