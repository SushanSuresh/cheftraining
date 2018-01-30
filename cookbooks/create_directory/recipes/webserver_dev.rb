dirpath = node['mydir']['path']
dirname = node['mydir']['name']

directory "#{dirpath}/#{dirname}" do
        action :create
        owner 'root'
        group 'root'
        mode '755'
end
