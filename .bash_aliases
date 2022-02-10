# Directories
alias ..="cd .."
alias here="xdg-open ."
alias cod="cd /var/www/"

# Change PHP version
alias phpv="sudo update-alternatives --config php"

# Git aliases
alias gst="git status"
alias gb="git branch"
alias ckout="git checkout"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias clone="git clone"
alias pull="git pull"
alias push="git push"
alias reflog="git reflog"
alias ght='echo "$GITHUB_TOKEN"'

# LEMP server
alias srv_up="sudo systemctl start nginx && sudo systemctl start mysql"
alias srv_down="sudo systemctl stop nginx && sudo systemctl stop mysql"
alias srv_reload="sudo systemctl reload nginx"
alias mailhog="sudo ~/go/bin/MailHog"
alias minio='sudo MINIO_ROOT_USER="$MINIO_USER" MINIO_ROOT_PASSWORD="$MINIO_PASSWORD" ~/minio server /mnt/data --console-address ":9001"'

function lara_setup {
	sudo mkdir /var/www/$1.test;
	sudo chmod -R ugo+rw /var/www/$1.test;
	sudo echo "server {
	listen 80;
	listen [::]:80;
	server_name $1.test www.$1.test;
	root /var/www/$1.test/public;

	add_header X-Frame-Options \"SAMEORIGIN\";
	add_header X-Content-Type-Options \"nosniff\";

	index index.php;

	charset utf-8;

	location / {
		try_files \$uri \$uri/ /index.php?\$query_string;
	}

	location = /favicon.ico { access_log off; log_not_found off; }
	location = /robots.txt  { access_log off; log_not_found off; }

	error_page 404 /index.php;

	location ~ \.php$ {
		fastcgi_pass unix:/var/run/php/php8.1-fpm.sock;
		fastcgi_param SCRIPT_FILENAME \$realpath_root\$fastcgi_script_name;
		include fastcgi_params;
	}

	location ~ /\.(?!well-known).* {
		deny all;
	}
}" > $1.test;
	sudo mv $1.test /etc/nginx/sites-available/;
	sudo ln -s /etc/nginx/sites-available/$1.test /etc/nginx/sites-enabled/;
}

alias hosts="sudo vim /etc/hosts"
alias lara_new="composer create-project laravel/laravel --prefer-dist"
alias perms="sudo chmod -R ugo+rw"

function lara_rm {
	sudo rm -rf /var/www/$1.test;
	sudo rm -rf /etc/nginx/sites-enabled/$1.test;
	sudo rm -rf /etc/nginx/sites-available/$1.test;
}

# Laravel aliases
alias art="php artisan"
alias migrate="php artisan migrate"
alias fresh="php artisan migrate:fresh"
alias seed="php artisan db:seed"
alias pstan="./vendor/bin/phpstan analyse"

# NPM aliases
alias npmi="npm install"
alias npmd="npm run dev"
alias npmw="npm run watch-poll"
alias npmb="npm run build"

# Alias for running Laravel Sail commands
alias sail="./vendor/bin/sail"

# Create New Laravel Sail App
function sail_new {
	curl -s https://laravel.build/$1 | bash;
}

# Remove Docker container and volumes for project
function docker_rm {
	echo "Current Docker containers:";
	docker container ls -a;
	echo
	echo "Current Docker volumes:";
	docker volume ls;
	echo
	echo "Current Docker networks:";
	docker network ls;
	echo "----------------------------------------------------------------";
	echo
	docker container rm -fv $1_laravel.test_1;
	docker container rm -fv $1_selenium_1;
	docker container rm -fv $1_redis_1;
	docker container rm -fv $1_meilisearch_1;
	docker container rm -fv $1_mysql_1;
	docker container rm -fv $1_mailhog_1;
	docker container rm -fv $1_minio_1;

	docker volume rm -f $1_sailmeilisearch;
	docker volume rm -f $1_sailmysql;
	docker volume rm -f $1_sailredis;
	docker volume rm -f $1_sailminio;	

	docker network rm $1_sail
	echo "Docker Containers, Volumes and Networks Removed";
	echo "----------------------------------------------------------------";
	echo
	echo "Docker containers:";
        docker container ls -a;
        echo
        echo "Docker volumes:";
        docker volume ls;
		echo
		echo "Docker networks:";
		docker network ls;
}

# Websites aliases
alias ch="google-chrome </dev/null >/dev/null 2>&1 & disown"
alias yt="google-chrome https://youtube.com </dev/null >/dev/null 2>&1 & disown"
alias tw="google-chrome https://twitter.com/home </dev/null >/dev/null 2>&1 & disown"
alias lr="google-chrome https://laravel.com/docs/8.x </dev/null >/dev/null 2>&1 & disown"
alias gm="firefox https://mail.google.com/ </dev/null >/dev/null 2>&1 & disown"
alias li="firefox https://www.linkedin.com/feed/ </dev/null >/dev/null 2>&1 & disown"
alias gh="firefox https://github.com/VojislavD </dev/null >/dev/null 2>&1 & disown"
alias uw="firefox https://www.upwork.com/ab/find-work/ </dev/null >/dev/null 2>&1 & disown"
