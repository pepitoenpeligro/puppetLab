# Creating system group named devops
group { 'devops':
  ensure => present,
  gid => 3000
}

# cat /etc/passwd | grep pepitoenpeligro
user { 'pepitoenpeligro':
 ensure => present,
 uid => '3001',
 allowdupe => false,
 home => '/home/pepitoenpeligro',
 managehome => true,
 shell => '/bin/bash',
 # Generated with openssl passwd pepitoenpeligro
 password => 'ISwiQIZ9H5gbs',
 groups => ['devops']
}

# cat /etc/passwd | grep other
user { 'other':
 ensure => present,
 uid => '3002',
 allowdupe => false,
 home => '/home/other',
 managehome => true,
 shell => '/bin/bash',
 # Generated with openssl passwd pepitoenpeligro
 password => 'vqEGHV9McDtbI',
 groups => ['devops']
}

# SSH created only for this execise
# chmod 400 ~/.ssh/puppetLab.pub
# ssh -i "~/.ssh/puppetLab" pepitoenpeligro@127.0.0.1 -p 2222
ssh_authorized_key { 'create-key-for-pepitoenpeligro':
  user => 'pepitoenpeligro',
  type => 'rsa',
  key => 'AAAAB3NzaC1yc2EAAAADAQABAAABgQC8SqLPU9ihWtTJ0QfsXbVLdSctNBDjcX0OXwJ5K/UPrDZ3EHz6IQbiOH6OKKGfL3sDvpW1SX0LCkzmC5yZuNnbaznCaUgKj9arnc+Wm6i8Hzn8AONgSGn7nyVjqTeyA54eOgZNgdvqG8scZLWJ0YGA3kDBhm0oVTwzIpFINDNrY/KKd1oiOATJX1JZNanBoXFgi2xoUexWexD/3c+1l0V8fla3zDCHe63Cxxp/ryHas4WLccXVzKlpPNF/52fVMQcrsftjSnpzUagBjgEv4R2iix1AFFL1G3tnaUOfNU5uCclufaEYKeWAVZ8PwSgufV3t2yw91FcTzFhrLE0iUf57CqThWBoNUyS1yyMz/GFK4KE3Hpu5E6rfkxbxim3MiRl1f8NeTPvLKyturl27IEfe1fCGW1Ovz8kbIOi477JZbokuS7BFPeDXm4KKYvH/qYF9xv+YanQJxaFRJWrevgAvJmADoozcNCnD+y4C/LIgEH1poYb2JDMos56Ke0z3e6U=',
}


ssh_authorized_key { 'create-key-for-other':
  user => 'other',
  type => 'rsa',
  key => 'AAAAB3NzaC1yc2EAAAADAQABAAABgQCnJPidMt8udyiDMN6A95mdUNk8M7o6ce7GdlSZofzV4vwT4cOKObMdzwhwOaQ822aMUm3FoEuuDluf4pMBNtLqD1seiKy1aMdfrzz/+qmO85YkXcVeCDnQMRPvJF/CQEBKsnK9S9gYXDh0cAWxmMgX5kmQhd0iTe6uUSY5y+F2WTGoOpdO1A+tmeP6dG9WTWsACJidsU/QdCS1DUWlE0jxCqhEo21ayvxVPf9rOI7pHYUN0v1GBkXWgJAd4ETRwipB6c1yMKS8JtaYp5zbX/RO/UG0PqaktArvhnim0R6k+hb4BVvTwPGBI0OH4kDOMtY6qiP3ftmrA13JydhNOjaZHMQs94ZFrJN2fxOHOFfEQrWXq/GzbA3VFyvtCkUS3b5vE7VStOKEZvF5pbREMiSp0QL2aYTvzQhO1iYxmBS2DP+PlWQUbF57XOvgeY4HfUxhoSem/KhT5DdEYqJVB909GGSp86KlND3bmcebT2cBmc8Ycx79aOlTDCMtOQSObhE=',
}


# user { 'pepitoenpeligro':
#   ensure => absent,
# }
