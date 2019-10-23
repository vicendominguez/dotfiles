alias fgrep='fgrep --colour=auto'
alias grep='grep --colour=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -lF'
alias ls='ls -G'
alias myweather='curl -4 http://wttr.in/'
alias valencia='curl -4 http://wttr.in/Valencia,Spain'
alias rg='rg --no-ignore --hidden'
alias oktap='aws-okta exec old_aws_production_super -- '
alias oktas='aws-okta exec old_aws_staging_super -- '
alias mothers="aws-okta exec old_aws_staging_super -- aws ssm start-session --target i-7c4db1f8"
alias motherp="aws-okta exec old_aws_production_super -- aws ssm start-session --target i-0855982a811570154"
alias ssmsession="aws ssm start-session --target "
alias jsonlintall='find . -name "*.json" -exec jsonlint -c -q {} \;'
alias instances='awless list instances'
