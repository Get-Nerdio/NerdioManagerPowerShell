# Disable-NmeConsoleConnectRegion

**Endpoint:** `DELETE /api/v1/console-connect/regional/{region}`

## Description

Turns off Console Connect for a specific region.

Turning off a region frees all licenses used in that region.
            
This method can throw exceptions in the following cases:
    The user must approve the Console Connect agreement.
    The user is trying to disable a region that is already disabled.
    There is already a job for enabling or disabling another region that is waiting to execute or is currently executing.
            
This method returns a job that performs all work required to disable Console Connect
for the specified region.
            
You should wait until the job is completed before working with this region.
You cannot enable or disable Console Connect for any region while this job is not completed,
because it can cause unexpected issues.
            
For example, if you want to disable Console Connect for a specific region,
but there is already a job for enabling or disabling Console Connect for this region,
you should wait until that job is completed.
            
After the job is completed, you can check the region status by using the GET method.

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Region | String | Yes | Values: `US`, `EU`, `CA`, `AU`, `UK` |

## Examples

```powershell
Disable-NmeConsoleConnectRegion -Region "US"
```

