# New-NmeAppAttachCertificate

**Endpoint:** `POST /api/v1/app-attach/certificate`

## Description

Upload certificate

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Certificate | IO.Stream | Yes | A file stream of the certificate file (.pfx/.cer) to upload. |

## Examples


```powershell
$stream = [System.IO.File]::OpenRead("C:\certs\app-attach.pfx")
try {
    New-NmeAppAttachCertificate -Certificate $stream
} finally {
    $stream.Dispose()
}
```

