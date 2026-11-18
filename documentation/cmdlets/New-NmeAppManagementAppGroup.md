# New-NmeAppManagementAppGroup

**Endpoint:** `POST /api/v1/app-management/app-group`

## Description

Create a new app group

**Output Type:** `IResponseWithJobAndAppGroup`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Items | [IAppGroupItemCreate[]](../models/New-NmeAppGroupItemCreateModel.md) | Yes |  |
| Name | String | Yes |  |

## Examples

### Example 1: Create group

```powershell
$items = New-NmeAppGroupItemCreateModel `
    -CachedName "Microsoft .NET Runtime 8.0" `
    -ExternalId "Microsoft.DotNet.Runtime.8" `
    -RepoId 1 `
    -Version "8.0.0" `
    -Reboot $false
New-NmeAppManagementAppGroup `
    -Items @($items) `
    -Name "Test group"
```

### Example 2: Create group with different Winget OnUpgradeFail values

```powershell
$items = New-NmeAppGroupItemCreateModel `
    -CachedName "Microsoft .NET Runtime 8.0" `
    -ExternalId "Microsoft.DotNet.Runtime.8" `
    -RepoId 1 `
    -Version "8.0.0" `
    -OnUpgradeFail "Reinstall" `
    -Reboot $false
New-NmeAppManagementAppGroup `
    -Items @($items) `
    -Name "Test group - OnUpgradeFail"
```

### Example 3: Create group with different Intune AssignmentType values

```powershell
$items = New-NmeAppGroupItemCreateModel `
    -CachedName "CPU-Z" `
    -ExternalId "2148a9c8-68fc-4bea-b37d-d276b0d519a4" `
    -RepoId 11 `
    -Version "8.0.0" `
    -AssignmentType "Required"
New-NmeAppManagementAppGroup `
    -Items @($items) `
    -Name "Test group - AssignmentType"
```

