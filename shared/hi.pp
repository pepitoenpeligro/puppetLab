
# sudo puppet apply --noop /home/vagrant/shared/hi.pp -> will tell you what should expect to do
# sudo puppet apply /home/vagrant/shared/hi.pp -> will work!


# Executing a simple echo in shell
exec {
    "Execute echo hi":
    command => 'echo hi pepe > /home/vagrant/shared/hi_out.txt',
    provider => shell
}

file{
    '/home/vagrant/shared/hi_out.txt':
    ensure => file,
    content => "hi pepe, I see you different..."
}
