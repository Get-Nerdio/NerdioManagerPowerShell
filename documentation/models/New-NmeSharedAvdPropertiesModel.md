# New-NmeSharedAvdPropertiesModel

Create an in-memory object for SharedAvdProperties.

**Output Type:** `SharedAvdProperties`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| LoadBalancing | String | Yes | Values: `BreadthFirst`, `DepthFirst`, `Persistent`, `MultiplePersistent` |
| MaxSessionsPerHost | Int32 | Yes |  |
| StartVMOnConnect | Boolean | Yes |  |

## Usage

```powershell
$model = New-NmeSharedAvdPropertiesModel `
    -LoadBalancing "BreadthFirst" `
    -MaxSessionsPerHost 0 `
    -StartVMOnConnect $true
```

