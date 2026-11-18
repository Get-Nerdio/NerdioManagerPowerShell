# New-NmeLinkedSigningCertificateImportModel

Create an in-memory object for LinkedSigningCertificateImport.

**Output Type:** `LinkedSigningCertificateImport`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| CertificateBase64 | String | Yes |  |
| KeyVaultId | String | Yes |  |
| Name | String | Yes |  |
| Password | String | Yes |  |

## Usage

```powershell
$model = New-NmeLinkedSigningCertificateImportModel `
    -CertificateBase64 "<CertificateBase64>" `
    -KeyVaultId "<KeyVaultId>" `
    -Name "<Name>" `
    -Password "<Password>"
```

