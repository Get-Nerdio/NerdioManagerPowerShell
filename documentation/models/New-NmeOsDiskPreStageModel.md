# New-NmeOsDiskPreStageModel

Create an in-memory object for OsDiskPreStage.

**Output Type:** `OsDiskPreStage`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Mode | String | Yes | Values: `None`, `Default`, `Hybrid`, `Automated` |
| Target | String | Yes | Values: `All`, `Assigned` |

## Usage

```powershell
$model = New-NmeOsDiskPreStageModel `
    -Mode "None" `
    -Target "All"
```

