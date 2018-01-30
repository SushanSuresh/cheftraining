

template '/etc/httpd/conf/httpd.conf' do
	source 'httpd.conf.erb'
	variables(
		port: node['httpd']['port'] 
	)
end
