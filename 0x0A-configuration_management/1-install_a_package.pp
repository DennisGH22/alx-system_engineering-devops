# Install flask from pip3

exec { 'install_flask':
  command => 'bin/pip3 install flask==2.1.0'
}
