mkdir ~/workspace

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install zshell (oh-my-zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i '' 's/ZSH_THEME="robbyrussell"/ZSH_THEME="superjarin"/g' ~/.zshrc

# Install and configure rbenv
brew install rbenv
echo 'eval "$(rbenv init -)" # Load rbenv automatically' >> ~/.zshrc
rbenv install 2.4.1
rbenv global 2.4.1
gem install bundler

# Install Applications
brew cask install iterm2
brew cask install google-chrome
brew cask install shiftit

# Editors
brew cask install atom
brew cask install intellij-idea-ce

# macOS Settings
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 2 # normal minimum is 2 (30 ms)


# Add global gitignore
