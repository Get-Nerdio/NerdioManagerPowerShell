# Enable-NmeConsoleConnectRegion

**Endpoint:** `POST /api/v1/console-connect/regional/{region}`

## Description

Turns on Console Connect for a specific region.

Turning on a region takes 25 licenses for that region.
            
Request body:
    AllowUninstall (optional) - Whether users can uninstall the Console Connect agent. Defaults to true if not specified.
            
This method can throw exceptions in the following cases:
    The user has not approved the Console Connect agreement.
    The user tries to enable a region that is already enabled.
    Another Console Connect enable/disable job is already waiting or running.
            
This method returns a job that performs all actions required to enable
Console Connect for the specified region.
            
You should wait until the job is completed before working with this region.
You also cannot enable or disable Console Connect for any region until the job
is completed, because this can cause unexpected issues.
            
For example, if you want to disable Console Connect for a specific region,
but there is already an enable/disable job for this region, you should wait
until that job is completed.
            
After the job is completed, you can check the region status by using the GET method.

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Region | String | Yes | Values: `US`, `EU`, `CA`, `AU` |
| AllowUninstall | SwitchParameter | No |  |

## Examples

```powershell
Enable-NmeConsoleConnectRegion -Region "US"
```

