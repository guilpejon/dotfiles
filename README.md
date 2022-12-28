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
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### Useful commands

```
:PackerSync - install/update packages
:Mason - install/update LSPs 
```

### Shortcuts

<details>
<summary> Shortcut List</summary>

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
