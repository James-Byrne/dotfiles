call plug#begin('~/.vim/plugged')

  """"""""""""""""""""""""""
  " Syntax / Theme
  """"""""""""""""""""""""""
  Plug 'NLKNguyen/papercolor-theme'
  let g:PaperColor_Theme_Options = {
    \   'theme': {
    \     'default': {
    \       'transparent_background': 1
    \     }
    \   }
    \ }
  set background=light
  colorscheme PaperColor

  """"""""""""""""""""""""""
  " Editor
  """"""""""""""""""""""""""

  " Adding vim/tmux navigation
  Plug 'https://github.com/christoomey/vim-tmux-navigator'

  " Display & strip any extra whitespace in a file
  Plug 'ntpeters/vim-better-whitespace'
  autocmd BufWritePre * StripWhitespace

  """"""""""""""""""""
  " File / Project Finding
  """"""""""""""""""""

  " File Fuzzy finder
  Plug 'ctrlpvim/ctrlp.vim'

  " File Tree browsing
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " nerd tree options
  silent! nmap <F3> :NERDTreeToggle<CR>

  let g:NERDTreeIgnore=['\~$', 'vendor', 'node_modules', 'bower_componets', '.git', 'tmp']
  let g:NERDTreeMapActivateNode="<F3>"
  let g:NERDTreeMapPreview="<F4>"

  let NERDTreeQuitOnOpen = 1
  let NERDTreeAutoDeleteBuffer = 1
  let NERDTreeMinimalUI = 1
  let NERDTreeDirArrows = 1


  " Linting
  Plug 'w0rp/ale'
  let g:ale_sign_error = '✘'
  let g:ale_sign_warning = '⚠'
  let g:ale_linters = {
    \ 'javascript': ['eslint'],
    \ 'typescript': ['eslint'],
    \ 'typescript.tsx': ['eslint'],
    \ 'html.handlebars': ['prettier', 'ember-template-lint'],
    \ }

  let g:ale_fixers = {
    \ 'javascript': ['eslint'],
    \ 'typescript': ['eslint'],
    \ 'typescript.tsx': ['eslint'],
    \ 'html.handlebars': ['prettier'],
    \ }
  let g:ale_sign_column_always = 1

  " Git Conflict highlighting
  Plug 'rhysd/conflict-marker.vim'

  """"""""""""""""""""
  " Language Servers
  "
  " Debugging:
  "   node -e 'console.log(path.join(os.tmpdir(), "coc-nvim.log"))'
  """"""""""""""""""""
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  """"""""""""""""""""
  " Status
  """"""""""""""""""""

  Plug 'airblade/vim-gitgutter'

  " Airline for vim
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  let g:airline_powerline_fonts = 1
  let g:airline_theme='papercolor'

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  let g:airline_symbols.space = "\ua0"
  let g:airline#extensions#tabline#enabled = 0
  let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

  """"""""""""""""""""
  " Syntax Support
  """"""""""""""""""""

  Plug 'sheerun/vim-polyglot'
  " handled below
  let g:polyglot_disabled = ['css', 'ts', 'typescript', 'js', 'javascript', 'hbs', 'json']

  " CSS
  Plug 'alexlafroscia/postcss-syntax.vim'

  " Elixir
  Plug 'elixir-editors/vim-elixir'
  " precompiler for erlang with vim
  " Plug 'vim-erlang/vim-erlang-compiler', { 'for': 'erlang' }

  " Typescript syntax
  Plug 'leafgarland/typescript-vim'

  " JavaScript Syntax
  Plug 'pangloss/vim-javascript'

  let g:javascript_plugin_jsdoc = 1

  " Ember template highlighting
  Plug 'joukevandermaas/vim-ember-hbs'

  " Nested syntax highlighting
  " needed for js/ts named template literals
  " and markdown.
  Plug 'Quramy/vim-js-pretty-template'

call plug#end()
