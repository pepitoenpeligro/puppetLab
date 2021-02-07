# sudo cp shared/hiera/common.yaml /etc/puppetlabs/code/environments/production/data/
lookup('users', Hash, 'hash').each | String $user, Hash $properties | {
  notice("Creating user ${user}")

  user{ $user:
    * => $properties
  }
}
