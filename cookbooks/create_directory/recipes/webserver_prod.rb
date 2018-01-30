dirpath = node['mydir']['path']
dirname = node['mydir']['name']
flname = node['myfile']['name']

file "#{dirpath}/#{dirname}/#{flname}" do
        action :create
        owner 'root'
        group 'root'
	content 'Hai it is prod deployment'
        mode '755'
end
