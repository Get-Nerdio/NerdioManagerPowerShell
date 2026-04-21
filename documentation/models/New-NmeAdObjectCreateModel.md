# New-NmeAdObjectCreateModel

Create an in-memory object for AdObjectCreate.

**Output Type:** `AdObjectCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | String | Yes |  |
| ObjectType | String | Yes | Values: `User`, `Group` |

## Usage

```powershell
$model = New-NmeAdObjectCreateModel `
    -Id "<Id>" `
    -ObjectType "User"
```

