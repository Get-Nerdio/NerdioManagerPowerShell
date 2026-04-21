# New-NmeDesktopImageFromLibrary

**Endpoint:** `POST /api/v1/desktop-image/create-from-library`

## Description

Create desktop image from Azure library

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| JobPayload | [IImageFromLibraryCreateParams](../models/New-NmeImageFromLibraryCreateParamsModel.md) | Yes |  |
| FailurePolicyCleanup | SwitchParameter | No |  |
| FailurePolicyRestart | SwitchParameter | No |  |

## Examples

### Example 1: Create image with standard security type

```powershell
$scriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$jobPayload = New-NmeImageFromLibraryCreateParamsModel `
    -ApplicationsTarget "Clone" `
    -DiskSize 0 `
    -ImageIdName "<ImageIdName>" `
    -ImageIdResourceGroup "<ImageIdResourceGroup>" `
    -ImageIdSubscriptionId "<ImageIdSubscriptionId>" `
    -NetworkId "<NetworkId>" `
    -ScriptedActionTarget "Clone" `
    -ScriptedActions $scriptedActions `
    -SourceImageId "<SourceImageId>" `
    -StorageType "<StorageType>" `
    -Subnet "<Subnet>" `
    -VMSize "<VMSize>"
New-NmeDesktopImageFromLibrary `
    -JobPayload $jobPayload `
    -FailurePolicyCleanup `
    -FailurePolicyRestart
```

### Example 2: Create image with trusted launch in Azure compute gallery

```powershell
$scriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$jobPayload = New-NmeImageFromLibraryCreateParamsModel `
    -ApplicationsTarget "Clone" `
    -DiskSize 0 `
    -ImageIdName "<ImageIdName>" `
    -ImageIdResourceGroup "<ImageIdResourceGroup>" `
    -ImageIdSubscriptionId "<ImageIdSubscriptionId>" `
    -NetworkId "<NetworkId>" `
    -ScriptedActionTarget "Clone" `
    -ScriptedActions $scriptedActions `
    -SourceImageId "<SourceImageId>" `
    -StorageType "<StorageType>" `
    -Subnet "<Subnet>" `
    -VMSize "<VMSize>"
New-NmeDesktopImageFromLibrary `
    -JobPayload $jobPayload `
    -FailurePolicyCleanup `
    -FailurePolicyRestart
```

### Example 3: Create image with confidential security type in Azure compute gallery

```powershell
$scriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$jobPayload = New-NmeImageFromLibraryCreateParamsModel `
    -ApplicationsTarget "Clone" `
    -DiskSize 0 `
    -ImageIdName "<ImageIdName>" `
    -ImageIdResourceGroup "<ImageIdResourceGroup>" `
    -ImageIdSubscriptionId "<ImageIdSubscriptionId>" `
    -NetworkId "<NetworkId>" `
    -ScriptedActionTarget "Clone" `
    -ScriptedActions $scriptedActions `
    -SourceImageId "<SourceImageId>" `
    -StorageType "<StorageType>" `
    -Subnet "<Subnet>" `
    -VMSize "<VMSize>"
New-NmeDesktopImageFromLibrary `
    -JobPayload $jobPayload `
    -FailurePolicyCleanup `
    -FailurePolicyRestart
```

