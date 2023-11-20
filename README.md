# Guil's Dotfiles

Personalized Dotfiles for MacOS.

## Installation

Clone this repo to your home folder.

```
git clone git@github.com:guilpejon/dotfiles.git ~/.dotfiles
```

Expand the sections below as you wish to learn how to install and configure them.

## MacOS

<details>
<summary>Expand</summary>

### Install

Install Rosetta 2 and xcode if this is a new M1 machine.

```
/usr/sbin/softwareupdate --install-rosetta --agree-to-license

xcode-select --install
```

### Configure

```
# Enable keystroke repetition while holding a key
defaults write -g ApplePressAndHoldEnabled -bool false
```

</details>

## Brew

<details>
<summary>Expand</summary>

### Installation

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
```

</details>

## Apps

<details>
<summary>Expand</summary>

```
brew install slack
brew install spotify
brew install notion
brew install telegram
brew install whatsapp
brew install 1password
```

</details>

## Dev tools

<details>
<summary>Expand</summary>

```
curl https://sh.rustup.rs -sSf | sh # install cargo
cargo install bat exa tokei ytop tealdeer grex zoxide git-delta

brew install yarn
brew install npm
brew install tree
brew install watch
brew install wget
brew install wireguard-tools
brew install gh
brew install flyctl
brew install redis
brew install postgresql
brew install ansible
brew install gpg
brew install keybase
brew install tmate

brew install cask
brew install --cask ngrok

brew install lazygit

# to enable k8s terminal helper functions
brew install fzf jq
```

</details>

## iTerm2

<details>
<summary>Expand</summary>

### Installation

```
brew install iterm2
```

### Configuration

Use [this article](https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x) to configure word jumps wih arrow keys.

Set "Reuse previous session's directory" in "Working Directory".

![image](https://user-images.githubusercontent.com/871362/211964181-627f0374-c882-4cf3-901a-eba63ffa5d4a.png)

Add one of the themes from the `iterm/` folder to iTerm2 by following [these steps](https://iterm2colorschemes.com/).

```
“Command” + “Shift” + “.” - show hidden folders in finder
```

</details>

## zsh

<details>
<summary>Expand</summary>

### Installation

Install zsh and a few plugins, including powerlevel10k.

```
brew install zsh
mkdir ~/.zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc
```

### Configuration

Add these lines to your `~/.zshrc`.

```
# ~/.zshrc

source ~/.dotfiles/zsh/functions
source ~/.dotfiles/zsh/aliases
source ~/.dotfiles/zsh/configurations
```

### Shortcuts

```
# vim
vim='nvim'
:q='exit'

# rust terminal tools
ls="exa -la --icons"
cat="bat --style=auto"
top="ytop"

# git
merge='merge --no-edit'
gs='git status'
gco='git checkout'
gcm='git commit -m'
gps='git push'
gpl='git pull'
ga='git add -A'
gap='git add -p'
gd='git diff'
gb='git branch -v'
glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)' --abbrev-commit"

# docker
docker-clean=' \
  docker container prune -f ; \
  docker image prune -f ; \
  docker network prune -f ; \
  docker volume prune -f '

# k8s
k=kubectl
kgp='k get pods'
kdp='k delete pod'
kswitch_ns='kubectl config set-context --current --namespace $(fz_namespace)'
kswitch_ctx='kubectl config use-context $(fz_context)'
kshell='kubectl exec $* -it $(fz_podname $*) -- sh'
kbash='kubectl exec $* -it $(fz_podname $*) -- bash'
klogs='kubectl logs $* -f $(fz_podname $*)'
```

</details>

## Neovim

<details>
<summary>Expand</summary>

### Installation

```
brew install neovim
```

Install [rg](https://github.com/BurntSushi/ripgrep), [fd](https://github.com/sharkdp/fd) linters, lsps and ctags.

```
brew install rg fd

brew install ctags
alias ctags="`brew --prefix`/bin/ctags"
alias ctags >> ~/.bashrc

gem install gem-ctags
gem ctags # in a rails project folder
```

### Configuration

Create a symbolic link with the config folder.

```
ln -s ~/.dotfiles/nvim ~/.config/nvim
```

### Shortcuts

```
<space> - leader
te - tab edit

# splits
ss - split horizontally
sv - split vertically
sh or <S-LEFT> - move left
sk or <S-UP> - move up
sj or <S-DOWN> - move down
sl or <S-RIGHT> - move right
<tab-left> - reduce size horizontally
<tab-right> - increase size horizontally
<tab-up> - increase size vertically
<tab-down> - reduce size vertically

# git
gb - open blame window
go - open file in git repo

# LazyGit
<leader>gg - open up lazygit

# vim-bundler
:Bundle - wraps bundle
:Bundle open - opens a gem inside vim

# ReplaceWithRegister
grr - replace entire line without losing buffer
gr (visual mode) - replace selection without losing buffer

# telescope
<leader>space - search git files
<leader>fP - find plugins
;f - Lists files in your current working directory, respects .gitignore
;r - Search for a string in your current working directory and get results live as you type, respects .gitignore
\\ - list open buffers
;t - Lists available help tags and opens a new window with the relevant help info on <cr>
;; - Resume the previous telescope picker
;e - Lists Diagnostics for all open buffers or a specific buffer
;s - Lists Function names, variables, from Treesitter
sf - Open File Browser with the path of the current buffer

# lspconfig
<leadnr>cr - renames all references to symbol under cursor
K - displays info about symbol under cursor

# comment
gcc - comment line
gc (in visual mode selection) - comment block

# vim-surround
cs"' - change text between "" to ''
cst" - change text between tags (e.g. <div>) to "
ds" - remove "" surrounding a text
ysiw] - turns "Hello world!" to "[Hello] World" when cursor is in "Hello"
ysiw[ - turns "Hello world!" to "[ Hello ] World" when cursor is in "Hello"
yss) - wraps entire line between (...)
yss( - wraps entire line between ( ... )
S<p> - in visual mode (pressing V) wraps entire line between <p></p>

# zenmode
<leader>zz - toggle zenmode

# vim-unimpaired
]q - :cnext
[q - :cprevious
]a - :next
[b - :bprevious
[<Space> - add newline before the cursor line
]<Space> add newlines after the cursor line
[e - exchange the current line with the one above
]e - exchange the current line with the one below
[os - :set spell
]os - :set nospell
yos - :set invspell
[x - encode XML
]x decode XML (and HTML)
[u - encode URLs
]u decode URLs
[f - go to next file in the directory
]f - go to the previous file in the directory

# cellular-automaton
<leader>fml - make it rain

# maximizer
<leader>sm - toggle split window maximization
```

</details>

## asdf

<details>
<summary>Expand</summary>

### Installation

```
brew install asdf
echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
```

#### Plugins

```
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add python
```

### Configuration

Create symlink to configuration file.

```
ln -s ~/.dotfiles/asdf/.asdfrc ~/.asdfrc
```

</details>

## Git

<details>
<summary>Expand</summary>

### Configuration

Create ssh key and add to agent.

```
ssh-keygen -t rsa # generate a new key if needed
ssh-add # add key to agent
```

Create symlink to configuration files.

```
ln -s ~/.dotfiles/git/.gitignore ~/.gitignore

# IMPORTANT: Remember to add your name and email to the ~/.gitconfig file
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
```

</details>

## Rails

<details>
<summary>Expand</summary>

### Configuration

Create symlink to configuration files.

```
ln -s ~/.dotfiles/rails/.railsrc ~/.railsrc
ln -s ~/.dotfiles/rails/.gemrc ~/.gemrc
```

</details>
