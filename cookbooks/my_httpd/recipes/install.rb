#Recipe to install httpd on linux machine

package 'install apache' do
	package_name 'httpd'	
	action :install
end


service 'httpd' do
	action :enable
end

