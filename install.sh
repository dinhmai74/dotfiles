#!/bin/sh

echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Greetings. Preparing to power up and begin diagnostics.$(tput sgr 0)"
echo "---------------------------------------------------------"

echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Checking for Homebrew installation.$(tput sgr 0)"
echo "---------------------------------------------------------"
brew="/usr/local/bin/brew"
if [ -f "$brew" ]
then
  echo "---------------------------------------------------------"
  echo "$(tput setaf 2)Gon: Homebrew is installed.$(tput sgr 0)"
  echo "---------------------------------------------------------"
else
  echo "--------------------------------------------------------"
  echo "$(tput setaf 3)Gon: Installing Homebrew. Homebrew requires osx command lines tools, please download xcode first$(tput sgr 0)"
  echo "---------------------------------------------------------"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: set defaults delete -g ApplePressAndHoldEnabled .$(tput sgr 0)"
echo "---------------------------------------------------------"
sudo defaults delete -g ApplePressAndHoldEnabled            
sudo defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing system packages.$(tput sgr 0)"
echo "---------------------------------------------------------"


packages=(
  "git"
  "node"
  "watchman"
  "ruby"
  "neovim"
  "python3"
  "zsh"
  "ripgrep"
  "fzf"
  "z"
  "lf"
  "thefuck"
  "go"
  "fortune"
  "cowsay"
)

for i in "${packages[@]}"
do
  brew install $i
  echo "---------------------------------------------------------"
done


echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing adoptopenjdk8.$(tput sgr 0)"
echo "---------------------------------------------------------"
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8

echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing Python NeoVim client.$(tput sgr 0)"
echo "---------------------------------------------------------"

pip3 install neovim
pip3 install neovim-remote

echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing yarn$(tput sgr 0)"
echo "---------------------------------------------------------"

npm install -g yarn

echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing node neovim package$(tput sgr 0)"
echo "---------------------------------------------------------"

npm install -g neovim


echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing gem pakcages$(tput sgr 0)"
echo "---------------------------------------------------------"

gemPackages=(
  "colorls"
  "neovim"
  "environment"
  "cocoapods"
  "iStats"
  "lolcat"
)

for i in "${gemPackages[@]}"
do
  sudo gem install $i
done


echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing system fonts.$(tput sgr 0)"
echo "---------------------------------------------------------"

brew tap homebrew/cask-fonts
brew  install  --cask font-hack-nerd-font
brew  install  --cask font-hasklug-nerd-font
brew  install  --cask font-fira-code
brew  install  --cask font-fira-code-nerd-font


echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing oh-my-zsh.$(tput sgr 0)"
echo "---------------------------------------------------------"

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
  echo "---------------------------------------------------------"
  echo "$(tput setaf 2)Gon: oh-my-zsh already installed.$(tput sgr 0)"
  echo "---------------------------------------------------------"
fi

echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing zsh-autosuggestions.$(tput sgr 0)"
echo "---------------------------------------------------------"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions


echo "---------------------------------------------------------"
echo "$(tput setaf 2)insert .zshrc file into zshenv.$(tput sgr 0)"
echo "---------------------------------------------------------"
# cp ./shell/.zshenv ~/.
echo "ZDOTDIR=~/.config/shell" >> ~/.zshenv

echo "---------------------------------------------------------"
echo "$(tput setaf 2)installing zsh powerdk.$(tput sgr 0)"
echo "---------------------------------------------------------"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo "---------------------------------------------------------"
echo "$(tput setaf 2)installing zsh highlighting.$(tput sgr 0)"
echo "---------------------------------------------------------"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing zsh plugins...$(tput sgr 0)"
echo "---------------------------------------------------------"

mkdir ~/.oh-my-zsh/custom/plugins
cd ~/.oh-my-zsh/custom/plugins
zshplugins=(
  "https://github.com/zsh-users/zsh-syntax-highlighting.git" 
  "https://github.com/djui/alias-tips.git"
  "https://github.com/lukechilds/zsh-better-npm-completion.git"
  "https://github.com/zsh-users/zsh-completions.git"
  "https://github.com/zsh-users/zsh-autosuggestions.git"
)
for i in "${zshplugins[@]}"
do
  git clone $i
  echo "---------------------------------------------------------"
done


echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Running script time make sure everything is okay!!$(tput sgr 0)"
echo "---------------------------------------------------------"

echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Greetings. Preparing to power up and begin diagnostics.$(tput sgr 0)"
echo "---------------------------------------------------------"

echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Checking for Homebrew installation.$(tput sgr 0)"
echo "---------------------------------------------------------"
brew="/usr/local/bin/brew"
if [ -f "$brew" ]
then
  echo "---------------------------------------------------------"
  echo "$(tput setaf 2)Gon: Homebrew is installed.$(tput sgr 0)"
  echo "---------------------------------------------------------"
else
  echo "--------------------------------------------------------"
  echo "$(tput setaf 3)Gon: Installing Homebrew. Homebrew requires osx command lines tools, please download xcode first$(tput sgr 0)"
  echo "---------------------------------------------------------"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: set defaults delete -g ApplePressAndHoldEnabled .$(tput sgr 0)"
echo "---------------------------------------------------------"
sudo defaults delete -g ApplePressAndHoldEnabled            
sudo defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing system packages.$(tput sgr 0)"
echo "---------------------------------------------------------"


packages=(
  "git"
  "node"
  "watchman"
  "ruby"
  "neovim"
  "python3"
  "zsh"
  "ripgrep"
  "fzf"
  "z"
  "lf"
  "thefuck"
  "go"
  "fortune"
  "cowsay"
)

for i in "${packages[@]}"
do
  brew install $i
  echo "---------------------------------------------------------"
done


echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing adoptopenjdk8.$(tput sgr 0)"
echo "---------------------------------------------------------"
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8

echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing Python NeoVim client.$(tput sgr 0)"
echo "---------------------------------------------------------"

pip3 install neovim
pip3 install neovim-remote

echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing yarn$(tput sgr 0)"
echo "---------------------------------------------------------"

npm install -g yarn

echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing node neovim package$(tput sgr 0)"
echo "---------------------------------------------------------"

npm install -g neovim


echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing gem pakcages$(tput sgr 0)"
echo "---------------------------------------------------------"

gemPackages=(
  "colorls"
  "neovim"
  "environment"
  "cocoapods"
  "iStats"
  "lolcat"
)

for i in "${gemPackages[@]}"
do
  sudo gem install $i
done


echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing system fonts.$(tput sgr 0)"
echo "---------------------------------------------------------"

brew tap homebrew/cask-fonts
brew  install  --cask font-hack-nerd-font
brew  install  --cask font-hasklug-nerd-font
brew  install  --cask font-fira-code
brew  install  --cask font-fira-code-nerd-font


echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing oh-my-zsh.$(tput sgr 0)"
echo "---------------------------------------------------------"

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
  echo "---------------------------------------------------------"
  echo "$(tput setaf 2)Gon: oh-my-zsh already installed.$(tput sgr 0)"
  echo "---------------------------------------------------------"
fi

echo "---------------------------------------------------------"
echo "$(tput setaf 2)insert .zshrc file into zshenv.$(tput sgr 0)"
echo "---------------------------------------------------------"
touch ~/.zshenv
echo "ZDOTDIR=~/.config/shell" >> ~/.zshenv

echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing zsh-autosuggestions.$(tput sgr 0)"
echo "---------------------------------------------------------"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions


echo "---------------------------------------------------------"
echo "$(tput setaf 2)installing zsh powerdk.$(tput sgr 0)"
echo "---------------------------------------------------------"
mkdir~/.oh-my-zsh/custom/themes/
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo "---------------------------------------------------------"
echo "$(tput setaf 2)installing zsh highlighting.$(tput sgr 0)"
echo "---------------------------------------------------------"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Installing zsh plugins...$(tput sgr 0)"
echo "---------------------------------------------------------"

mkdir ~/.oh-my-zsh/custom/plugins
cd ~/.oh-my-zsh/custom/plugins
zshplugins=(
  "https://github.com/zsh-users/zsh-syntax-highlighting.git" 
  "https://github.com/djui/alias-tips.git"
  "https://github.com/lukechilds/zsh-better-npm-completion.git"
  "https://github.com/zsh-users/zsh-completions.git"
  "https://github.com/zsh-users/zsh-autosuggestions.git"
)
for i in "${zshplugins[@]}"
do
  git clone $i
  echo "---------------------------------------------------------"
done


echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: Switching shell to zsh. You may need to logout.$(tput sgr 0)"
echo "---------------------------------------------------------"

sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)


echo "---------------------------------------------------------"
echo "$(tput setaf 2)Gon: System update complete. Currently running at 100% power. Enjoy.$(tput sgr 0)"
echo "---------------------------------------------------------"

sudo chmod -R 755 /usr/local/share/zsh/site-functions
sudo chmod -R 755 /usr/local/share/zsh

exit 0

