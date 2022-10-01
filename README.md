# Guil's Dotfiles

Personalized Dotfiles for MacOS.

## Installation

Clone this repo to your home folder.
```
git clone git@github.com:guilpejon/dotfiles.git ~/.dotfiles
```

## zsh

### Configuration
Add these lines to your `.zshrc`.

```
# ~/.zshrc

source ~/.dotfiles/.zsh/functions
source ~/.dotfiles/.zsh/aliases
source ~/.dotfiles/.zsh/configurations
```

## Neovim

### Configuration

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
sh or <S-LEFT> - move left
sk or <S-UP> - move up
sj or <S-DOWN> - move down
sl or <S-RIGHT> - move right

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
