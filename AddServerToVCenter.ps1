#Script to Add Hosts to Vcenter; Used for when you have ### Machines but wait 6 years to get vCenter :-)
#This script was created by Jerry Reid
#It is a simple loop just adjust the numbers and use the hostname

Add-PSSnapin VMware.VimAutomation.Core 

Connect-ViServer obt-vcenter.ic.intel.com -Username Administrator@vsphere.local -Password $PASSWORD


 foreach ($i in 10..29) 
{
Foreach-Object { Add-VMHost $HOSTNAME"$i".FQDN -Location (Get-Datacenter -Name $DATACENTER_NAME) -User root -Password $PASSWORD -RunAsync -force:$true}
}



