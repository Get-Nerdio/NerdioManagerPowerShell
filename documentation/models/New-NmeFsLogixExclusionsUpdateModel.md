# New-NmeFsLogixExclusionsUpdateModel

Create an in-memory object for FsLogixExclusionsUpdate.

**Output Type:** `FsLogixExclusionsUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ExcludedDomainAccounts | Object | No |  |
| ExclusionMode | String | No | Values: `None`, `Admins` |

## Usage

```powershell
$model = New-NmeFsLogixExclusionsUpdateModel `
    -ExcludedDomainAccounts "<ExcludedDomainAccounts>" `
    -ExclusionMode "None"
```

