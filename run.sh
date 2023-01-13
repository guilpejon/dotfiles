# Install Rosetta 2
/usr/sbin/softwareupdate --install-rosetta --agree-to-license

# Intall xcode
xcode-select --install

# Enable keystroke repetition while holding a key
defaults write -g ApplePressAndHoldEnabled -bool false

# Install zsh and plugins
brew install zsh
mkdir ~/.zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

# Install powerlevel10k
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc

# Install common apps
brew install slack
brew install spotify
brew install notion
brew install telegram
brew install whatsapp
brew install 1password

# Install dev tools
curl https://sh.rustup.rs -sSf | sh # install cargo
cargo install bat exa tokei ytop tealdeer grex zoxide git-delta
brew install neovim
brew install yarn
brew install npm
brew install tree
brew install watch
brew install wget
brew install wireguard-tools
brew install gh
brew install flyctl
brew install cask
brew install --cask ngrok
brew install redis
brew install postgresql
brew install ansible
brew install gpg
brew install keybase
brew install tmate

# Heroku and heroku-accounts to manage multiple heroku accounts
brew tap heroku/brew
brew install heroku
heroku plugins:install heroku-accounts

# Ctags
brew install ctags
alias ctags="`brew --prefix`/bin/ctags"
alias ctags >> ~/.bashrc
