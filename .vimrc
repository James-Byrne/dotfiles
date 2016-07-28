" Disable swap files
set noswapfile

" Set the tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

" main color scheme
set background=dark

let base16colorspace=256
syntax on
set t_Co=256 " 256 color mode

" line numbers
set relativenumber
set number

" Set the font
set guifont=Hack:h12

" Ignore folders with ctrlp
let g:ctrlp_custom_ignore = 'bower_components\|node_modules\|DS_Store\|git|tmp\'

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" vim-plug for the elixir language
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }

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

" Syntastic for sytax checking
Plug 'scrooloose/syntastic'

" Airline for vim
Plug 'bling/vim-airline'

" Colorschemes for vim airline
Plug 'vim-airline/vim-airline-themes'

" Support for typescript
Plug 'https://github.com/leafgarland/typescript-vim', { 'for': 'typescript' }

" Support for JSX
Plug 'https://github.com/mxw/vim-jsx', { 'for': 'javascript' }

" Adding vim/tmux navigation
Plug 'https://github.com/christoomey/vim-tmux-navigator'

" Adding wakatime for tracking work within vim
Plug 'https://github.com/wakatime/vim-wakatime'

" Add plugins to &runtimepath
call plug#end()

" Tell syntastic to ignore ionic elements
let g:syntastic_html_tidy_ignore_errors=["<ion-", "discarding unexpected </ion-", " proprietary attribute \"ng-"]

" Settings for vim airline
set laststatus=2
let g:airline_theme='murmur'
let g:airline_powerline_fonts = 1

" Syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '⚠️'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" nerd tree options
silent! nmap <F3> :NERDTreeToggle<CR>

let g:NERDTreeIgnore=['\~$', 'vendor', 'node_modules', 'bower_componets', '.git']
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Options for using tmux & vim navigation
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> {Left-mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" Options for moving around vim splits
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
