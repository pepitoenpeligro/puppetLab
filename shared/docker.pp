include 'docker'

docker::run { 'hello':
  image   => 'alpine:3.13',
  command => '/bin/sh -c "while true; do echo Hi pepe; sleep 1; done"',
}
