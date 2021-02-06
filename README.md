# Puppet Lab


<p align="center">
  <img src="docs/imgs/logo.png" alt="logo"/>
</p>


## Provisioning a Puppet Machine, Sync Folders and Execute basic puppet's manifests

#### Provisioning a linux machine with puppet and synced folder
``` bash
vagrant up
vagrant provision
vagrant ssh
```

#### Executing puppet manifests
```bash
sudo puppet apply /home/vagrant/shared/hi.pp
sudo puppet apply /home/vagrant/shared/install_cowsay.pp
sudo puppet apply /home/vagrant/shared/docker.pp
```

Click next figure to watch demo:

[![Watch the video](https://www.3pixls.com/blog/wp-content/uploads/2016/04/youtubethumb.png)](https://user-images.githubusercontent.com/14912971/107124605-28e63480-68a5-11eb-9d3b-2aea3a8f8f16.mp4)


</br>
</br>
</br>

## Getting Repo and apllying changes automaticly 

```bash
vagrant ssh
# Before, cp /home/vagrant/shared/complements/regularly_run_with_cron.pp /etc/puppetlabs/code/environments/production/manifests/
sudo puppet apply /etc/puppetlabs/code/environments/production/manifests/regularly_run_with_cron.pp
sudo less /tmp/test_crontab_regularly_run_with_cron.txt
sudo crontab -l
```

[![Watch the video](https://www.3pixls.com/blog/wp-content/uploads/2016/04/youtubethumb.png)](https://user-images.githubusercontent.com/14912971/107126826-787f2d00-68b2-11eb-814d-c1ec7f882075.mp4)

</br>
</br>
</br>

## Install Mysql. Stop Service and Rerun mysql
```bash
sudo puppet apply /home/vagrant/shared/install_mysql.pp
sudo puppet apply /home/vagrant/shared/service_mysql_start.pp
sudo puppet apply /home/vagrant/shared/service_mysql_stop.pp
```

[![Watch the video](https://www.3pixls.com/blog/wp-content/uploads/2016/04/youtubethumb.png)](https://user-images.githubusercontent.com/14912971/107131223-d02e9000-68d4-11eb-9c6a-78e425ae587f.mp4)



##### Useful commands
A complete listo of package installed: `sudo puppet resource package`
List of all installable packages: `sudo apt-cache search .`
