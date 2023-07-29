nnoremap <silent> <expr> <C-\> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeVCS<CR>\:NERDTreeFind<CR>" : "\:NERDTreeVCS<CR>"
