export CLICOLOR=1
export PS1='\e[32mpatrick \e[33m\w\e[35m $(git-ps1 "[%s] ")\e[0m\$ '

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
source ~/.bashrc
source $(brew --prefix autoenv)/activate.sh

export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8
