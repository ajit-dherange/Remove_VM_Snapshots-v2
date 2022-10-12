
# Add-PSSnapin VMware.VimAutomation.Core
# $vcenter = XXXX
# Connecting to vCenter
# Connect-VIServer -Server $vcenter -User administrator@vsphere.local -Password ZZZZZ | out-null
$snapshots  = Get-VM | Get-Snapshot
foreach ($snap_data in $snapshots) {
        if($snap_data.Created -lt (Get-Date).AddDays(-3))
        {
        Write-host $snap_data.VM "," $snap_data.Created "," $snap_data.Id | FT -AutoSize
        Get-VM $snap_data.VM | Get-Snapshot |  Remove-Snapshot -Confirm:$false -RemoveChildren
        Start-Sleep -s 5
        }
    }

