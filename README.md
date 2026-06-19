# NerdioManagerPowerShell

> [!WARNING]
> **Public Preview**
>
> Version 1.1.1-preview of this module is being released as a public preview. Functionality, names, and behaviors may change as we continue to refine and finalize the module.
>
> A stable, production-ready release will be announced once the module has been fully validated and finalized.

## Overview

The **NerdioManagerPowerShell** module provides a comprehensive set of cmdlets for automating and managing Nerdio Manager for Enterprise resources — including host pools, session hosts, images, auto-scale profiles, scripted actions, workspaces, and more.

The module is auto-generated from the NME API specification using [AutoRest](https://github.com/Azure/autorest) with the [PowerShell](https://github.com/Azure/autorest.powershell) extension, and is compatible with both **PowerShell 7+** (Core) and **Windows PowerShell 5.1** (Desktop).

## Installation

### Option 1: Install from PowerShell Gallery

```powershell
Install-Module -Name NerdioManagerPowerShell -AllowPrerelease
```

Then import it in your scripts:

```powershell
Import-Module NerdioManagerPowerShell
```

### Option 2: Install from GitHub

Clone this repository and import the module directly from the local directory:

```powershell
git clone https://github.com/Get-Nerdio/NerdioManagerPowerShell.git
Import-Module -Name ./NerdioManagerPowerShell/NerdioManagerPowerShell.psm1
```

## Quick Start

```powershell
# Import the module
Import-Module NerdioManagerPowerShell

# Authenticate
Connect-Nme `
    -NmeUri       "https://your-nme-app.azurewebsites.net" `
    -TenantId     "00000000-0000-0000-0000-000000000000" `
    -ClientId     "00000000-0000-0000-0000-000000000000" `
    -ClientSecret "your-client-secret" `
    -ApiScope     "api://00000000-0000-0000-0000-000000000000/.default"

# Get deployment info
Get-NmeCurrentInstallationInfo

# List all managed AVD workspaces
Get-NmeWorkspace

# List session hosts for a host pool
Get-NmeSessionHost -SubscriptionId "<sub-id>" -ResourceGroup "<rg>" -HostPoolName "<pool>"

# Get auto-scale configuration
Get-NmeHostPoolAutoScale -SubscriptionId "<sub-id>" -ResourceGroup "<rg>" -HostPoolName "<pool>"

# Disconnect when done
Disconnect-Nme
```

## Documentation

Detailed per-cmdlet documentation is available in the [documentation](documentation/) folder.

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for a list of changes and release history.

## License

Copyright © 2026 Nerdio, Inc. All rights reserved.
