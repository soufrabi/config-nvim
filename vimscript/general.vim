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
