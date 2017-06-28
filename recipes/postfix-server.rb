package [ 'postfix', 'mailx' ] do
  notifies :create, 'template[/etc/postfix/main.cf]'
end

service 'postfix' do
  supports status: true, restart: true, reload: true
  action :enable
end

template '/etc/postfix/main.cf' do
  source 'main.cf'
  notifies :restart, 'service[postfix]'
end
