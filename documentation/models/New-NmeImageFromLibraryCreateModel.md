# New-NmeImageFromLibraryCreateModel

Create an in-memory object for ImageFromLibraryCreate.

**Output Type:** `ImageFromLibraryCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| JobPayload | [IImageFromLibraryCreateParams](New-NmeImageFromLibraryCreateParamsModel.md) | Yes |  |
| FailurePolicyCleanup | Boolean | No |  |
| FailurePolicyRestart | Boolean | No |  |

## Usage

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
$model = New-NmeImageFromLibraryCreateModel `
    -JobPayload $jobPayload
```

