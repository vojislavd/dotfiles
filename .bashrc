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

# Run php command with Laravel Sail
function sail_php {
        docker run --rm \
        -u "$(id -u):$(id -g)" \
        -v $(pwd):/var/www/html \
        -w /var/www/html \
        laravelsail/php80-composer:latest $1 $2 $3 $4;
}

# Run PHP docker container
alias dr="docker run --rm -it -v $(pwd):/app -w /app/code $(basename $(pwd) | tr [:upper:] [:lower:])_php"

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

