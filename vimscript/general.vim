 " For auto tab, I suppose you mean auto indentation. You can turn on autoindent and smartindent option.

" set autoindent smartindent

" To use clipboard for cut and paste, set clipboard option

" set clipboard+=unnamedplus

" Copy to Clipboard
" vnoremap <C-y> "*y :let @+=@*<CR>
" <C-y> is already used
" just use "+y to copy to clipboard
"  


" To set filetypes
" autocmd BufNewFile,BufRead *.md,*.mkdn,*.markdown :set filetype=markdown
" autocmd BufNewFile,BufRead *.cpp :set filetype=cpp



" Automatically change to the directory containing the current file
" autocmd BufEnter * execute 'cd ' . expand('%:p:h')


" Automatically change to the directory containing the current file, except for fugitive buffers
" autocmd BufEnter * if expand('%:p')!~#'/\.git/\|fugitive/' | execute 'cd ' . expand('%:p:h') | endif


