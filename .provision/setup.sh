#!/usr/bin/env bash

sudo apt-get -y install nginx
sudo service nginx start

sudo cp /vagrant/.provision/nginx/nginx.conf /etc/nginx/sites-available/site.conf
sudo chmod 644 /etc/nginx/sites-available/site.conf
sudo ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/site.conf
sudo service nginx restart

sudo rm -Rf /var/www

ln -s /vagrant /var/www