cp -i .gitconfig ~/.gitconfig

# first thing's first, install homebrew
if ! [ -x "$(command -v brew)" ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew tap homebrew/cask
brew tap homebrew/cask-versions
brew tap domt4/autoupdate
brew autoupdate --start 43200 --upgrade --cleanup --enable-notification

# CLI basics
brew install git curl wget jq
git config --global user.name "Patrick Menlove"
git config --global user.email "patmenlove@gmail.com"

# ZSH & iTerm
brew install zsh autoenv bash-git-prompt
brew install --cask iterm2

if [ "$SHELL" != "/bin/zsh" ]; then
  chsh -s $(which zsh)
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp -i material-patrick.zsh-theme ~/.oh-my-zsh/custom/themes/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/zsh-syntax-highlighting

if ! [ -f ~/.iterm2_shell_integration.zsh ]; then
  curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash
fi

cd fonts
./install.sh
cd ..

# Bash & Zsh Dotfiles
./install_dotfiles_only.sh

# Must have applications
brew install --cask firefox atom docker jetbrains-toolbox pycharm webstorm intellij-idea visual-studio-code
brew install mas
mas install 1176895641 # Spark
mas install 803453959  # Slack
mas install 1116599239 # NordVPN IKE
mas install 1278508951 # Trello
mas install 926036361  # LastPass fat client

# setup MacOS defaults
. .macos

# Setup Dock
# brew install dockutil
# ./setup_dock.sh

# Programming languages setup
# Python
brew install python
ln -s /usr/local/bin/python3 /usr/local/bin/python
python --version

# Node
brew install yarn
mkdir ~/.nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install --lts
nvm use --lts

# Ruby
brew install rbenv

# Android
brew install --cask android-sdk

# Go
brew install go

# Terraform
brew install terraform

# LastPass cli
brew install lastpass-cli
lpass login --trust patrickmenlove@hotmail.co.uk

# SSH KEYS
mkdir -p ~/.ssh

if ! [ -f ~/.ssh/id_rsa ]; then
  lpass show --notes 1544556513467781929 > ~/.ssh/id_rsa
fi
chmod 600 ~/.ssh/id_rsa

if ! [ -f ~/.ssh/id_rsa.pub ]; then
  lpass show --notes 666179570102873445 > ~/.ssh/id_rsa.pub
fi
chmod 600 ~/.ssh/id_rsa.pub

# GPG KEYS
brew install --cask gpg-suite
echo "S" | lpass show 5422875641318947951 --attach att-5422875641318947951-1
gpg --import githubkey.asc
rm githubkey.asc
git config --global commit.gpgsign true
git config --global user.signingkey B21F8BBC6E7335EF4C7B0BD8C2BB893186B3E679

# AWS access / keys
brew install awscli

# Xcode (last since it takes a while)
mas install 497799835  # xcode
