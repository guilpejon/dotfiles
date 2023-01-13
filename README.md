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

</details>

## Neovim

<details>
<summary>Expand</summary>

### Installation

```
brew install neovim
```

Install [Packer](https://github.com/wbthomason/packer.nvim), [rg](https://github.com/BurntSushi/ripgrep), linters, lsps and ctags.

```
brew install lua-language-server rg
npm i -g typescript-language-server typescript eslint_d prettier
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

brew install ctags
alias ctags="`brew --prefix`/bin/ctags"
alias ctags >> ~/.bashrc
```

### Configuration

Create a symbolic link with the config folder.

```
ln -s ~/.dotfiles/nvim ~/.config/nvim
```

Copy `nvim/.env.example.lua` to `nvim/.env.lua` and fill the missing values.

```
cp nvim/.env.example.lua nvim/.env.lua

vim nvim/.env.lua # add the missing values
```

### Shortcuts

```
, - leader
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
<leader>gb - open blame window
<leader>go - open file in git repo

# nvim-tree
<leader>p - toggle nvim tree
<leader>v - open nvim tree with cursor on current file
<leader>x - collapse nvim-tree recursively
# in nvim-tree
g? - help
u - go up a directory
I - toggle git ignored files
H - toggle dotfiles
R - refresh
x - cut file/folder
p - paste file/folder
a - add file
d - remove
r - rename
<C-v> - vsplit
<C-x> - split

# ReplaceWithRegister
grr - replace entire line without losing buffer
gr (visual mode) - replace selection without losing buffer

# telescope
<C-p> - search git files
sf - search all files
sr - live ripgrep
\\ - show buffers
<leader>e - diagnostics
<leader>t - help tags

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

# LSPs
gd - go to definition
K - hover definition
<leader>vws
<leader>vd
[d - go to next diagnostics
]d - go to previous diagnostics
<leader>vca 
<leader>vrr
<leader>vrn - rename word underneath cursor
<C-h> - 
# in autocomplete popup
<C-p> - previous item 
<C-n> - next item
<C-y> - confirm choice
<C-space> - mapping complete

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

# neural
<C-n> - autocomplete code
<leader>n - OpenAI prompt
<leader>c - document code
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
