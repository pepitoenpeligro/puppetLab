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


## Create not sudo user with ssh key and connect with ssh
```bash
sudo puppet apply shared/user_group_create.pp
cat /etc/passwd | grep pepitoenpeligro
$(from host) ssh -i "~/.ssh/puppetLab" pepitoenpeligro@127.0.0.1 -p 2222
$(from host->guest) whoami
```

[![Watch the video](https://www.3pixls.com/blog/wp-content/uploads/2016/04/youtubethumb.png)](https://user-images.githubusercontent.com/14912971/107145201-5cc26800-6940-11eb-9fc5-4b07b1589ada.mov)






##### Useful commands
- A complete listo of package installed: `sudo puppet resource package`

- List of all installable packages: `sudo apt-cache search .`

- List of all facts (OS properties): `puppet facts`

- List all os properties: `facter os`
  - ```bash
      { architecture => "amd64",
      distro => {
        codename => "bionic",
        description => "Ubuntu 18.04.5 LTS",
        id => "Ubuntu",
        release => {
          full => "18.04",
          major => "18.04"
        }
      },
      family => "Debian",
      hardware => "x86_64",
      name => "Ubuntu",
      release => {
        full => "18.04",
        major => "18.04"
      },
      selinux => {
        enabled => false
      }
    }
    ```
  - Create a new facter `/opt/puppetlabs/facter/facts.d/myfactername.sh` && `chmod a+x /opt/puppetlabs/facter/facts.d/myfactername.sh` && now you can execute `sudo facter myfactername`