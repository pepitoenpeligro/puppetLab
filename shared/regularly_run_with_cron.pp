
file { '/home/vagrant/shared/complements/get_repo.sh':
  source => '/home/vagrant/shared/complements/get_repo.sh',
  mode   => '0755',
}

# Every 15 minutes it will execute 
cron { 'runpuppet':
  command => '/home/vagrant/shared/complements/get_repo.sh',
  hour    => '*',
  minute  => '*/1',
}


