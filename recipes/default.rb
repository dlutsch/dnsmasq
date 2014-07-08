#
# Cookbook Name:: dnsmasq
# Recipe:: default
#
# Copyright 2014, Dan Lutsch
#
# All rights reserved - Do Not Redistribute
#
package 'dnsmasq' do
  action :install
end

service 'dnsmasq' do
  action [:enable, :start]
end

if(node[:dnsmasq][:dns_server])
  include_recipe 'dnsmasq::dns'
end

if(node[:dnsmasq][:dhcp_server])
  include_recipe 'dnsmasq::dhcp'
end