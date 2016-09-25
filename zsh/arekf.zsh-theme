function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

PROMPT='
%{$fg_bold[green]%}$(collapse_pwd)%{$reset_color%} as %{$fg[magenta]%}%n%{$reset_color%} at %{$fg[cyan]%}%m%{$reset_color%}$(git_prompt_info) using %{$fg[blue]%}$(rvm-prompt i v p g)%{$reset_color%}
%{$fg[yellow]%}>%{$reset_color%} '

RPROMPT='%{$fg[yellow]%}[$(date +"%H:%M:%S")]%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
