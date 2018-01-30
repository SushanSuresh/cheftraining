#
# Cookbook:: create_directory
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


directory '/tmp/default_dir' do
	action :create
	owner 'root'
	group 'root'
	mode '755'
end

if node.chef_environment == "dev" 
	execute "shl" do
		command "echo \"dev\""
	end
end
if node.chef_environment == "qa" 
        execute "shl" do
                command "echo \"dev\""
        end
end

if node.chef_environment == "prod" 
        execute "shl" do
                command "echo \"prod\""
        end
end



include_recipe "create_directory::webserver_dev"
include_recipe "create_directory::webserver_prod"
