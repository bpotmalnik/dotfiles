alias br="source $HOME/.zshrc"
alias c="clear"

alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"

# Dotfiles
alias dot="cd $DOTFILES && vim . && cd -"
alias dotfiles="cd $DOTFILES"

# VIM
alias vim="nvim"
alias vi="nvim"

# Laravel && PHP
alias a="php artisan"
alias php="valet php"
alias composer="valet composer"
alias which-php="valet which-php"
alias sail="[ -f sail ] && sh sail || sh vendor/bin/sail"
alias pint="./vendor/bin/pint -v"

# Flutter
alias f="fvm flutter"
alias frunner="f pub run build_runner build"
alias d="fvm dart"
alias drunner="d pub run build_runner build"

# SSH
alias addssh="ssh-add --apple-use-keychain ~/.ssh/id_ed25519"
alias copyssh="pbcopy < ~/.ssh/id_ed25519.pub"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

alias tm="~/.dotfiles/tmux-sessionizer"

alias nuke="git clean -df && git reset --hard"
