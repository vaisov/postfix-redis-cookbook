template '/home/toredis/.forward' do
  action :nothing
  source 'forward.erb'
  user 'toredis'
  group 'toredis'
  subscribes :create, 'user[toredis]'
end
