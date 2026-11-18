# Get-NmeLinkedSigningCertificate

**Category:** Signing Certificates

**Endpoint:** `GET /api/v1/signing-certificates`

**Endpoint:** `GET /api/v1/signing-certificates/{id}`

## Description

Get linked signing certificates

Get linked signing certificate

**Output Type:** `ILinkedSigningCertificate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |

## Examples

### Example 1: GET /api/v1/signing-certificates

```powershell
Get-NmeLinkedSigningCertificate
```

### Example 2: GET /api/v1/signing-certificates/{id}

```powershell
Get-NmeLinkedSigningCertificate -Id 0
```

