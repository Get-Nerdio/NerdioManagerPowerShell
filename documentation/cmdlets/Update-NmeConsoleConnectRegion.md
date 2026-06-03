# Update-NmeConsoleConnectRegion

**Endpoint:** `PATCH /api/v1/console-connect/regional/{region}`

## Description

Update Console Connect settings for a specific region.

Updates the configuration of an already-enabled Console Connect region.
            
Request body:
    AllowUninstall (required) - Whether users can uninstall the Console Connect agent.
            
This method can throw exceptions in the following cases:
    The region is not enabled.
    AllowUninstall is not specified in the request body.
    AllowUninstall is already set to the specified value.
            
This method returns a job and the updated region status.

**Output Type:** `IResponseWithJobAndConsoleConnectRegionStatus`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Region | String | Yes | Values: `US`, `EU`, `CA`, `AU` |
| AllowUninstall | SwitchParameter | No |  |

## Examples

```powershell
Update-NmeConsoleConnectRegion -Region "US"
```

