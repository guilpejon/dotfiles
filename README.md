# Guil's Dotfiles

Personalized Dotfiles for MacOS.

## Installation

Clone this repo to your home folder.
```
git clone git@github.com:guilpejon/dotfiles.git ~/.dotfiles
```

After that, open `run.sh` and run the installation commands for the tools that you want to use.

## iTerm2

### Configuration

Add one of the themes from the `iterm/` folder to iTerm2 by following [these steps](https://iterm2colorschemes.com/).

## zsh

### Configuration
Add these lines to your `.zshrc`.

```
# ~/.zshrc

source ~/.dotfiles/.zsh/functions
source ~/.dotfiles/.zsh/aliases
source ~/.dotfiles/.zsh/configurations
```

<details>
<summary>Configuration commands</summary>

```
docker-clean - prune network, images, containers and volumes
```

</details>

## Neovim

### Configuration

```
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
```

### Dependencies

```
brew install lua-language-server rg
npm i -g typescript-language-server typescript eslint_d prettier
```

### Useful commands

```
:PackerSync` - install/update packages
:Mason - install/update LSPs 
```

### Shortcuts

<details>
<summary> Shortcut List</summary>

```
\ - leader
C-a - select all
+ - increase next number in line
- - decrease next number in line
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

# telescope
;f - find files
;r - live ripgrep
\\ - show buffers
;; - open last option used
;e - diagnostics
sf - file browser
# in file browser window
q - close
N - create a new file
h - go to parent dir
r - rename file
d - remove file
y - copy file

# lspsaga
K - hover doc
gd - find definition
↳ o - open selected file
gp - peek definition
gr - rename

# vim-surround
cs"' - change text between "" to ''
cst" - change text between tags (e.g. <div>) to "
ds" - remove "" surrounding a text
ysiw] - turns "Hello world!" to "[Hello] World" when cursor is in "Hello"
ysiw[ - turns "Hello world!" to "[ Hello ] World" when cursor is in "Hello"
yss) - wraps entire line between (...)
yss( - wraps entire line between ( ... )
S<p> - in visual mode (pressing V) wraps entire line between <p></p>
```
</details>

## asdf

### Configuration

Create symlink to configuration file.

```
ln -s ~/.dotfiles/.asdfrc ~/.asdfrc
```

## Git

### Configuration

Create symlink to configuration file.

```
ln -s ~/.dotfiles/.gitignore ~/.gitignore
```

<details>
<summary>Configuration commands</summary>

```
git config --global user.name "NAME"
git config --global user.email "EMAIL"
git config --global core.editor "nvim"
git config --global rebase.autosquash "true"
git config --global apply.whitespace "fix"
git config --global branch.sort "-committerdate"
git config --global core.excludesfile "~/.gitignore"
git config --global core.attributesfile "~/.gitattributes"
git config --global pull.ff "only"

# git-delta config
git config --global core.pager "delta"
git config --global interactive.diffFilter "delta --color-only"
git config --global delta.navigate "true"  # use n and N to move between diff sections
git config --global merge.conflictstyle "diff3"
git config --global diff.colorMoved "default"
git config --global delta.theme "DarkNeon"
git config --global delta.line-numbers "true"
git config --global delta.side-by-side "true"
```
</details>
