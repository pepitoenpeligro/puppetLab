package{
  'Install Mysql':
  name => 'mysql-server-5.7',
  ensure => installed,
  provider => 'apt'
}

