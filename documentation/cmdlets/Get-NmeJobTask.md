# Get-NmeJobTask

**Endpoint:** `GET /api/v1/job/{jobId}/tasks`

## Description

Get job tasks by job id

**Output Type:** `IJobTask`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| JobId | Int32 | Yes |  |

## Examples

```powershell
Get-NmeJobTask -JobId 0
```

