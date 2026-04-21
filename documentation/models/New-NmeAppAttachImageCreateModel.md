# New-NmeAppAttachImageCreateModel

Create an in-memory object for AppAttachImageCreate.

**Output Type:** `AppAttachImageCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ImageName | String | Yes |  |
| LocationId | String | Yes |  |
| Description | String | No |  |

## Usage

```powershell
$model = New-NmeAppAttachImageCreateModel `
    -ImageName "<ImageName>" `
    -LocationId "<LocationId>"
```

