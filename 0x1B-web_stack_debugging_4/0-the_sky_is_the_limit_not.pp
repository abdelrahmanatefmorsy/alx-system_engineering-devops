# task0

# Increase
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
} ->

#  rest
exec { 'nginx-restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
