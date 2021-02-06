#!/bin/bash
source /etc/lsb-release
echo "We are in ${DISTRIB_CODENAME}"

wget https://apt.puppetlabs.com/puppet-release-${DISTRIB_CODENAME}.deb
dpkg -i puppet-release-${DISTRIB_CODENAME}.deb

apt-get update
apt-get -y install git puppet-agent

echo 'Defaults        secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/opt/puppetlabs/bin:/opt/puppetlabs/puppet/bin"' >/etc/sudoers.d/puppet

# Library for managing lines in a file.
# https://puppet.com/blog/module-of-week-puppetlabs-stdlib-puppet-labs-standard-library/
/opt/puppetlabs/puppet/bin/gem install stdlib

# Installing docker module from puppetlabs
# https://forge.puppet.com/modules/puppetlabs/docker
puppet module install puppetlabs-docker




