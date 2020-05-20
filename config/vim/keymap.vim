" Resizing Panes
" increase / decrease width or the "vertical split"
nnoremap <S-h> :vertical resize -10<CR>
nnoremap <S-n> :vertical resize +10<CR>

" increase / decrease height or the "horizontal split"
nnoremap <S-t> :resize -10<CR>
nnoremap <S-c> :resize +10<CR>

" Copy / Paste out / into vim
noremap <leader>y "+y
noremap <leader>p "+p

" Creating Panes
nnoremap <leader>c :leftabove new<CR>
nnoremap <leader>h :leftabove vnew<CR>
nnoremap <leader>t :rightbelow new<CR>
nnoremap <leader>n :rightbelow vnew<CR>
