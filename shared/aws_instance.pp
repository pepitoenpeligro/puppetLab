# /opt/puppetlabs/puppet/bin/gem install aws-sdk-core retries
$ami='ami-0093cac2bf998a669' 
$region='eu-central-1'

ec2_vpc { 'pepitovpc':
  ensure     => present,
  region     => $region,
  cidr_block => '10.0.0.0/24',
  tags       => {
    tag_name => 'value',
  },
}


ec2_vpc_subnet { 'pepitosubnet':
  name                    => 'pepitosubnet',
  ensure                  => present,
  region                  => $region,
  cidr_block              => '10.0.0.0/24',
  availability_zone       => 'eu-central-1a',
  map_public_ip_on_launch => true,
  vpc                     => 'pepitovpc',
  tags                    => {
    tag_name => 'value',
  },
}

ec2_securitygroup { 'pepitogroup':
  name        => 'pepitogroup',
  ensure      =>  present,
  description => 'Pepitoenpeligro security group',
  region      => $region,
  vpc         => 'pepitovpc',
  ingress     => [
    {
      description => 'For ssh access',
      protocol    => 'tcp',
      port        => 22,
      cidr        => '0.0.0.0/0',
    },
    {
      description => 'For ping',
      protocol    => 'icmp',
      cidr        => '0.0.0.0/0',
    },
  ],
}

ec2_instance { 'puppet-ec2-instance':
  ensure                      => running,
  region                      => $region,
  availability_zone          => 'eu-central-1a',
  subnet                      => 'pepitosubnet',
  security_groups             => ['pepitogroup'],
  image_id                    => $ami,
  instance_type               => 't2.micro',
  associate_public_ip_address => true,
  key_name                    => 'puppet',
  tags              => {
    tag_name => 'value',
  }
}
