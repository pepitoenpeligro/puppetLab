package {
  'cowsay':
    ensure => installed,
    provider => 'apt'
}

exec {
  'Query info about package':
  command => '/opt/puppetlabs/bin/puppet resource package cowsay > /home/vagrant/shared/install_cowsay_out.txt',
  provider => shell
}


exec {
  'Say hi! Pepe in cowsay':
  command => '/usr/games/cowsay hi! Pepe >> /home/vagrant/shared/install_cowsay_out.txt',
  provider => shell
}
