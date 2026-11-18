# New-NmeLinkedSigningCertificateDeleteModel

Create an in-memory object for LinkedSigningCertificateDelete.

**Output Type:** `LinkedSigningCertificateDelete`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| DeleteCertificate | Boolean | Yes |  |
| Force | Boolean | Yes |  |

## Usage

```powershell
$model = New-NmeLinkedSigningCertificateDeleteModel `
    -DeleteCertificate $true `
    -Force $true
```

