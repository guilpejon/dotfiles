" =====================================
" Plugins declaration
" =====================================

call plug#begin("~/.vim/plugged")

" Theme
Plug 'morhetz/gruvbox'

" Change quotes to single quotes and etc
Plug 'tpope/vim-surround'
" make . repeat vim-surround commands
Plug 'tpope/vim-repeat'

" Ruby support
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" Buff explorer
Plug 'jlanzarotta/bufexplorer'

" Auto tag
Plug 'craigemery/vim-autotag'

" Auto format code
Plug 'sbdchd/neoformat'

" Colorize colors
Plug 'norcalli/nvim-colorizer.lua'

" Markdown support
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Better wildmenu
Plug 'gelguy/wilder.nvim', { 'do': ':UpdateRemotePlugins' }

" statusline
Plug 'nvim-lualine/lualine.nvim'

" Insert mode auto-completion for quotes
Plug 'Raimondi/delimitMate'

" Easy comments
Plug 'tpope/vim-commentary'

" Git wrapper
Plug 'tpope/vim-fugitive'

" File Explorer with Icons and Git
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'

" File searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'jesseleite/vim-agriculture'

" auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-solargraph']

" TypeScript Highlighting
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()

" =====================================
" Initial configs
" =====================================

" change the leader key to ","
let mapleader=","

" -------
" General
" -------
set mouse=nv                 " Disable mouse in command-line mode
set modeline                 " automatically setting options from modelines
set report=2                 " Report on line changes
set errorbells               " Trigger bell on error
set visualbell               " Use visual bell instead of beeping
set hidden                   " hide buffers when abandoned instead of unload
set fileformats=unix,dos,mac " Use Unix as the standard file type
set magic                    " For regular expressions turn magic on
set path+=**                 " Directories to search when using gf and friends
set isfname-==               " Remove =, detects filename in var=/foo/bar
set virtualedit=block        " Position cursor anywhere in visual block
set synmaxcol=2500           " Don't syntax highlight long lines

" ----------------
" Tabs and Indents
" ----------------
set textwidth=80    " Text width maximum chars before wrapping
set noexpandtab     " Don't expand tabs to spaces
set tabstop=2       " The number of spaces a tab is
set shiftwidth=2    " Number of spaces to use in auto(indent)
set softtabstop=-1  " Automatically keeps in sync with shiftwidth
set smarttab        " Tab insert blanks according to 'shiftwidth'
set autoindent      " Use same indenting on new lines
set smartindent     " Smart autoindenting on new lines
set shiftround      " Round indent to multiple of 'shiftwidth'

" ------
" Timing
" ------
set timeout ttimeout
set timeoutlen=500   " Time out on mappings
set ttimeoutlen=10   " Time out on key codes
set updatetime=200   " Idle time to write swap and trigger CursorHold
set redrawtime=2000  " Time in milliseconds for stopping display redraw

" ---------
" Searching
" ---------
set ignorecase    " Search ignoring case
set smartcase     " Keep case when searching with *
set infercase     " Adjust case in insert completion mode
set incsearch     " Incremental search
set wrapscan      " Searches wrap around the end of the file

" ----------
" Formatting
" ----------
set nowrap                      " No wrap by default
set linebreak                   " Break long lines at 'breakat'
set breakat=\ \	;:,!?           " Long lines break chars
set nostartofline               " Cursor in same column for few commands
" set whichwrap+=h,l,<,>,[,],~    " Move to following line on certain keys
set splitbelow splitright       " Splits open bottom right
set switchbuf=uselast           " Use last window with quickfix entries
set backspace=indent,eol,start  " Intuitive backspacing in insert mode
set formatoptions+=1         " Don't break lines after a one-letter word
set formatoptions-=t         " Don't auto-wrap text
set formatoptions-=o         " Disable comment-continuation (normal 'o'/'O')

" ---------
" Editor UI
" ---------
set noshowmode          " Don't show mode in cmd window
set shortmess=aoOTI     " Shorten messages and don't show intro
set scrolloff=2         " Keep at least 2 lines above/below
set sidescrolloff=5     " Keep at least 5 lines left/right
set nonumber            " Don't show line numbers
set noruler             " Disable default status ruler
set list                " Show hidden characters

set showtabline=2       " Always show the tabs line
set helpheight=0        " Disable help window resizing
set winwidth=30         " Minimum width for active window
set winminwidth=10      " Minimum width for inactive windows
" set winheight=1         " Minimum height for active window
" set winminheight=0      " Minimum height for inactive window

set noshowcmd           " Don't show command in status line
set cmdheight=2         " Height of the command line
set cmdwinheight=5      " Command-line lines
set equalalways         " Resize windows on split or close
set laststatus=2        " Always show a status line
set colorcolumn=+0      " Column highlight at textwidth's max character-limit
set display=lastline

" Enable line numbers
set number
set numberwidth=5

" Automatically removes all trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

func! s:my_colors_setup() abort
    hi Pmenu guibg=#121217 gui=NONE
		hi WarningMsg guifg=#f78f32
    hi PmenuSel guibg=#121217 gui=NONE
    hi PmenuSbar guibg=#121217
    hi PmenuThumb guibg=#121217
endfunc

augroup colorscheme_coc_setup | au!
    au ColorScheme * call s:my_colors_setup()
augroup END

" THEME
syntax enable
set background=dark
colorscheme gruvbox

" Auto reload file if something changes
" trigger `autoread` when files changes on disk
  set autoread
  autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" notification after file change
  autocmd FileChangedShellPost *
    \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" Ability to copy and paste outside of vim
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" INTEGRATED TERMINAL (CTRL+N)
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
:au TermClose * :q

" use shift-arrow to move from terminal
tnoremap <S-LEFT> <C-\><C-n><C-w>h
tnoremap <s-DOWN> <C-\><C-n><C-w>j
tnoremap <S-UP> <C-\><C-n><C-w>k
tnoremap <S-RIGHT> <C-\><C-n><C-w>l

" Persistent Undo
set undofile

" Folds
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default
" Enable folding
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" =====================================
" Splits
" =====================================

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Map CTRL+O to 'zoom in split'
" :q will exit the zoom
nnoremap <C-O> :tabe %<CR>

" Easy CTRL+W with SHIFT
nnoremap <S-DOWN> <C-W><C-J>
nnoremap <S-UP> <C-W><C-K>
nnoremap <S-RIGHT> <C-W><C-L>
nnoremap <S-LEFT> <C-W><C-H>

" Resize windows with arrow keys
nnoremap <tab><Up> <C-w>+
nnoremap <tab><Down> <C-w>-
nnoremap <tab><Left> <C-w><
nnoremap <tab><Right> <C-w>>

" =====================================
" Key mappings
" =====================================

" Allow saving of files as sudo when I forget to start vim using sudo
cmap w!! w !sudo tee > /dev/null %

" <leader>h - Find and replace
map <leader>h :%s///<left><left>

" bind \ (backward slash) to grep shortcut
nnoremap \ :Rg<SPACE>

"map Q to something useful, like indenting the file
noremap Q gg=G

" Map ,, to open last file
nnoremap <Leader><Leader> <C-^>

" bind K to rip grep word under cursor
nnoremap K :Rg <C-R><C-W><CR>

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

"Zoom shortcuts
"CTRL-W + | Set current window width to N (default: widest possible).
"CTRL-W + _ Set current window height to N (default: highest possible).
"CTRL-W + = Make all windows (almost) equally high and wide.

" =====================================
" Plugin configs
" =====================================

" Require plugin configs in Lua
lua << END
require 'lualine_config'
require'colorizer'.setup()
END

""""""""""""""""""""""""""""""gelguy/wilder""""""""""""""""""""""""""""""""
call wilder#setup({
      \ 'modes': [':', '/', '?'],
      \ 'next_key': '<Tab>',
      \ 'previous_key': '<S-Tab>',
      \ 'accept_key': '<Right>',
      \ 'reject_key': '<Left>',
      \ })

"""""""""""""""""""""""""preservim/nerdtree""""""""""""""""""""""""""""""""
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
" nnoremap <silent> <C-b> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

"""""""""""""""""""""""""""""""""junegunn/fzf""""""""""""""""""""""""""""""
" CTRL+P to search
" CTRL+T to open it in a new tab
" CTRL+S to open below (split view)
" CTRL+T to open to the side (vertical split)
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
" requires silversearcher-ag
" used to ignore gitignore files
" let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let $FZF_DEFAULT_COMMAND = 'rg --files'

""""""""""""""""""""""""plasticboy/vim-markdown""""""""""""""""""""""""""""
" Disable header folding
let g:vim_markdown_folding_disabled = 1

" Whether to use conceal feature in markdown
let g:vim_markdown_conceal = 1

" Disable math tex conceal and syntax highlight
let g:tex_conceal = ''
let g:vim_markdown_math = 0

" Support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

" Let the TOC window autofit so that it doesn't take too much space
let g:vim_markdown_toc_autofit = 1

"""""""""""""""""""""""""""iamcco/markdown-preview"""""""""""""""""""""""""
" Do not close the preview tab when switching to other buffers
let g:mkdp_auto_close = 0
let g:mkdp_auto_start = 0

" Shortcuts to start and stop markdown previewing
nnoremap <silent> <M-m> :<C-U>MarkdownPreview<CR>
nnoremap <silent> <M-S-m> :<C-U>MarkdownPreviewStop<CR>

"""""""""""""""""""""""""""craigemery/vim-autotag"""""""""""""""""""""""""
nnoremap <leader>ct :silent ! ctags -R --languages=ruby --exclude={.git,log,node_modules,vendor,db} -f .tags<cr>
let g:autotagTagsFile="tags"
set tags+=.tags

"""""""""""""""""""""""""""neoclide/coc"""""""""""""""""""""""""

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" coc.nvim color changes
hi! link CocErrorSign WarningMsg
hi! link CocWarningSign Number
hi! link CocInfoSign Type
