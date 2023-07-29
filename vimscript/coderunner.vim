function! NodeRun()
nnoremap <F5> :term node %<CR> 
" normal mode: run
inoremap <F5> <Esc>:term node %<CR>
" insert mode: escape to normal and run
vnoremap <F5> <Esc>:term node %<CR> 
" visual mode: escape to normal and run
endfunction


"autocmd FileType javascipt call NodeRun()
autocmd BufNewFile,BufRead *.js call NodeRun()


function! JavaRun()
nnoremap <F5> :term java %<CR> 
" normal mode: run
inoremap <F5> <Esc>:term java %<CR>
" insert mode: escape to normal and run
vnoremap <F5> <Esc>:term java %<CR> 
" visual mode: escape to normal and run
endfunction


"autocmd FileType java call JavaRun()
autocmd BufNewFile,BufRead *.java call JavaRun()


