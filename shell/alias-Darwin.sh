alias fgrep='fgrep --colour=auto'
alias grep='grep --colour=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -lF'
alias ls='ls -G'
alias valencia='curl -4 http://wttr.in/Valencia,Spain'
alias rg='rg --no-ignore --hidden'
alias ssmsession="aws ssm start-session --target "
alias jsonlintall='find . -name "*.json" -exec jsonlint -c -q {} \;'
aws_sso () {
        account=$1
        case $account in
                (sta) profile=sso_platform_sta_admin  ;;
                (pro) profile=sso_platform_pro_admin  ;;
                (prod) profile=sso_platform_pro_admin  ;;
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
alias docker='podman'
ramdisk() {
  if [ "$1" = "on" ]; then
  echo creating a 100MB ramdisk:
  size=$((2 * 1024 * 100))
  device_name=$(hdiutil attach -nomount ram://${size} | awk '{print $1}')
  diskutil eraseVolume HFS+ RAMDisk ${device_name}
  echo created: /Volumes/RAMDisk
  elif [ "$1" = "off" ]; then
    echo "Bye RAMDisk... sure? (control+c abort - INTRO byebye)"
    read
    hdiutil detach /Volumes/RAMDisk
  else
    echo "Uso: ramdisk [on|off]"
  fi
}
