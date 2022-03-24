# Installing

Copy `init.vim` and `coc-settings.json` to `~/.config/nvim/` and copy the folder `lua` in `~/.config/nvim/`.

# Dependencies

- nodejs
- yarn
- vim plug
- fzf

# Installing some dependencies

### Vim plug
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### install ag for FZF
```
brew install the_silver_searcher
```

### install markdown-preview
```
:call mkdp#util#install()
```
