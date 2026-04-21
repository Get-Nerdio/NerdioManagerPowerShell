# New-NmePowerStateCommandParamsModel

Create an in-memory object for PowerStateCommandParams.

**Output Type:** `PowerStateCommandParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Command | String | Yes | Values: `Restart`, `Stop`, `Start` |
| ExtensionHibernation | Boolean | No |  |

## Usage

```powershell
$model = New-NmePowerStateCommandParamsModel `
    -Command "Restart"
```

