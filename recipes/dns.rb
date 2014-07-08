include_recipe 'dnsmasq::default'

template "/etc/dnsmasq.conf" do
	source "dnsmasq.erb"
	mode 0644
end

template "/etc/dhcp/dhclient.conf" do
	source "dhclient.erb"
	mode 0644
end

template "/etc/resolv.conf" do
	source "resolv.erb"
	user "root"
	group "root"
	variables(
	  :upstream1 => node['dnsmasq']['upstream1'],
	  :upstream2 => node['dnsmasq']['upstream2']
	)
	notifies :reload, "service[dnsmasq]", :immediately
end
