<<<<<<< HEAD
<<<<<<< HEAD
# This manuscript increases the amount of traffic an Nginx server can handle
=======
# This script increases the amount of traffic an Nginx server can handle
>>>>>>> 98aa44056218acbe1d446d0c9d4afcb86df1a6a3
=======
# This script increases the amount of traffic an Nginx server can handle
>>>>>>> e1b9df7055779fce3acd3c2a1bcc09b3aa82f448

# Increase the ULIMIT of the default file
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
}

# Restart Nginx
-> exec { 'nginx-restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
