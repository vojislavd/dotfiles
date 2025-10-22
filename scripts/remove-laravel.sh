#!/bin/bash

sudo rm -rf $CODE/$1.test;
sudo rm -rf /etc/nginx/sites-available/$1.test;
sudo rm -rf /etc/nginx/sites-enabled/$1.test;

