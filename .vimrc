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
" colorscheme one

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }
set background=light
colorscheme PaperColor

" line numbers
set number

" Set the font
set guifont=Hack:h12

" Ignore folders with ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/bower_components/*,*/elm-stuff/*,*/node_modules/*,*/.git/*,*/tmp/*,*/deps/*,*/_build/*,*/ebin/*,*/concat-stats-for/*,*_site/*

call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree'

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nullvoxpopuli/coc-ember', {'do': 'yarn install --frozen-lockfile'}

" Plug for the vim oceanic next theme
Plug 'mhartington/oceanic-next'

" Plug for the paper-color theme
Plug 'NLKNguyen/papercolor-theme'

" precompiler for erlang with vim
Plug 'vim-erlang/vim-erlang-compiler', { 'for': 'erlang' }

" Gitgutter
Plug 'airblade/vim-gitgutter'

" Fuzzy finder for vim
Plug 'ctrlpvim/ctrlp.vim'

" Airline for vim
Plug 'bling/vim-airline'

" Adding the polyglot support
Plug 'https://github.com/sheerun/vim-polyglot'

" Adding vim/tmux navigation
Plug 'https://github.com/christoomey/vim-tmux-navigator'

" Adding vim typescript integration
" Plug 'https://github.com/Quramy/tsuquyomi'
" Plug 'https://github.com/vim-syntastic/syntastic'

" Add plugins to &runtimepath
call plug#end()

" Config for vim-javascript
let g:javascript_conceal_function             = "λ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_super                = "Ω"

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" " Typescript config
" let g:tsuquyomi_disable_quickfix = 1
" let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.

" Coc vim config START

" smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" install the following coc-extensions
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-eslint',
  \ 'coc-highlight',
  \ 'coc-pairs',
  \ 'coc-emmet',
  \ 'coc-git',
  \ 'coc-elixir'
  \ ]

" Coc vim config END

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
