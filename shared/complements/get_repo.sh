#!/bin/bash
DEST="/etc/puppetlabs/code/environments/production"
REPO="https://www.github.com/pepitoenpeligro/puppetLab"
ORIGIN=$PWD
PUPPET="/opt/puppetlabs/bin/puppet"

cd $DEST
echo "$DEST/puppetLab" 
if [  -d "$DEST/puppetLab"  ]; then
    echo "Repo exists"
    cd "puppetLab"
    sudo git pull
else
    echo "Repo does not exist... cloning..."
    sudo git clone $REPO
fi

cp /home/vagrant/shared/regularly_run_with_cron.pp $DEST/manifests
$PUPPET apply $DEST/manifests/
date >> /tmp/test_crontab_regularly_run_with_cron.txt

cd $ORIGIN


# Stablishing a cron job. He will automaticly work every minute
# sudo puppet apply /etc/puppetlabs/code/environments/production/manifests/regularly_run_with_cron.pp
# sudo rm -f /tmp/test_crontab_regularly_run_with_cron.txt
# sudo less /tmp/test_crontab_regularly_run_with_cron.txt

# sudo crontab -r
# sudo crontab -l