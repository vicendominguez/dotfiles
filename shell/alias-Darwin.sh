alias fgrep='fgrep --colour=auto'
alias grep='grep --colour=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -lF'
alias ls='ls -G'
alias myweather='curl -4 http://wttr.in/'
alias valencia='curl -4 http://wttr.in/Valencia,Spain'
alias rg='rg --no-ignore --hidden'
alias awss="aws --profile sso_platform_sta_admin"
alias awsp='aws --profile sso_platform_pro_admin'
alias ssmsession="aws ssm start-session --target "
alias jsonlintall='find . -name "*.json" -exec jsonlint -c -q {} \;'
alias instances='awless list instances'
aws_sso () {
        account=$1
        case $account in
                (sta) profile=sso_platform_sta_admin  ;;
                (pro) profile=sso_platform_pro_admin  ;;
                (pro_ro) profile=sso_platform_pro_adminro  ;;
                (*) echo "No profile found bobo!"
                        return 1 ;;
        esac
        export AWS_PROFILE=$profile
        aws sts get-caller-identity > /dev/null
        if [ $? -eq 0 ]
        then
                return 0
        fi
        aws sso login --profile $profile
}
