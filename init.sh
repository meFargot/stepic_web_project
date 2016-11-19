#!/bin/bash
sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo apt install mc
sudo ln -s /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo ln -s /home/box/web/etc/ask.py /etc/gunicorn.d/ask.py
sudo /etc/init.d/gunicorn restart
sudo /etc/init.d/mysql start
git config --global user.email "me.fargot@ya.ru"
git config --global user.name "meFargot"
alias mc="sudo mc"