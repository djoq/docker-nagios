#! /bin/bash

echo "Setting up plugin executor..."

cd /usr/local/nagios/libexec/
chown nagios:nagios check_ncpa.py
chmod 775 check_ncpa.py
cd

/usr/local/nagios/libexec/check_ncpa.py -V
echo "NCPA plugin installed at /usr/local/nagios/libexec"

echo "Installing nrdp..."
chown -R nagios:nagios /usr/local/nrdp 

sed -i '/mysecrettoken/c\    "mytoken",' /usr/local/nrdp/server/config.inc.php

echo "Adding nrdp to apache2 config"
cp /usr/local/nrdp/nrdp.conf /etc/apache2/sites-enabled/

echo "Restarting apache server"
echo "export APACHE_RUN_USER=nagios" >> /etc/apache2/envvars
echo "export APACHE_RUN_GROUP=nagios" >> /etc/apache2/envvars

/usr/local/bin/start_nagios