# Set-NmeHostPoolActiveDirectoryConfiguration

**Endpoint:** `PUT /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/active-directory`

## Description

Update Active Directory configuration for ARM host pool

**Output Type:** `IHostPoolActiveDirectory`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| Type | String | Yes | Values: `Default`, `Predefined`, `Custom` |
| CustomAdIdentityType | String | No | Values: `AD`, `AzureAD`, `AzureADDS` |
| CustomDomain | String | No |  |
| CustomEnrollWithIntune | SwitchParameter | No |  |
| CustomFriendlyName | String | No |  |
| CustomOrganizationUnit | String | No |  |
| CustomPassword | String | No |  |
| CustomUsername | String | No |  |
| PredefinedConfigId | Int32 | No |  |

## Examples

### Example 1: Global default config

```powershell
Set-NmeHostPoolActiveDirectoryConfiguration `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -Type "Default"
```

### Example 2: Specific predefined config

```powershell
Set-NmeHostPoolActiveDirectoryConfiguration `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -Type "Predefined" `
    -PredefinedConfigId 1
```

### Example 3: Custom local AD or Entra Domain Services config

```powershell
Set-NmeHostPoolActiveDirectoryConfiguration `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -Type "Custom" `
    -CustomAdIdentityType "AD" `
    -CustomDomain "domain.xxx" `
    -CustomOrganizationUnit "OU=IT,dc=domain,dc=xxx" `
    -CustomPassword "VeryStrongPassword" `
    -CustomUsername "user@domain.xx"
```

### Example 4: Custom Entra ID config

```powershell
Set-NmeHostPoolActiveDirectoryConfiguration `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -Type "Custom" `
    -CustomAdIdentityType "AzureAD"
```

