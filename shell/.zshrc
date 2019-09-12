export ZSH="/Users/nextfuncmac02/.oh-my-zsh"

POWERLEVEL9K_MODE="nerdfont-complete"
ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
  brew common-aliases docker gitfast github node npm yarn osx web-search nvm zsh-syntax-highlighting
  zsh-better-npm-completion
zsh-syntax-highlighting
zsh-completions
  git
zsh-autosuggestions
alias-tips
)

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
# POWERLEVEL9K_TIME_FORMAT="%D{%m/%d %H:%M:%S}"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_HIDE_BRANCH_ICON=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

POWERLEVEL9K_NODE_VERSION_FOREGROUND="black"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export JAVA_HOME=$(/usr/libexec/java_home)

POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_BACKGROUND="gray"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_FOREGROUND="yellow"

alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias zshreset="source ~/.zshrc"
alias yarnclean="rm -rf node_modules/ && yarn install"
alias npmclean="rm -rf node_modules/ && npm install"
alias ls="colorls --dark --sort-dirs --report"
alias lc="colorls --tree --dark"
alias mvnci="mvn clean install -DskipTests"
alias mvnrun="mvn spring-boot:run"
alias dcstop="cd ~/Source/devops/docker && docker-compose stop"
alias dcstart="cd ~/Source/devops/docker && docker-compose start"
alias dc="docker-compose"

alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias c="code-insiders ."
alias cowf="Fortune | cowsay -f vader | lolcat"
alias ns="npm start"
alias rn='react-native run-ios'
alias rna='react-native run-android'
alias rn6='react-native run-ios --simulator="iPhone 6"'
alias rn5='react-native run-ios --simulator="iPhone 5s"'
alias rnx='react-native run-ios --simulator="iPhone X"'
alias yv= 'yarn validate'
alias yf= 'yarn format'
alias yl= 'yarn lint'

alias sd='sudo shutdown -h now'
alias rs='sudo shutdown -r now'
alias cf='caffeinate -i -t '
alias cfi='caffeinate -i -t 9999999999'
alias pj='cd ~/workplace/project'
alias nf='cd ~/workplace/project/nextfunc'
alias vin='cd ~/workplace/project/vinid-clone'
alias getAddress='ipconfig getifaddr en0'
alias hpconfig='vi ~/.hyper.js'

# ignite
alias ig="ignite"
alias igg="ignite generate"
alias igs="ignite generate screen"
alias igc="ignite generate component"
alias igm="ignite generate model"


autoload -U compinit && compinit

export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH="$PATH":"$HOME/development/flutter/.pub-cache/bin"
export PATH="$PATH":"$HOME/development/flutter/bin"
alias devmenu="adb shell input keyevent 82"
alias fr="flutter run"
alias ft="flutter"

# set local
LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

source $(dirname $(gem which colorls))/tab_complete.sh
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
