#DNSMasq

Chef cookbook for the installation and configuration of DNSMasq on Ubuntu and RedHat hosts. 

##Recipies

###default

Installs the `dnsmasq` package

###DNS

Configures dnsmasq to function as a DNS server. Configured through the `default[:dnsmasq][:dns_server]` attribute. 

###DHCP

Configures dnsmasq to function as a DHCP server. This function is still a work in progress, I am presently creating attributes to set the DHCP config. (default value false)

##Attributes
`default[:dnsmasq][:dhcp_server] = false`     *configure DHCP service* 

`default[:dnsmasq][:dns_server] = true`  *configure DNS service*

`default[:dnsmasq][:upstream1] = "8.8.8.8"` *sets first upstream DNS server*

`default[:dnsmasq][:upstream2] = "8.8.4.4"` *sets second upstream DNS server*

##Templates
Templates currently replace the `/etc/dnsmasq.conf`, `/etc/dhcp/dhclient.conf`, and `/etc/resolv.conf` config files. Make sure to back these up before running. Backup function will be added in a later push. 




