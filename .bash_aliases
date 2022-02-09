# Directories
alias ..="cd .."
alias here="xdg-open ."
alias dotfiles="cd $HOME/code/dotfiles"
alias cod="cd $HOME/code"
alias lara="cd $HOME/code/laravel"
alias packages="cd $HOME/code/packages"

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

# LEMP
alias lemp_start="sudo systemctl start nginx && sudo systemctl start mysql"
alias lemp_stop="sudo systemctl stop nginx && sudo systemctl stop mysql"
alias mailhog="sudo ~/go/bin/MailHog"
alias minio='sudo MINIO_ROOT_USER="$MINIO_USER" MINIO_ROOT_PASSWORD="$MINIO_PASSWORD" ~/minio server /mnt/data --console-address ":9001"'

# NPM aliases
alias npmi="npm install"
alias npmd="npm run dev"
alias npmw="npm run watch-poll"
alias npmb="npm run build"

# Laravel aliases
function tinker {
	if [ -z "$1" ]
		then
			./vendor/bin/sail artisan tinker
		else
			./vendor/bin/sail artisan tinker --execute="dd($1);"
	fi
			
}
alias migrate="./vendor/bin/sail artisan migrate"
alias fresh="./vendor/bin/sail artisan migrate:fresh"
alias seed="./vendor/bin/sail artisan db:seed"
alias pstan="./vendor/bin/phpstan analyse"

# Alias for running Laravel Sail commands
alias sail="./vendor/bin/sail"

# Create New Laravel Sail App
function sail_new {
	curl -s https://laravel.build/$1 | bash;
}

# Run artisan through Sail
alias art="./vendor/bin/sail artisan"

# Run composer install with Laravel Sail
function sail_composer_install {
	docker run --rm \
   		-u "$(id -u):$(id -g)" \
   		-v $(pwd):/var/www/html \
   		-w /var/www/html \
   		laravelsail/php81-composer:latest \
    		composer install --ignore-platform-reqs
}

# Require Sail existing project
function sail_require {
	docker run --rm \
        -u "$(id -u):$(id -g)" \
        -v $(pwd):/var/www/html \
        -w /var/www/html \
        laravelsail/php81-composer:latest composer require laravel/sail --dev;
}

# Install Sail to existing project
function sail_install {
	docker run --rm \
        -u "$(id -u):$(id -g)" \
        -v $(pwd):/var/www/html \
        -w /var/www/html \
        laravelsail/php81-composer:latest php artisan sail:install;
}

# Run PHP 8.1 with Laravel Sail
function sail_php {
	docker run --rm \
	-u "$(id -u):$(id -g)" \
       	-v $(pwd):/var/www/html \
       	-w /var/www/html \
       	laravelsail/php81-composer:latest $1 $2 $3 $4;
}

# Run PHP 8.0 with Laravel Sail
function sail_php80 {
	docker run --rm \
	-u "$(id -u):$(id -g)" \
       	-v $(pwd):/var/www/html \
       	-w /var/www/html \
       	laravelsail/php80-composer:latest $1 $2 $3 $4;
}

# Run PHP 7.4 with Laravel Sail
function sail_php74 {
        docker run --rm \
        -u "$(id -u):$(id -g)" \
        -v $(pwd):/var/www/html \
        -w /var/www/html \
        laravelsail/php74-composer:latest $1 $2 $3 $4;
}

# Sail NPM aliases
alias sail_npmi="sail npm install"
alias sail_npmd="sail npm run dev"
alias sail_npmw="sail npm run watch-poll"

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

# Run PHP docker container
alias dr="docker run --rm -it -v $(pwd):/app -w /app/code $(basename $(pwd) | tr [:upper:] [:lower:])_php"

# Remove PHP docker files
function docker_php_rm {
	echo "Current Docker containers:";
	docker container ls -a;
	echo
	echo "Current Docker volumes:";
	docker volume ls;
	echo
	echo "Current Docker images:";
	docker image ls
	echo
	echo "Current Docker networks:";
	docker network ls
	echo "----------------------------------------------------------------";
	echo
	docker container rm -fv $1_mysql_1
	docker container rm -fv $1_nginx_1
	docker container rm -fv $1_php_1

	docker volume rm -f $1_mysqldata

	docker image rm -f $1_php

	docker network rm $1_default
	echo "Docker Containers, Volumes, Images and Networks Removed";
	echo "----------------------------------------------------------------";
	echo
	echo "Current Docker containers:";
        docker container ls -a;
        echo
        echo "Current Docker volumes:";
        docker volume ls;
        echo
        echo "Current Docker images:";
        docker image ls
		echo
        echo "Current Docker networks:";
        docker network ls
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
