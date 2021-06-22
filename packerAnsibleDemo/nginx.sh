#!/bin/bash

sudo apt update

sudo apt install nginx -y

sudo ufw allow 'Nginx HTTP'

sudo touch /var/www/html/index.html

sudo chmod 777 /var/www/html/index.html

sudo echo "<h1>Croeso!</h1>" >> /var/www/html/index.html


