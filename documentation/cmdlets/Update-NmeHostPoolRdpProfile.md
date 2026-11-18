# Update-NmeHostPoolRdpProfile

**Endpoint:** `PATCH /api/v1/hostpool-rdp-profiles/{id}`

## Description

Partially update hostpool RDP profile

**Output Type:** `IResponseWithMultipleJobsAndHostPoolRdpProfile`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| IsDefault | SwitchParameter | No |  |
| Name | String | No |  |
| Settings | String | No |  |

## Examples

```powershell
Update-NmeHostPoolRdpProfile -Id 0
```

