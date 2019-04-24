
PROMPT='
%{$fg[green]%}patrick %{$fg_bold[cyan]%}%~%{$FG[006]%}%B$(git_prompt_info) %{$reset_color%}
❯ '

# Customize git_prompt_info
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[006]%}:%{$FG[009]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$FG[011]%}(●)%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$FG[010]%}(●)%{$reset_color%}"

# Change ls color to bold cyan
export LS_COLORS=$LS_COLORS:'di=1;36:'
