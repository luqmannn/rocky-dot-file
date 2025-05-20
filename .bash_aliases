# Check system update
alias checkupd='dnf check-update'
alias checkinfo='dnf list-updateinfo'
alias checksecinfo='dnf info-security'

# Check system repo, ports & etc
alias repolist='dnf repolist'
alias portopen='sudo netstat -tulpn'

# End with RC
alias rcedit='vim ~/.bashrc'
alias rcload='source ~/.bashrc'
alias rcalias='vim ~/.bash_aliases'
alias rcvim='vim ~/.vimrc'

# DNF package
alias updatepkg='sudo dnf update'
alias searchpkg='dnf search'
alias infopkg='dnf info'
alias install='sudo dnf install'
alias removepkg='sudo dnf remove'
alias howmanypkg='dnf list --installed'

# Tools
alias spdcli='speedtest-cli'

# Text editor
alias vi='vim'
