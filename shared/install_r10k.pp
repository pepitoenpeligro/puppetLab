package { 'Install r10k':
  name => 'r10k',
  ensure => installed,
  provider => puppet_gem,
}
