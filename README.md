# Guil's Dotfiles

Personalized Dotfiles for MacOS.

## Installation

Clone this repo to your home folder.
```
git clone git@github.com:guilpejon/dotfiles.git ~/.dotfiles
```

## zsh

### Installation
Add these lines to your `.zshrc`.

```
# ~/.zshrc

source ~/.dotfiles/.zsh/functions
source ~/.dotfiles/.zsh/aliases
source ~/.dotfiles/.zsh/configurations
```

## Neovim

### Installation

```
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
```

### Dependencies

```
brew install lua-language-server rg
npm install -g typescript-language-server typescript
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
sh - move left
sk - move up
sj - move down
sl - move right
C-w-<left> - decrease horizontally
C-w-<right> - increase horizontally
C-w-<up> - increase vertically
C-w-<down> - decrease vertically

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
```
</details>

## asdf

### Installation

```
brew install asdf
echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
```

Create symlink to configuration file

```
ln -s ~/.dotfiles/.asdfrc ~/.asdfrc
```
