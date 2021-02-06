# Puppet Lab


<p align="center">
  <img src="docs/imgs/logo.png" alt="logo"/>
</p>


### Demo 

##### Provisioning a linux machine with puppet and synced folder
``` bash
vagrant up
vagrant provision
vagrant ssh
```

##### Executing puppet manifests
```bash
sudo puppet apply /home/vagrant/shared/hi.pp
sudo puppet apply /home/vagrant/shared/install_cowsay.pp
sudo puppet apply /home/vagrant/shared/docker.pp
```

[![Watch the video](https://www.3pixls.com/blog/wp-content/uploads/2016/04/youtubethumb.png)](https://user-images.githubusercontent.com/14912971/107124605-28e63480-68a5-11eb-9d3b-2aea3a8f8f16.mp4)
