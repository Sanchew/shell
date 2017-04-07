source ~/.bashrc
source ~/.profile

alias exi="defaults write com.apple.dt.XCode IDEIndexDisable 0"
alias dxi="defaults write com.apple.dt.XCode IDEIndexDisable 1"
alias sns="sudo sshpass -p 'root' ssh -p 32769 -fN -L53:127.0.0.1:53 root@192.168.2.247"
alias sss="sshpass -p '*******' ssh root@ip.com"
alias ssm="sshpass -p 'password' ssh -fN -L3306:ip:3306 user@ip.com"
alias ssn="sshpass -p 'root' ssh -p 32770 root@192.168.2.247"
alias tree="find . -type d | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias treeall="find . | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias ll='ls -al'

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

