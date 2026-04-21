# Changelog

## 1.0.0
- Module rewritten using AutoRest code generation from the NME REST API specification
- Compatible with NME 7.7 REST API
- **Breaking:** This version is not compatible with previous versions of the module. All cmdlet names, parameters, and object models have changed

## 0.12.2
- New function added for compatibility with NME 7.0 REST API
- See release notes for NME REST API for added and removed/deprecated functionality

## 0.10.2
- New functions added for compatibility with NME 6.6 REST API
- See release notes for NME REST API for added and removed/deprecated functionality

## 0.9.10
- New functions added for compatibility with NME 6.5 REST API
- See release notes for NME REST API for added and removed/deprecated functionality

## 0.9.3
- New functions added for compatibility with NME 6.3 REST API
- Some function properties have new aliases to improve compatibility with the API output
- Added new component constructor functions to improve compatibility

## 0.8.6
- New functions added for compatibility with NME 6.1 REST API

## 0.8.5
- New functions added for compatibility with NME 6.1 REST API

## 0.6.1
- New functions have been added for configuring and managing the Unified Application Management features
- Compatible with NME 5.6.1 release
- Two properties of `New-NmeDynamicPoolConfiguration` are now deprecated: `minCountCreatedVmsType` and `enableFixFailedTask`

## 0.5.0
- App Management function `Get-NmeAppRepository` now available
- New ability to manage scripted action groups
- New function `Get-NmeDesktopImage` to list NME images
- Rolling drain mode parameters for Host Pool AutoScale configuration
- Enhancements to managing scripted actions
- New functions for managing images
- New functions for querying Entra ID & Entra domain services profiles
- New functions for managing ControlUp integrations
- New parameters for `New-NmePersonalAutoShrinkRestConfiguration`
- New parameter `IntelligentPrestageMode` for function `New-NmePreStateHostsConfiguration`
- New options for host pool user self service
- `New-NmeTimeIntervalWithTimeZone` parameter `TimeZoneId` is now deprecated
- New RDP configuration options
- New function `Set-NmeAppAttachImageVersionName`

### Breaking changes in 0.5.0
- New mandatory parameters for `New-NmeHostPoolVmDeploymentRestModel`
- New mandatory parameter `RdpShortpath` for `New-NmeHostPoolVmDeploymentRestPutRequest`
- `New-NmeHostPoolRdpModelRest` has been updated to `New-NmeArmHostPoolRdpModelRest`
- Object `BulkJobParams` used in `New-NmeRunScriptScheduledBulkJobParams` has changed parameters
- `TimeZoneId` is now a required parameter for `New-NmeDynamicPoolConfiguration` and `Set-NmeDynamicPoolConfiguration`