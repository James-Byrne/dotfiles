" Setup true colors
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more
"information.)
if (empty($TMUX))
  if (has("nvim"))
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Ignore folders with ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/bower_components/*,*/elm-stuff/*,*/node_modules/*,*/.git/*,*/tmp/*,*/deps/*,*/_build/*,*/ebin/*,*/concat-stats-for/*,*_site/*

""""""""""""""""""""""""""
" Editor
""""""""""""""""""""""""""
syntax on

set mouse=a               " Allow the mouse

set guifont=Hack:h12      " Set the font

set conceallevel=2        " Conceal characters
hi Conceal cterm=NONE ctermbg=NONE ctermfg=yellow " Color the conceal chars

au BufEnter * syntax keyword Statement function conceal cchar=λ
au BufEnter * syntax keyword Statement null     conceal cchar=ø
au BufEnter * syntax keyword Statement return   conceal cchar=⇚
au BufEnter * syntax keyword Statement NaN      conceal cchar=ℕ
au BufEnter * syntax keyword Statement super    conceal cchar=Ω

au BufEnter *.js :syn match Conceal '=<' conceal cchar=≤
au BufEnter *.js :syn match Conceal '>=' conceal cchar=≥
au BufEnter *.js :syn match Conceal '!=' conceal cchar=≠
au BufEnter *.js :syn match Conceal '===' conceal cchar=≡

au BufEnter *.ts :syn match Conceal '=<' conceal cchar=≤
au BufEnter *.ts :syn match Conceal '>=' conceal cchar=≥
au BufEnter *.ts :syn match Conceal '!=' conceal cchar=≠
au BufEnter *.ts :syn match Conceal '===' conceal cchar=≡

set laststatus=2          " Always show the status line
set number                " Show line numbers

set backspace=indent,eol,start " allow backspacing over everything in insert mode

set autoindent            " Use current indentation for the next line

" Set the tabs
set tabstop=2
set shiftwidth=2
set expandtab

set hlsearch              " highlight search terms
set list                  " show whitespace

" set whitespace chars
set listchars=eol:¬,tab:>·,extends:>,precedes:<,space:·

" Scrolling
set scrolloff=3 " minimum lines to keep above & below cursor

" Backup & Temp
" set backupdir=~/.local/share/vim/_backup/    " where to put backup files.
" set directory=~/.local/share/vim/_temp/      " where to put swap files.
set nobackup
set nowritebackup
set noswapfile

" allow undo history to persist after closing buffer
if has('persistent_undo')
  set undodir=~/.local/share/vim/_undo
  set undofile
end

""""""""""""""""""""
" Panes / Buffers
""""""""""""""""""""
set splitright
" set equalalways noequalalways " prevents splits from all auto-adjusting horizontally when one closes


""""""""""""""""""""
" Code Management
""""""""""""""""""""
set foldmethod=indent " fold based on indentation
set foldlevel=99
set nofoldenable      " don't open a file with folds, display the whole thing
set signcolumn=yes    " always show the signcolumn
highlight clear SignColumn " Set the color to be the same as the bg

" set the title of the window to the filename
set title
set titlestring=%f%(\ [%M]%)
