# Aliases
alias ..='cd ..' 
alias ...='cd ../..' 
alias dl='cd ~/Downloads'
alias install='sudo apt install'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias uplist='apt list --upgradable'
alias remove='sudo apt autoremove'
alias l='eza -ll --color=always --group-directories-first'
alias ls='eza -al --header --icons --group-directories-first'
alias df='df -h'
alias free='free -h'
alias myip="ip -f inet address | grep inet | grep -v 'lo$' | cut -d ' ' -f 6,13 && curl ifconfig.me && echo ' external ip'"
alias x="exit"
# Git aliases
alias gp="git push -u origin main"
alias gsave="git commit -m 'save'"
alias gs="git status"
alias gc="git clone"
alias tr="tree"
# Flatpak
alias fp="flatpak"
alias fpl="flatpak list"
alias fps="flatpak search"
alias fpi="flatpak install"
alias fpr="flatpak uninstall"
alias fpu="flatpak update"
