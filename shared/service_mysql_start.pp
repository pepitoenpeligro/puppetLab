service { 'mysql':
  ensure => 'running',
  enable => true,
}


# service { 'mysql':
#   ensure => 'stopped',
#   enable => true,
# }


# List all services with status: sudo service --status-all
