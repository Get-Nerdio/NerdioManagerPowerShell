# New-NmeLinkedSigningCertificate

**Endpoint:** `POST /api/v1/signing-certificates`

## Description

Link existing signing certificate

**Output Type:** `IResponseWithJobAndLinkedSigningCertificate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| KeyVaultId | String | Yes |  |
| Name | String | Yes |  |

## Examples

```powershell
New-NmeLinkedSigningCertificate `
    -KeyVaultId "/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.KeyVault/vaults/vault-name" `
    -Name "signing-certificate"
```

