yum_package 'redis' do
  action :nothing
  notifies :start, 'service[redis]', :immediately
end

yum_package 'epel-release' do
  action :install
  notifies :install, 'yum_package[redis]', :immediately
end

service 'redis' do
  supports status: true, restart: true, reload: true
  action :enable
end  
