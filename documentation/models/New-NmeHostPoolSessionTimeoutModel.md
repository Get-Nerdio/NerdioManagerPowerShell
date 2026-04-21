# New-NmeHostPoolSessionTimeoutModel

Create an in-memory object for HostPoolSessionTimeout.

**Output Type:** `HostPoolSessionTimeout`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IsSessionTimeoutsEnabled | Boolean | Yes |  |
| FresetBroken | Int32 | No |  |
| MaxConnectionTime | Int32 | No |  |
| MaxDisconnectionTime | Int32 | No |  |
| MaxIdleTime | Int32 | No |  |
| RemoteAppLogoffTimeLimit | Int32 | No |  |

## Usage

```powershell
$model = New-NmeHostPoolSessionTimeoutModel `
    -IsSessionTimeoutsEnabled $true
```

