# Client SSH configuration

file { '/etc/ssh/ssh_config':
  ensure  => present,
  content => "\
# Turn off password authentication
PasswordAuthentication no

# Declare identity file
IdentityFile ~/.ssh/school
",
  audit   => ['content'],
}
