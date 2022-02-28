#$answer = $null
$hostname = $args[0]

$dnsname = $hostname + ".oxfordproperties.com"

Import-Module "Centrify.DirectControl.PowerShell"
New-CdmManagedComputer -name $hostname -Zone "CN=xxx Systems,CN=Global,CN=Zones,OU=Centrify,DC=xxxproperties,DC=com" -DnsName $dnsname -Container "OU=Unix Servers,OU=Centrify,DC=xxxproperties,DC=com"`
-Delegate "CN=Zone Administrators,OU=Zone Administration,OU=Centrify,DC=xxxproperties,DC=com" -AdjoinAndMachineOverride -LicenseType Server
