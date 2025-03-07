# Directories
alias ..="cd .."
alias here="xdg-open ."
alias cod="cd $HOME/code/"
alias osupdate="sudo apt-get update && sudo apt-get upgrade"

# Change PHP version
alias phpv="sudo update-alternatives --config php"

# Git aliases
alias gst="git status"
alias gb="git branch"
alias ckout="git checkout"
alias cm="git add . && git commit -m"
alias merge="git merge"
alias diff="git diff"
alias clone="git clone"
alias pull="git pull"
alias push="git push"
alias pushm="git push -u origin main"
alias pushd="git push -u origin dev"
alias reflog="git reflog"
alias grst="git restore ."
alias ght='echo "$GITHUB_TOKEN"'

# LEMP server
alias srv_up="sudo systemctl start php8.2-fpm && sudo systemctl start nginx && sudo systemctl start mysql && sudo systemctl start redis-server"
alias srv_down="sudo systemctl stop php8.2-fpm && sudo systemctl stop nginx && sudo systemctl stop mysql && sudo systemctl stop redis-server"
alias srv_reload="sudo systemctl reload nginx"
alias minio='sudo MINIO_ROOT_USER="$MINIO_USER" MINIO_ROOT_PASSWORD="$MINIO_PASSWORD" ~/minio server /mnt/data --console-address ":9001"'
alias mailpit='sudo /usr/local/bin/mailpit'

function lara_setup {
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
}

function lara_rm {
        sudo rm -rf /home/vojislav/code/$1.test;
        sudo rm -rf /etc/nginx/sites-enabled/$1.test;
        sudo rm -rf /etc/nginx/sites-available/$1.test;
}

alias hosts="sudo vim /etc/hosts"
alias lara_new="composer create-project laravel/laravel --prefer-dist"
alias perms="sudo chmod -R ugo+rw"
alias ci="composer install"

# Laravel aliases
alias art="php artisan"
alias migrate="php artisan migrate"
alias fresh="php artisan migrate:fresh"
alias seed="php artisan db:seed"
alias mfs="php artisan migrate:fresh --seed"
alias tinker="php artisan tinker"
alias qw="php artisan queue:work"
alias pstan="./vendor/bin/phpstan analyse"
alias coverage="XDEBUG_MODE=coverage php artisan test --coverage"
alias schedule="php artisan schedule:run"
alias pest="./vendor/bin/pest"
alias testf="php artisan test --filter="
alias paratest="php artisan test --parallel"
alias pint="./vendor/bin/pint"
alias prep="npm run build && ./vendor/bin/pint && php artisan test --parallel"

# NPM aliases
alias npmi="npm install"
alias npmd="npm run dev"
alias npmp="npm run prod"
alias npmw="npm run watch-poll"
alias npmb="npm run build"

# Websites aliases
alias ch="google-chrome </dev/null >/dev/null 2>&1 & disown"
alias yt="google-chrome https://youtube.com </dev/null >/dev/null 2>&1 & disown"
alias lr="google-chrome https://laravel.com/docs/11.x </dev/null >/dev/null 2>&1 & disown"

alias py="python3"
