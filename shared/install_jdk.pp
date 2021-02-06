# openjdk-8-jdk

package { 'InstallingJDK8': 
  name => 'openjdk-8-jdk',
  ensure => installed,
  provider => 'apt'
}


# package { 'UninstallJDK8':
#     name => 'openjdk-8-jdk',
#     ensure => purged,
#     provider => 'apt'
# }

# provider {rpm, yum, dpkg, pip3, nim, gem}
