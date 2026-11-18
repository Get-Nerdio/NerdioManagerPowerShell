# Import-NmeLinkedSigningCertificate

**Endpoint:** `POST /api/v1/signing-certificates/import`

## Description

Import and link signing certificate

**Output Type:** `IResponseWithJobAndLinkedSigningCertificate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| CertificateBase64 | String | Yes |  |
| KeyVaultId | String | Yes |  |
| Name | String | Yes |  |
| Password | String | Yes |  |

## Examples

```powershell
Import-NmeLinkedSigningCertificate `
    -CertificateBase64 "base64-encoded-certificate" `
    -KeyVaultId "/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.KeyVault/vaults/vault-name" `
    -Name "signing-certificate" `
    -Password "certificate-password"
```

