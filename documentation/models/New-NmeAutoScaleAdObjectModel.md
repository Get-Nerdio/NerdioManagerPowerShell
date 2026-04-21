# New-NmeAutoScaleAdObjectModel

Create an in-memory object for AutoScaleAdObject.

**Output Type:** `AutoScaleAdObject`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ObjectId | String | Yes |  |
| ObjectType | String | Yes | Values: `User`, `Group` |

## Usage

```powershell
$model = New-NmeAutoScaleAdObjectModel `
    -ObjectId "<ObjectId>" `
    -ObjectType "User"
```

