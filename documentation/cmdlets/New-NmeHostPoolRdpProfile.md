# New-NmeHostPoolRdpProfile

**Endpoint:** `POST /api/v1/hostpool-rdp-profiles`

## Description

Create hostpool RDP profile

**Output Type:** `IResponseWithMultipleJobsAndHostPoolRdpProfile`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IsDefault | SwitchParameter | Yes |  |
| Name | String | Yes |  |
| Settings | String | Yes |  |

## Examples

```powershell
New-NmeHostPoolRdpProfile `
    -IsDefault `
    -Name "<Name>" `
    -Settings "<Settings>"
```

