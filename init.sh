#!/bin/bash
sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo apt install mc
#sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart
sudo /etc/init.d/mysql start
git config --global user.email "me.fargot@ya.ru"
git config --global user.name "meFargot"