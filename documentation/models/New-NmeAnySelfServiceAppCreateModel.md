# New-NmeAnySelfServiceAppCreateModel

Create an in-memory object for AnySelfServiceAppCreate.

**Output Type:** `AnySelfServiceAppCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ExternalId | String | Yes |  |
| Name | String | Yes |  |
| RepoId | Int32 | Yes |  |
| Version | String | No |  |

## Usage

```powershell
$model = New-NmeAnySelfServiceAppCreateModel `
    -ExternalId "<ExternalId>" `
    -Name "<Name>" `
    -RepoId 0
```

