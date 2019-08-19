# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/dinhmai/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
POWERLEVEL9K_MODE="nerdfont-complete"
ZSH_THEME="powerlevel9k/powerlevel9k"

export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
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

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_wifi_signal dir vcs)
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
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
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

alias sd='sudo shutdown -h now'
alias rs='sudo shutdown -r now'
alias cf='caffeinate -i -t '
alias cfi='caffeinate -i -t 9999999999'
alias pj='cd ~/Workplace/Project'
alias nf='cd ~/Workplace/Project/nextfunc'
alias vin='nf && cd vinid-clone/'
alias getAddress='ipconfig getifaddr en0'
alias hpconfig='vi ~/.hyper.js'

autoload -U compinit && compinit


export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH="$PATH":"$HOME/development/flutter/.pub-cache/bin"

alias emu="cd $ANDROID_HOME && cd tools && emulator -avd Nexus_5X_API_29_x86"
alias ea= "emulator -avd Nexus_5X_API_29_x86"
alias ios="open -a Simulator"
alias devmenu="adb shell input keyevent 82"
alias fr="flutter run"
alias ft="flutter"

# set local
LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8
source /Users/dinhmai/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
