# Update-NmeLinkedSigningCertificate

**Endpoint:** `PATCH /api/v1/signing-certificates/{id}`

## Description

Update linked signing certificate version

**Output Type:** `IResponseWithJobAndLinkedSigningCertificate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| Version | String | Yes |  |

## Examples

```powershell
Update-NmeLinkedSigningCertificate `
    -Id 0 `
    -Version "certificate-version"
```

