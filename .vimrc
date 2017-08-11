" Disable swap files
set noswapfile

" Set the tabs
set tabstop=2
set ts=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Setup true colors
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
""If you're using tmux version 2.2 or later, you can remove the outermost
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more
"information.)
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
" colorscheme onedark
colorscheme OceanicNext

" Set the background to be transparent
hi Normal guibg=NONE ctermbg=NONE

" line numbers
set number

" Set the font
set guifont=Hack:h12

" Ignore folders with ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/bower_components/*,*/elm-stuff/*,*/node_modules/*,*/.git/*,*/tmp/*,*/deps/*,*/_build/*,*/ebin/*

call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree'

" Plug for the vim onedark theme
Plug 'https://github.com/joshdick/onedark.vim'

" Plug for the vim oceanic next theme
Plug 'mhartington/oceanic-next'

" vim-plugs for the elixir language
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }

" vim-plug for the elm langauge
Plug 'elmcast/elm-vim', { 'for': 'elm' }

" precompiler for erlang with vim
Plug 'vim-erlang/vim-erlang-compiler', { 'for': 'erlang' }

" Gitgutter
Plug 'airblade/vim-gitgutter'

" Fuzzy finder for vim
Plug 'ctrlpvim/ctrlp.vim'

" Airline for vim
Plug 'bling/vim-airline'

" Adding the polyglot support
" Plug 'https://github.com/sheerun/vim-polyglot'

" Adding vim/tmux navigation
Plug 'https://github.com/christoomey/vim-tmux-navigator'

" Add plugins to &runtimepath
call plug#end()

" Run elm-format after save
let g:elm_format_autosave = 1

" Config for vim-javascript
let g:javascript_conceal_function             = "λ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "⇒"

set conceallevel=1
hi Conceal cterm=NONE ctermbg=NONE ctermfg=yellow

" Settings for vim airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'

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
