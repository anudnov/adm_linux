$nodes = "hyperv1", "hyperv2", "hyperv3", "hyperv4", "hyperv5", "hyperv6"

Invoke-Command -ComputerName $nodes -ScriptBlock {
    Get-VMNetworkAdapter -VMName * | Where-Object { $_.MacAddress -eq "00155DXXXXXX" } | 
        Select-Object VMName, MacAddress, @{N='Host';E={$env:COMPUTERNAME}}, SwitchName
} | Select-Object VMName, MacAddress, Host, SwitchName
