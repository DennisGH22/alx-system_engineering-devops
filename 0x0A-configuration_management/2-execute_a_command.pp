# Execute a command

exec { 'killmenow_process':
  command     => 'pkill -f killmenow',
  refreshonly => true,
}

