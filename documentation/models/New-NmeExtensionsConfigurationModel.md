# New-NmeExtensionsConfigurationModel

Create an in-memory object for ExtensionsConfiguration.

**Output Type:** `ExtensionsConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| LoadBalancing | String | No | Values: `BreadthFirst`, `DepthFirst`, `Persistent`, `MultiplePersistent` |
| MaxSessionsPerHost | Int32 | No |  |
| StartVMOnConnect | Boolean | No |  |

## Usage

```powershell
$model = New-NmeExtensionsConfigurationModel `
    -LoadBalancing "BreadthFirst" `
    -MaxSessionsPerHost 0 `
    -StartVMOnConnect $true
```

