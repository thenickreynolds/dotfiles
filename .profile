## Other Scripts
DIR=$(dirname $0)
source ~/.profile_airbnb

## Path

PATH="${PATH}:~/arcanist/bin"
PATH="${PATH}:~/Library/Android/sdk/platform-tools"
PATH="${PATH}:~/scripts"
PATH="${PATH}:/Library/Frameworks/Python.framework/Versions/3.5/bin"
export PATH

## General
alias alertfailure="say -v Karen \"Bugger, it's broke\""
alias alertsuccess="say -v Karen \"You beaut, she's crackin'\""
alias editbash="vim ~/.bash_profile"
alias reloadbash="source ~/.bash_profile"

# fzf editor
fe() {
  IFS=''
  local declare files=($(fzf-tmux --query="$1" --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
  unset IFS
}

## Android
export ANDROID_SDK=~/Library/Android/sdk
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_77.jdk/Contents/Home

alias emu="$ANDROID_SDK/tools/emulator -netdelay none -netspeed full -avd Nexus_5X_API_23 &"
alias restartadb="adb kill-server && adb start-server && adb devices"
alias pc="pidcat.py com.airbnb.android"

## Git
alias gn="git number"
alias gc="git number -c"
alias gg="git grep"

# fzf git checkout branch
gcob() {
  git checkout $(git for-each-ref --sort=-committerdate refs/heads/ | awk '{print $3}' | cut -c $(echo " refs/head/" | wc -c)- | fzf-tmux)
}

## Arc
alias ada="arc diff --reviewers '#android' -a --amend-all --verbatim"
