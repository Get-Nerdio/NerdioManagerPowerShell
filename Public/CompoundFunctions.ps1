Function Export-NmeHostPoolConfig {
    <#

	.SYNOPSIS

	Exports the configuration of a hostpool to a JSON object

	.DESCRIPTION

	 This function exports the configuration of a hostpool to a JSON object. The JSON object includes the following properties:
        RdpConfig - RDP properties
        FslConfig - FSLogix properties
        BackupConfig - Backup properties
        AdConfig - Active Directory properties
        AvdConfig - AVD properties
        AsConfig - AutoScale properties
        HostPoolConfig - Hostpool properties such as name, type, etc.
        CustomTags - Custom tags
        SessiontTimeoutConfig - Session timeout properties
        SelfServiceConfig - Self-service properties
        Hosts (if the -IncludeHosts switch is used) - Current session hosts in the hostpool

	.PARAMETER SubscriptionId

	The id (guid) of the subscription where this hostpool resides

	.PARAMETER ResourceGroup

	The Azure resource group where the hostpool resides

	.PARAMETER HostPoolName

	The name of the Host Pool

	.PARAMETER IncludeHosts

	Include the current hosts in the output

	#>
    Param (
        [Parameter(Mandatory = $true)]
        [string]$SubscriptionId,
        [Parameter(Mandatory = $true)]
        [string]$ResourceGroup,
        [Parameter(Mandatory = $true)]
        [string]$HostPoolName,
        [switch]$IncludeHosts
    )


    $hp =Get-NmeHostPool -subscriptionId $SubscriptionId -resourceGroup $ResourceGroup -hostPoolName $HostPoolName
    $asconfig = Get-NmeHostPoolAutoScaleConfig -subscriptionId $SubscriptionId -resourceGroup $ResourceGroup -hostPoolName $HostPoolName -ErrorAction SilentlyContinue
    $avdconfig =Get-NmeHostPoolAVDConfig -SubscriptionId $SubscriptionId -ResourceGroup $ResourceGroup -HostPoolName $HostPoolName
    $AdConfig = Get-NmeHostPoolADConfig -SubscriptionId $SubscriptionId -ResourceGroup $ResourceGroup -HostPoolName $HostPoolName
    $BackupConfig = Get-NmeHostPoolBackupConfig -SubscriptionId $SubscriptionId -ResourceGroup $ResourceGroup -HostPoolName $HostPoolName
    $CustomTags = Get-NmeHostPoolCustomTags -SubscriptionId $SubscriptionId -ResourceGroup $ResourceGroup -HostPoolName $HostPoolName
    $FslConfig = Get-NmeHostPoolFslConfig -SubscriptionId $SubscriptionId -ResourceGroup $ResourceGroup -HostPoolName $HostPoolName
    $RdpConfig = Get-NmeHostPoolRdpConfig -SubscriptionId $SubscriptionId -ResourceGroup $ResourceGroup -HostPoolName $HostPoolName
    $SelfServiceConfig = Get-NmeHostPoolSelfServiceConfig -SubscriptionId $SubscriptionId -ResourceGroup $ResourceGroup -HostPoolName $HostPoolName -ErrorAction SilentlyContinue
    $SessiontTimeoutConfig = Get-NmeHostPoolSessionTimeoutConfig -SubscriptionId $SubscriptionId -ResourceGroup $ResourceGroup -HostPoolName $HostPoolName

    $Props = @{HostPoolConfig = $hp
            AsConfig = $asconfig
            AvdConfig = $avdconfig
            AdConfig = $AdConfig
            BackupConfig = $BackupConfig
            CustomTags = $CustomTags
            FslConfig = $FslConfig
            RdpConfig = $RdpConfig
            SelfServiceConfig = $SelfServiceConfig
            SessiontTimeoutConfig = $SessiontTimeoutConfig
            }

    if ($IncludeHosts) {
        $hosts = Get-NmeHostPoolSessionHosts -SubscriptionId $SubscriptionId -ResourceGroup $ResourceGroup -HostPoolName $HostPoolName
        $Props.Add('Hosts', $hosts)
    }
    $props|ConvertTo-Json -Depth 20
    
}