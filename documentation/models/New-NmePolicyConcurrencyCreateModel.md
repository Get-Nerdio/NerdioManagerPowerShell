# New-NmePolicyConcurrencyCreateModel

Create an in-memory object for PolicyConcurrencyCreate.

**Output Type:** `PolicyConcurrencyCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Balancer | String | Yes | Values: `Global`, `ByPool` |
| MaxJobs | Int32 | Yes |  |

## Usage

```powershell
$model = New-NmePolicyConcurrencyCreateModel `
    -Balancer "Global" `
    -MaxJobs 0
```

