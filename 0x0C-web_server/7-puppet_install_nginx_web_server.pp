# Ensure Nginx package is present
package { 'nginx':
  ensure => 'present',
}

# Install Nginx
exec { 'install_nginx':
  command  => 'sudo apt-get update && sudo apt-get -y install nginx',
  provider => shell,
  require  => Package['nginx'],
}

# Create index.html with "Hello World!" content
file { '/var/www/html/index.html':
  ensure  => file,
  content => 'Hello World!',
  require => Exec['install_nginx'],
}

# Configure Nginx with additional location block
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "listen 80 default_server;\nlocation /redirect_me {\n\treturn 301 https://tebogondaba.tech/;\n}",
  require => Exec['install_nginx'],
}

# Enable the additional site configuration
exec { 'enable_site':
  command  => 'sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/',
  provider => shell,
  require  => File['/etc/nginx/sites-available/default'],
}

# Restart Nginx
service { 'nginx':
  ensure    => 'running',
  enable    => true,
  subscribe => [File['/etc/nginx/sites-available/default'], Exec['enable_site']],
}
