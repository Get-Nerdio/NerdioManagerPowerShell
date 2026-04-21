# New-NmeHostPoolSizeModel

Create an in-memory object for HostPoolSize.

**Output Type:** `HostPoolSize`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ActiveHostType | String | Yes | Values: `Running`, `AvailableForConnection` |
| BurstCapacity | Int32 | Yes |  |
| HostPoolCapacity | Int32 | Yes |  |
| MinActiveHostsCount | Int32 | Yes |  |

## Usage

```powershell
$model = New-NmeHostPoolSizeModel `
    -ActiveHostType "Running" `
    -BurstCapacity 0 `
    -HostPoolCapacity 0 `
    -MinActiveHostsCount 0
```

