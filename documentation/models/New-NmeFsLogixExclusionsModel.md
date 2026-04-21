# New-NmeFsLogixExclusionsModel

Create an in-memory object for FsLogixExclusions.

**Output Type:** `FsLogixExclusions`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ExclusionMode | String | Yes | Values: `None`, `Admins` |
| ExcludedDomainAccounts | Object | No |  |

## Usage

```powershell
$model = New-NmeFsLogixExclusionsModel `
    -ExclusionMode "None"
```

