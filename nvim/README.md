# Installing

Copy `init.vim`, `coc-settings.json` and `lua` folder to `~/.config/nvim/`.

# Dependencies

- nodejs
- yarn
- vim plug
- fzf

# Installing some dependencies

### Vim plug
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Then, open up `nvim` and run `:PlugInstall`.

### Install ag for FZF
```
brew install the_silver_searcher
```

### Install markdown-preview
```
:call mkdp#util#install()
```
