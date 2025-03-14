#!/bin/bash

sudo mkdir /home/vojislav/code/$1.test;
sudo chmod -R ugo+rw /home/vojislav/code/$1.test;

sudo echo "server {
	listen 80;
	listen [::]:80;
	listen 443 ssl;
	server_name $1.test www.$1.test;
	root /home/vojislav/code/$1.test/public;

	add_header X-Frame-Options \"SAMEORIGIN\";
	add_header X-Content-Type-Options \"nosniff\";
	
	ssl_certificate /etc/ssl/self-signed-cert/self-signed-cert.crt;
	ssl_certificate_key /etc/ssl/self-signed-cert/self-signed-cert.key;
	
	index index.php;

	charset utf-8;
	
	location / {
		try_files \$uri \$uri/ /index.php?\$query_string;
	}
	
	location = /favicon.ico { access_log off; log_not_found off; }
	location = /robots.txt  { access_log off; log_not_found off; }
	
	error_page 404 /index.php;
	
	location ~ \.php$ {
		fastcgi_pass unix:/var/run/php/php8.4-fpm.sock;
		fastcgi_param SCRIPT_FILENAME \$realpath_root\$fastcgi_script_name;
		include fastcgi_params;
	}
	
	location ~ /\.(?!well-known).* {
		deny all;
	}
}" > /home/vojislav/$1.test;
	sudo mv /home/vojislav/$1.test /etc/nginx/sites-available/;
	sudo ln -s /etc/nginx/sites-available/$1.test /etc/nginx/sites-enabled/;

