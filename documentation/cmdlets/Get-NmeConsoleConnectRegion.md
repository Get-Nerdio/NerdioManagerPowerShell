# Get-NmeConsoleConnectRegion

**Category:** Console Connect

**Endpoint:** `GET /api/v1/console-connect/regional`

**Endpoint:** `GET /api/v1/console-connect/regional/{region}`

## Description

Get the status of all Console Connect regions.

Get the status of a specific Console Connect region.

**Output Type:** `IConsoleConnectRegionStatus`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Region | String | Yes | Values: `US`, `EU`, `CA`, `AU`, `UK` |

## Examples

### Example 1: GET /api/v1/console-connect/regional/{region}

```powershell
Get-NmeConsoleConnectRegion -Region "US"
```

### Example 2: GET /api/v1/console-connect/regional

```powershell
Get-NmeConsoleConnectRegion
```

