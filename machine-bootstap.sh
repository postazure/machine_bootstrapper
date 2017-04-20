#!/usr/bin/env bash

mkdir ~/workspace

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install zshell (oh-my-zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i '' 's/ZSH_THEME="robbyrussell"/ZSH_THEME="superjarin"/g' ~/.zshrc
sed -i '' 's/plugins=(git)/plugins=(git z compleat common-aliases)/g' ~/.zshrc; z

# Install and configure rbenv
brew install rbenv
echo 'eval "$(rbenv init -)" # Load rbenv automatically' >> ~/.zshrc
rbenv install 2.4.1
rbenv global 2.4.1
gem install bundler

# Install languages
brew cask install java
brew install node
brew install postgresql; brew services start postgresql

# Install Applications
brew cask install iterm2
brew cask install google-chrome
brew cask install shiftit
brew cask install screenhero

brew install Caskroom/versions/alfred2
brew cask install alfred2

# Install Editors
brew cask install atom
brew cask install intellij-idea-ce

# macOS Settings
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 2 # normal minimum is 2 (30 ms)

# Configure Finder
defaults write com.apple.Finder FXPreferredViewStyle Nlsv;killall Finder

# Configure Dock
brew install dockutil
dockutil --remove all
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock orientation -string "right"
defaults write com.apple.dock tilesize -int 20
killall Dock

# Add global gitignore
cp ./.gitignore ~/.gitignore
