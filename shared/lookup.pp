# sudo cp shared/hiera/common.yaml /etc/puppetlabs/code/environments/production/data/
notice("Hi Pepe, we are looking up for Hiera data")

$auto_discoverable = lookup('is_auto_discovered', Boolean)
notice("¿Is autodiscoverable?:  ${auto_discoverable}")

$ips = lookup('ips', Array)
notice("My ips: ${ips}")


$path_config = lookup('install_path', String)
notice("We will install in path:  ${path_config}")

$path_env = lookup('path', String)
notice("Actual PATH is: ${path_env}")
