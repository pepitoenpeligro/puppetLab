# sudo puppet apply --environment=production shared/setup_mysql.pp
include mysql::server

mysql::db { 'mydb':
  user     => 'pepitoenpeligro',
  password => 'pepitoenpeligro',
  host     => 'localhost',
  grant    => ['SELECT', 'UPDATE'],
}
