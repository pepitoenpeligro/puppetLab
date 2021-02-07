#!/bin/bash
source /etc/lsb-release
echo "We are in ${DISTRIB_CODENAME}"

wget https://apt.puppetlabs.com/puppet-release-${DISTRIB_CODENAME}.deb
dpkg -i puppet-release-${DISTRIB_CODENAME}.deb

apt-get update
apt-get -y install git puppet-agent

echo 'Defaults        secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/opt/puppetlabs/bin:/opt/puppetlabs/puppet/bin"' >/etc/sudoers.d/puppet

# Install Hiera
echo "Installing Hiera"
/opt/puppetlabs/puppet/bin/gem install hiera-eyaml-gpg

#Install R10k module
echo "Installing R10k"
/opt/puppetlabs/puppet/bin/gem install r10k


# Library for managing lines in a file.
# https://puppet.com/blog/module-of-week-puppetlabs-stdlib-puppet-labs-standard-library/
echo "Installing Puppet module stdlib"
/opt/puppetlabs/puppet/bin/gem install stdlib

# Installing docker module from puppetlabs
# https://forge.puppet.com/modules/puppetlabs/docker
echo "Installing Puppet module docker"
puppet module install puppetlabs-docker


