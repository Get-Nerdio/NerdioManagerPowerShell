# New-NmeHostPoolConsoleConnectUpdateModel

Create an in-memory object for HostPoolConsoleConnectUpdate.

**Output Type:** `HostPoolConsoleConnectUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Enable | Boolean | No |  |
| Region | String | No | Values: `US`, `EU`, `CA`, `AU`, `UK` |

## Usage

```powershell
$model = New-NmeHostPoolConsoleConnectUpdateModel `
    -Enable $true `
    -Region "US"
```

