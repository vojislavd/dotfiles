# Directories
alias ..="cd .."
alias here="xdg-open ."
alias dotfiles="cd $HOME/code/dotfiles"
alias cod="cd $HOME/code"
alias lara="cd $HOME/code/laravel"

# Git aliases
alias gst="git status"
alias gb="git branch"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias clone="git clone"
alias pull="git pull"
alias push="git push"
alias reflog="git reflog"

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
   		laravelsail/php80-composer:latest \
    		composer install --ignore-platform-reqs
}

# Require Sail existing project
function sail_require {
	docker run --rm \
        -u "$(id -u):$(id -g)" \
        -v $(pwd):/var/www/html \
        -w /var/www/html \
        laravelsail/php80-composer:latest composer require laravel/sail --dev;
}

# Install Sail to existing project
function sail_install {
	docker run --rm \
        -u "$(id -u):$(id -g)" \
        -v $(pwd):/var/www/html \
        -w /var/www/html \
        laravelsail/php80-composer:latest php artisan sail:install;
}

# Run PHP 8.0 with Laravel Sail
function sail_php {
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


# Remove Docker container and volumes for project
function docker_rm {
	echo "Current Docker containers:";
	docker container ls -a;
	echo
	echo "Current Docker volumes:";
	docker volume ls;
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
	echo "Docker Containers and Volumes Removed";
	echo "----------------------------------------------------------------";
	echo
	echo "Docker containers:";
        docker container ls -a;
        echo
        echo "Docker volumes:";
        docker volume ls;
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
	echo "----------------------------------------------------------------";
	echo
	docker container rm -fv $1_mysql_1
	docker container rm -fv $1_nginx_1
	docker container rm -fv $1_php_1

	docker volume rm -f $1_mysqldata

	docker image rm -f $1_php
	echo "Docker Containers, Volumes and Images Removed";
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
