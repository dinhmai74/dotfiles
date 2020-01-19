export ZSH="/Users/dinhmai/.oh-my-zsh"

POWERLEVEL9K_MODE="nerdfont-complete"
ZSH_THEME="powerlevel9k/powerlevel9k"

export UPDATE_ZSH_DAYS=7

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  brew common-aliases docker gitfast github node npm yarn osx web-search nvm zsh-syntax-highlighting
  zsh-better-npm-completion
zsh-syntax-highlighting
zsh-completions
  git
zsh-autosuggestions
alias-tips
)

source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs_joined)
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="clear"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="012"
POWERLEVEL9K_DIR_FOREGROUND='010'
POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_FOREGROUND="012"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="012"
POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{008}/%F{cyan}"


POWERLEVEL9K_VCS_CLEAN_BACKGROUND='clear'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='clear'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='clear'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='green'
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
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

zsh_wifi_signal(){
        local output=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I) 
        local airport=$(echo $output | grep 'AirPort' | awk -F': ' '{print $2}')

        if [ "$airport" = "Off" ]; then
                local color='%F{yellow}'
                echo -n "%{$color%}Wifi Off"
        else
                local ssid=$(echo $output | grep ' SSID' | awk -F': ' '{print $2}')
                local speed=$(echo $output | grep 'lastTxRate' | awk -F': ' '{print $2}')
                local color='%F{yellow}'

                [[ $speed -gt 300 ]] && color='%F{green}'
                [[ $speed -lt 100 ]] && color='%F{red}'

                echo -n "%{$color%}\uF1EB $speed Mb/s%{%f%}" # removed char not in my PowerLine font 
        fi
}

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="code ~/.zshrc"
alias zshconfigv="vi ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias zshreset="source ~/.zshrc"
alias yclean="rm -rf node_modules/ && yarn install"
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
alias rn=       'npx react-native run-ios --simulator="iPhone 6"'
alias rna=      'npx react-native run-android'
alias rn6=      'npx react-native run-ios --simulator="iPhone 6"'
alias rn6s=     'npx react-native run-ios --simulator="iPhone 6s"'
alias rne=      'npx react-native run-ios --simulator="iPhone'
alias rn5=      'npx react-native run-ios --simulator="iPhone 5s"'
alias rn8=      'npx react-native run-ios --simulator="iPhone 8"'
alias rn8s=     'npx react-native run-ios --simulator="iPhone 8s"'
alias rnx=      'npx react-native run-ios --simulator="iPhone X"'
alias rn11=     'npx react-native run-ios --simulator="iPhone 11"'
alias alacf="vi ~/.config/alacritty/alacritty.yml"

alias sd='sudo shutdown -h now'
alias rs='sudo shutdown -r now'
alias cf='caffeinate -i -t '
alias cfi='caffeinate -i -t 9999999999'
alias pj='cd ~/Workplace/Project'
alias st='cd ~/Workplace/Project/swift'
alias uit='cd ~/Workplace/Project/uit'
alias nf='cd ~/Workplace/Project/nextfunc'
alias getAddress='ipconfig getifaddr en0'
alias ipAd='ipconfig getifaddr en0'
alias ig='ignite'
alias igg='ignite generate'
alias igs='ignite generate screen'
alias igc='ignite generate component'
alias yip='y && cd ios && pod install && cd .. && rn'
alias ev="code ~/.config/nvim/init.vim"
alias vdir="code ~/.config/nvim"
alias gss="gon screen "
alias gsc="gon components "
alias gsu="gon utils "

autoload -U compinit && compinit

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator
export TOOLCHAINS=swift

alias emu="cd $ANDROID_HOME && cd tools && emulator -avd Nexus5X"
alias devmenu="adb shell input keyevent 82"

# set local
LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8
source /Users/dinhmai/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/usr/local/opt/ruby/bin:$PATH"
source $(dirname $(gem which colorls))/tab_complete.sh
PATH=$PATH:$(ruby -e 'puts Gem.bindir')
eval $(thefuck --alias)

set -o vi
