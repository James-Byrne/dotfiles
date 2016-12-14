" Disable swap files
set noswapfile

" Set the tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Setup true colors
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark
" Set the background to be transparent
hi Normal guibg=NONE ctermbg=NONE

" line numbers
set relativenumber
set number

" Set the font
set guifont=Hack:h12

" Ignore folders with ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/bower_components/*,*/node_modules/*,*/.git/*,*/tmp/*

call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree'

" Plug for the vim onedark theme
Plug 'https://github.com/joshdick/onedark.vim'

" Plug for the vim airline onedark theme
Plug 'https://github.com/vim-airline/vim-airline'

" vim-plug for the elixir language
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }

" precompiler for erland with vim
Plug 'vim-erlang/vim-erlang-compiler', { 'for': 'erlang' }

" vim-plug for javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" vim-plug for es6 syntax
Plug 'isruslan/vim-es6', { 'for': 'javascript' }

" HTMLbars support
Plug 'joukevandermaas/vim-ember-hbs'

" Gitgutter
Plug 'airblade/vim-gitgutter'

" Fuzzy finder for vim
Plug 'ctrlpvim/ctrlp.vim'

" Support for rails
Plug 'tpope/vim-rails', { 'for': 'ruby' }

" Airline for vim
Plug 'bling/vim-airline'

" Colorschemes for vim airline
Plug 'vim-airline/vim-airline-themes'

" Support for JSX
Plug 'https://github.com/mxw/vim-jsx', { 'for': 'javascript' }

" Adding the polyglot support
Plug 'https://github.com/sheerun/vim-polyglot'

" Adding vim/tmux navigation
Plug 'https://github.com/christoomey/vim-tmux-navigator'

" Adding wakatime for tracking work within vim
Plug 'https://github.com/wakatime/vim-wakatime'

" Add plugins to &runtimepath
call plug#end()

" Settings for vim airline
set laststatus=2
let g:airline_theme='onedark'
"let g:airline_theme='murmur'
let g:airline_powerline_fonts = 1

" allow backspacing over everything in insert mode
 set backspace=indent,eol,start"

" nerd tree options
silent! nmap <F3> :NERDTreeToggle<CR>

let g:NERDTreeIgnore=['\~$', 'vendor', 'node_modules', 'bower_componets', '.git', 'tmp']
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
