alias fgrep='fgrep --colour=auto'
alias grep='grep --colour=auto'
alias l='ls -Farlt'
alias la='ls -A'
alias ll='ls -lF'
alias ls='ls -G'
alias myweather='curl -4 http://wttr.in/'
alias valencia='curl -4 http://wttr.in/Valencia,Spain'
alias temp='sysctl -a |grep tempe'
alias ssh='ssh -o "UserKnownHostsFile /dev/null"'
socks(){
 ssh -N -o "StrictHostKeyChecking no" -D "*:1080" $1 &
}
