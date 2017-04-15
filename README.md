# Machine Bootstrapping Script
Sets up a development Machine

## Usage
1. Clone this repo
1. Make machine-bootstap.sh executable (`$ chmod +x ./machine-bootstap.sh`)
1. Run machine-bootstap.sh from the project root directory

```terminal
git clone https://github.com/postazure/machine_bootstrapper.git
cd machine_bootstrapper
chmod +x ./machine_bootstrap.sh
./machine_bootstrap
```

After running you will need to at least do the following
  1. Set git config `$ git config --global --edit`
  1. Install [Java Cryptography Extension](http://www.oracle.com/technetwork/java/javase/downloads/jce8-download-2133166.html)


## What does it do?
### System Preferences
1. Dock - Removes items, auto hide, shrinks and relocate to right side of screen
1. KeyRepeat - Increases key repeat speed

### Language Support
1. Ruby - Installs [rbenv](https://github.com/rbenv/rbenv), ruby 2.4.x and bundler
1. Java - Installs Java 1.8
1. Node - Installs Node (and npm)

### Editors
1. [Atom](https://atom.io/)
1. [Intellij Community Edition](https://www.jetbrains.com/idea/)

### Applications
1. iTerm2
1. Google Chrome
1. Shiftit
1. Alfred2

### Other
1. [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) - Installs and configures oh-my-zsh shell, and installs [plugins](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins)
  1. z - Jump Around, navigate directories
  1. git - Git Aliases
  1. compleat - Imporved auto completion
  1. common-aliases - Common terminal aliases
1. gitignore - sets up git ignore for macOS
