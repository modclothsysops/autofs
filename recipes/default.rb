#
# Cookbook Name:: autofs
# Recipe:: default
#
# Copyright ModCloth, Inc.
#
# All rights reserved - Do Not Redistribute
#

case node["platform"]
when 'smartos'
  include_recipe "autofs::smartos"
when 'centos'
  include_recipe "autofs::centos"
else
  include_recipe "autofs::ubuntu"
end

