# New-NmeWorkspaceCreateModel

Create an in-memory object for WorkspaceCreate.

**Output Type:** `WorkspaceCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IdName | String | Yes |  |
| IdResourceGroup | String | Yes |  |
| IdSubscriptionId | String | Yes |  |
| Location | String | Yes |  |
| Description | String | No |  |
| FriendlyName | String | No |  |
| Tags | IWorkspaceCreateTags | No |  |

## Usage

```powershell
$model = New-NmeWorkspaceCreateModel `
    -IdName "<IdName>" `
    -IdResourceGroup "<IdResourceGroup>" `
    -IdSubscriptionId "<IdSubscriptionId>" `
    -Location "<Location>"
```

