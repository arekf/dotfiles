alias cp='cp -iv'
alias less='less -FSRXc'
alias ls='ls -FGlhp'
alias mkdir='mkdir -pv'
alias mv='mv -iv'
alias which='type -all'

alias ..='cd ../'
alias c='clear'
alias edit='subl'
alias mktar='tar -cvzf'
alias pubkey='pbcopy < ~/.ssh/id_rsa.pub'
alias size='du -sh *'

# development
alias invoker_start='invoker start -d ~/Sites/devbox/invoker.ini'
alias invoker_edit='edit ~/Sites/devbox/invoker.ini'

# oh-my-zsh specific
alias editaliases='subl ~/.aliases.sh'
alias editprofile='subl ~/.zshrc'
alias edittheme='subl ~/.oh-my-zsh/themes/arekf.zsh-theme'

# macOS specific
function lock_the_dock {
    defaults write com.apple.Dock position-immutable -bool yes;
    defaults write com.apple.Dock contents-immutable -bool yes;
    defaults write com.apple.Dock size-immutable -bool yes;
    killall Dock
}

function unlock_the_dock {
    defaults write com.apple.Dock position-immutable -bool no;
    defaults write com.apple.Dock contents-immutable -bool no;
    defaults write com.apple.Dock size-immutable -bool no;
    killall Dock
}

alias emptytrash='rm -rf ~/.Trash/*'
alias f='open -a Finder ./'
alias flushdnscache='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;'

# home stuff
alias rpi='ssh arek@rpi'

# work stuff
alias previewized='ssh root@previewized1.xh'
alias xh-fw='ssh -A xman@fw.xfive.co'
