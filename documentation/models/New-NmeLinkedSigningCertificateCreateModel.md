# New-NmeLinkedSigningCertificateCreateModel

Create an in-memory object for LinkedSigningCertificateCreate.

**Output Type:** `LinkedSigningCertificateCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| KeyVaultId | String | Yes |  |
| Name | String | Yes |  |

## Usage

```powershell
$model = New-NmeLinkedSigningCertificateCreateModel `
    -KeyVaultId "<KeyVaultId>" `
    -Name "<Name>"
```

