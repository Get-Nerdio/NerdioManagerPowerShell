# Get-NmeHostPoolRdpProfile

**Category:** Host Pool RDP Profiles

**Endpoint:** `GET /api/v1/hostpool-rdp-profiles`

**Endpoint:** `GET /api/v1/hostpool-rdp-profiles/{id}`

## Description

Get hostpool RDP profiles

Get hostpool RDP profile

**Output Type:** `IHostPoolRdpProfile`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |

## Examples

### Example 1: GET /api/v1/hostpool-rdp-profiles

```powershell
Get-NmeHostPoolRdpProfile
```

### Example 2: GET /api/v1/hostpool-rdp-profiles/{id}

```powershell
Get-NmeHostPoolRdpProfile -Id 0
```

