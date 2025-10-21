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

