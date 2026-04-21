# New-NmeHostPoolControlUpRegistrationKeyUpdateModel

Create an in-memory object for HostPoolControlUpRegistrationKeyUpdate.

**Output Type:** `HostPoolControlUpRegistrationKeyUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Type | String | Yes | Values: `Disabled`, `Default`, `Custom` |
| Value | String | No |  |

## Usage

```powershell
$model = New-NmeHostPoolControlUpRegistrationKeyUpdateModel `
    -Type "Disabled"
```

