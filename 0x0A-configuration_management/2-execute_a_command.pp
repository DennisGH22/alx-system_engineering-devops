# Execute a command

exec { 'killmenow':
  path    => '/usr/bin',
  command => 'pkill -e killmenow'
}
