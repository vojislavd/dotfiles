# Directories
alias ..="cd .."
alias here="xdg-open ."
alias cod="cd $HOME/code/"
alias dotfiles="cd $HOME/code/dotfiles"

# OS update
alias osupdate="sudo apt-get update && sudo apt-get upgrade"

# Change PHP version
alias phpv="sudo update-alternatives --config php"

# Git aliases
alias gst="git status"
alias ckout="git checkout"
alias cm="git add . && git commit -m"
alias diff="git diff"
alias pull="git pull"
alias pushm="git push -u origin main"
alias pushd="git push -u origin dev"
alias reflog="git reflog"
alias grst="git restore ."
alias ght='echo "$GITHUB_TOKEN" | xclip -selection primary'

# Setup and open dev env
alias dev="bash ~/scripts/tmux-dev.sh"

# Server
alias srvs="sudo systemctl start php8.4-fpm && sudo systemctl start nginx && sudo systemctl start mysql && sudo systemctl start redis-server"
alias srvd="sudo systemctl stop php8.4-fpm && sudo systemctl stop nginx && sudo systemctl stop mysql && sudo systemctl stop redis-server"
alias srvr="sudo systemctl reload nginx"

# Services
alias minio='MINIO_ROOT_USER="$MINIO_USER" MINIO_ROOT_PASSWORD="$MINIO_PASSWORD" ~/minio server /mnt/data --console-address ":9001"'
alias mailpit='sudo /usr/local/bin/mailpit'

# Laravel aliases
alias larasetup="bash ~/scripts/setup-laravel.sh"
alias lararm="bash ~/scripts/remove-laravel.sh"
alias laranew="composer create-project laravel/laravel --prefer-dist"
alias laradocs="google-chrome https://laravel.com/docs/12.x </dev/null >/dev/null 2>&1 & disown"
alias art="php artisan"
alias migrate="php artisan migrate"
alias fresh="php artisan migrate:fresh"
alias mfs="php artisan migrate:fresh --seed"
alias tinker="php artisan tinker"
alias pstan="./vendor/bin/phpstan analyse"
alias paratest="php artisan test --parallel"
alias pint="./vendor/bin/pint"
alias prep="npm run build && ./vendor/bin/pint && php artisan test --parallel"

alias hosts="sudo vim /etc/hosts"
alias perms="sudo chmod -R ugo+rw"
alias ci="composer install"

# NPM aliases
alias npmi="npm install"
alias npmd="npm run dev"
alias npmb="npm run build"

# Websites aliases
alias ch="google-chrome </dev/null >/dev/null 2>&1 & disown"
