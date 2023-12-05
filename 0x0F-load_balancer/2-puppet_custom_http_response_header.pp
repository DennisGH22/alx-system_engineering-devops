# Add a custom HTTP header
exec { 'command':
  command  => 'apt-get -y update;
  apt-get -y install nginx;
  provider => shell,
  sudo sed -i "/listen 80 default_server;/a add_header X-Served-By $HOSTNAME;" /etc/nginx/sites-enabled/default;
  sudo service nginx restart',
}
