# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

Personal MacOS dotfiles repository. Configurations are applied via symlinks from `~/.dotfiles/` to the appropriate home directory locations — there is no build system or install script.

## Applying Changes

Configurations are symlinked, so edits here take effect immediately. The symlink setup commands are:

```bash
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/.gitignore ~/.gitignore
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/rails/.railsrc ~/.railsrc
ln -s ~/.dotfiles/rails/.gemrc ~/.gemrc
```

zsh files are sourced directly in `~/.zshrc`:
```bash
source ~/.dotfiles/zsh/functions
source ~/.dotfiles/zsh/aliases
source ~/.dotfiles/zsh/configurations
```

## Repository Structure

- **nvim/** — Neovim config using LazyVim framework. Entry point: `init.lua`. Plugin manager bootstrap in `lua/config/lazy.lua`. Custom plugins in `lua/plugins/`.
- **zsh/** — Shell aliases, functions (Kubernetes helpers using fzf), and history/autocomplete settings.
- **git/** — Global `.gitconfig` (delta pager, rebase ff-only, GPG signing, neovim as editor) and `.gitignore`.
- **mise/** — no config file needed; mise reads `.ruby-version`, `.nvmrc`, etc. natively.
- **rails/** — `.railsrc` (PostgreSQL default, skips unwanted generators) and `.gemrc` (no docs).
- **iterm/** — Dracula and GruvboxDark color theme files for iTerm2 import.
- **rectangle/** — Rectangle window manager preferences plist. Applied via `defaults import com.knollsoft.Rectangle ~/.dotfiles/rectangle/com.knollsoft.Rectangle.plist` (not a symlink — cfprefsd doesn't support symlinked plists).

## Neovim Architecture

The Neovim config uses **LazyVim** as the base framework with these key customizations:

- `lua/config/options.lua` — 2-space tabs, relative numbers off, persistent undo, mouse disabled
- `lua/config/keymaps.lua` — Custom bindings (space as leader, telescope shortcuts, split navigation)
- `lua/plugins/gen.lua` — Local Ollama/Mistral integration
- `lua/plugins/telescope.lua` — Fuzzy finder with fzf-native and file-browser extensions
- `lua/plugins/colorscheme.lua` — Nightfox/nordfox theme
- `lua/plugins/git.lua` — git-blame, git-browse, lazygit integration

## Key Tool Versions

Languages managed via **mise** for Ruby, Node.js, Python, and Go. Legacy version files (`.ruby-version`, `.nvmrc`, etc.) are read natively.

## Git Configuration Notes

The `git/.gitconfig` uses delta as pager with DarkNeon theme and side-by-side diffs. It sets `pull.rebase = true` and `rebase.autosquash = true`. GPG signing is configured but the signing key must be set per-machine.
