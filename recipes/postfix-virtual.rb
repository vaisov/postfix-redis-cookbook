execute 'update-postfix-virtual-alias' do
  command "postmap /etc/postfix/virtual"
  action :nothing
end

template '/etc/postfix/virtual' do
  source 'virtual_aliases.erb'
  variables(
      :hostname => node[:hostname]
  )
  notifies :run, 'execute[update-postfix-virtual-alias]'
  notifies :restart, 'service[postfix]'
end
