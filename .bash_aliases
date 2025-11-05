# General
alias vim="nvim"
aliases() {
  nvim $DOTFILES/.bash_aliases
}
alias ..="cd .."
cod() {
  cd $CODE
}
dotfiles-install() {
  $DOTFILES/install
}
dotfiles() {
  cd $DOTFILES
}
docs() {
    cd $DOCS
}
alias perms="sudo chmod -R ugo+rw"

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
alias ght='printf "%s" "$GITHUB_TOKEN" | wl-copy'

# Dev
alias srv-reload="sudo systemctl reload nginx"
alias hosts="sudo nvim /etc/hosts"
lara-setup() {
  bash $SCRIPTS/setup-laravel.sh "$@"
}
lara-rm() {
  bash $SCRIPTS/remove-laravel.sh "$@"
}
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
minio-up() {
  minio server $MINIO_PATH
}

# Npm
alias npmi="npm install"
alias npmd="npm run dev"
alias npmb="npm run build"

alias todo="vim $HOME/todo.txt"
