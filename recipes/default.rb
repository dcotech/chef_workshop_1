#
# Cookbook:: lcd_mongodb2
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


yum_repository 'mongodb-org-3.4' do
  description "MongoDB repo"
  baseurl "https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.4/x86_64/"
  gpgkey 'https://www.mongodb.org/static/pgp/server-3.4.asc'
  action :create
end


package 'mongodb-org' do
end

service 'mongod' do 
  action [:enable, :start]
end
