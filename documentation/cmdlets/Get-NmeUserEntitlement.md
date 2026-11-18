# Get-NmeUserEntitlement

**Endpoint:** `GET /api/v1/tenant/{tenantId}/user-entitlement/{userIdOrUpn}`

## Description

Returns a consolidated view of the resources a specific user is entitled to.

**Output Type:** `IUserEntitlement`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| TenantId | String | Yes | Azure AD tenant ID linked to the Nerdio Manager deployment. |
| UserIdOrUpn | String | Yes | The user's Azure AD object ID (GUID) or User Principal Name (UPN/email). |
| ResourceType | String | No | Optional filter specifying which resource types to include. Values: `Avd`, `Intune` |

## Examples

```powershell
Get-NmeUserEntitlement `
    -TenantId "<TenantId>" `
    -UserIdOrUpn "<UserIdOrUpn>"
```

