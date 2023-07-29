" Keymaps in Vimscript

nnoremap <silent> <expr> <Leader>t g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeVCS<CR>\:NERDTreeFind<CR>" : "\:NERDTreeVCS<CR>"
