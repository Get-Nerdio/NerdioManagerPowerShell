# Update-NmeLogo

**Endpoint:** `PATCH /api/v1/portal/logo`

## Description

Patch logo settings

**Output Type:** `ILogoSettings`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Logo | IO.Stream | Yes | A file stream of the logo image to upload. |

## Examples


```powershell
$stream = [System.IO.File]::OpenRead("C:\images\logo.png")
try {
    Update-NmeLogo -Logo $stream
} finally {
    $stream.Dispose()
}
```

