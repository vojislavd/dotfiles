# General
alias vim="nvim"
aliases() {
	nvim $HOME/dotfiles/.bash_aliases	
}
alias ..="cd .."
alias open="xdg-open ."
cod() { 
	cd $CODE 
}
dotfiles-install() {
	$HOME/dotfiles/install
}
dotfiles() { 
	cd $HOME/dotfiles 
}
keymaps() {
	nvim $HOME/dotfiles/nvim/lua/keymaps.lua
}
options() {
	nvim $HOME/dotfiles/nvim/lua/options.lua
}
helper() {
    nvim $HOME/helper.txt
}
todo() {
    nvim $HOME/todo.txt
}
alias perms="sudo chmod -R ugo+rw"
alias install-from-deb="sudo dpkg -i $1"

# OS update
alias osupdate="sudo apt-get update && sudo apt-get upgrade"

# Change PHP version
alias phpv="sudo update-alternatives --config php"

# Git aliases
alias gst="git status"
alias ckout="git checkout"
alias gb="git branch"
alias cm="git add . && git commit -m"
alias diff="git diff"
alias pull="git pull"
alias pushm="git push -u origin main"
alias pushd="git push -u origin dev"
alias reflog="git reflog"
alias grst="git restore ."
alias ght='echo "$GITHUB_TOKEN" | xclip -selection primary'

# Dev 
dev() {
	bash $SCRIPTS/tmux-dev.sh
}
alias srv-up="sudo systemctl start php8.4-fpm && sudo systemctl start nginx && sudo systemctl start mysql && sudo systemctl start redis-server"
alias srv-down="sudo systemctl stop php8.4-fpm && sudo systemctl stop nginx && sudo systemctl stop mysql && sudo systemctl stop redis-server"
alias srv-reload="sudo systemctl reload nginx"
alias hosts="sudo vim /etc/hosts"
alias minio='MINIO_ROOT_USER="$MINIO_USER" MINIO_ROOT_PASSWORD="$MINIO_PASSWORD" ~/minio server /mnt/data --console-address ":9001"'
alias mailpit='sudo /usr/local/bin/mailpit'

openurl() {
	bash $SCRIPTS/open-project-in-browser.sh
}

lara-setup() {
	bash $SCRIPTS/setup-laravel.sh "$@"
}
lara-rm() {
	bash $SCRIPTS/remove-laravel.sh "$@"
}
alias lara-new="composer create-project laravel/laravel --prefer-dist"
alias lara-docs="google-chrome https://laravel.com/docs/12.x </dev/null >/dev/null 2>&1 & disown"
alias art="php artisan"
alias migrate="php artisan migrate"
alias fresh="php artisan migrate:fresh"
alias mfs="php artisan migrate:fresh --seed"
alias tinker="php artisan tinker"
alias pstan="./vendor/bin/phpstan analyse"
alias paratest="php artisan test --parallel"
alias pint="./vendor/bin/pint"
alias prep="npm run build && ./vendor/bin/pint && php artisan test --parallel"
alias ci="composer install"

alias npmi="npm install"
alias npmd="npm run dev"
alias npmb="npm run build"

# Websites aliases
alias ch="google-chrome </dev/null >/dev/null 2>&1 & disown"
gh() {
	firefox https://github.com/$GITHUB_USERNAME </dev/null >/dev/null 2>&1 & disown
}
