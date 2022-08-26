export DISCORD_GIT_ROOT='~/git/discord'
alias discord="cd $DISCORD_GIT_ROOT"
alias generate_assets="cd $DISCORD_GIT_ROOT/discord_android;clyde android generate-assets;cd -"
alias discord_web='discord && clyde app watch prod'
alias sshcoder='discord && ssh coder.tnrworkspace2'
alias sshweb='discord && clyde coder forward on && ssh -t coder.tnrworkspace2 "cd discord && clyde app watch prod"'


alias gn='git number --column'
alias ga='git number add'
alias gc='git number -c'
alias cp='git cherry-pick'

alias unsign_discord='sudo codesign --remove-signature "/Applications/Discord Canary.app/Contents/Frameworks/Discord Canary Helper (Renderer).app/"'

