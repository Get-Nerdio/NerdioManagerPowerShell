# New-NmeUserSelfServiceTagModel

Create an in-memory object for UserSelfServiceTag.

**Output Type:** `UserSelfServiceTag`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| CanDelete | Boolean | Yes |  |
| CanUpdate | Boolean | Yes |  |
| Name | String | Yes |  |
| Values | Object | Yes |  |

## Usage

```powershell
$model = New-NmeUserSelfServiceTagModel `
    -CanDelete $true `
    -CanUpdate $true `
    -Name "<Name>" `
    -Values "<Values>"
```

