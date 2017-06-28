user 'toredis' do
  name 'toredis'
  home '/home/toredis'
  manage_home true
  notifies :create, 'template[/home/toredis/store_to_redis.py]'
  action :create
end

template '/home/toredis/store_to_redis.py' do
  source 'store_to_redis.py.erb'
  user 'toredis'
  group 'toredis'
  mode 0755
  notifies :run, 'execute[chcon-postfix]'
end

execute 'chcon-postfix' do
  command 'chcon -t postfix_local_exec_t /home/toredis/store_to_redis.py'
  action :nothing
end

directory '/home/toredis' do
  mode 0755
end
