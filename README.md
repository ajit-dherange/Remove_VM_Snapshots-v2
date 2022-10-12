# Remove more than 3 Days old VM Snapshots

This powershell script will remove more than 3 days old snapshots from vCenter 

# How To .....

1. Download powershell script (Remove_VM_Snapshots-v2.ps1)

2. Open powershell prompt

3. Connect to vCenter server (run below commands)

    $ Add-PSSnapin VMware.VimAutomation.Core

    $ Connect-VIServer -Server

3. Run the script Remove_VM_Snapshots-v2.ps1

4. Check the list of VMs on the screen for which snapshot got deleted
