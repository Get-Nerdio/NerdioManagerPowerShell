# New-NmeVmSecurityProfileModel

Create an in-memory object for VmSecurityProfile.

**Output Type:** `VmSecurityProfile`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| SecurityType | String | Yes | Values: `None`, `TrustedLaunch`, `Confidential` |
| ConfidentialDiskEncryption | Boolean | No |  |
| DiskEncryptionSetsIds | Object | No |  |
| EncryptionAtHost | Boolean | No |  |
| IntegrityMonitoring | Boolean | No |  |
| SecureBootEnabled | Boolean | No |  |
| VTpmEnabled | Boolean | No |  |

## Usage

```powershell
$model = New-NmeVmSecurityProfileModel `
    -SecurityType "None"
```

