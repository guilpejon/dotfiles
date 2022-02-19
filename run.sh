# Install Rosetta 2
/usr/sbin/softwareupdate --install-rosetta --agree-to-license

# Intall xcode
xcode-select --install

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/guilpejon/.zprofile

# Install iterm2
brew install iterm2

# Install lunarvim dependencies
brew install neovim
brew install yarn
brew install npm
curl https://sh.rustup.rs -sSf | sh
# Install lunarvim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
echo "export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH" >> ~/.zshrc

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

# Install asdf
brew install asdf
echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
asdf plugin add nodejs 
asdf plugin add ruby
# asdf list
# asdf list-all <PLUGIN>
# asdf install <PLUGIN> <VERSION> 
# global config: asdf global nodejs <VERSION>
# local config: asdf local nodejs <VERSION>

# Install dev tools
cargo install bat exa tokei ytop tealdeer grex zoxide git-delta
brew install diff-so-fancy
brew install watch
brew install wget
brew install wireguard-tools
brew install gh
brew install cask
brew install --cask ngrok
brew tap heroku/brew
brew install heroku
heroku plugins:install heroku-accounts

# Git config
git config --global user.name "NAME"
git config --global user.email "EMAIL"
git config --global core.editor "lvim"
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global interactive.diffFilter "diff-so-fancy --patch"
