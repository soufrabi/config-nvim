" CodeRunner

" Cpp

function! CppRun()
nnoremap <F5> :term mkdir -p build && g++ -g % -o build/%:r && ./build/%:r<CR> 
" normal mode: run
inoremap <F5> <Esc>:term mkdir -p build && g++ -g % -o build/%:r && ./build/%:r<CR> 
" insert mode: escape to normal and run
vnoremap <F5> <Esc>:term mkdir -p build && g++ -g % -o build/%:r && ./build/%:r<CR>  
" visual mode: escape to normal and run

nnoremap <F6> :! mkdir -p build && g++ -g % -o build/%:r && ./build/%:r<CR> 
" normal mode: run
inoremap <F6> <Esc>:! mkdir -p build && g++ -g % -o build/%:r && ./build/%:r<CR> 
" insert mode: escape to normal and run
vnoremap <F6> <Esc>:! mkdir -p build && g++ -g % -o build/%:r && ./build/%:r<CR>  
" visual mode: escape to normal and run

nnoremap <F7> :term mkdir -p build && g++ -g % -o build/%:r && gdb -tui -q build/%:r<CR> 
" normal mode: run
inoremap <F7> <Esc>:term mkdir -p build && g++ -g % -o build/%:r && gdb -tui -q build/%:r<CR> 
" insert mode: escape to normal and run
vnoremap <F7> <Esc>:term mkdir -p build && g++ -g % -o build/%:r && gdb -tui -q build/%:r<CR>  
" visual mode: escape to normal and run

endfunction

"autocmd FileType cpp call CppRun()
autocmd BufNewFile,BufRead *.cpp call CppRun()


" C

function! CRun()
nnoremap <F5> :term mkdir -p build && gcc -g % -o build/%:r && ./build/%:r<CR> 
" normal mode: run
inoremap <F5> <Esc>:term mkdir -p build && gcc -g % -o build/%:r && ./build/%:r<CR> 
" insert mode: escape to normal and run
vnoremap <F5> <Esc>:term mkdir -p build && gcc -g % -o build/%:r && ./build/%:r<CR>  
" visual mode: escape to normal and run


nnoremap <F6> :! mkdir -p build && gcc -g % -o build/%:r && ./build/%:r<CR> 
" normal mode: run
inoremap <F6> <Esc>:! mkdir -p build && gcc -g % -o build/%:r && ./build/%:r<CR> 
" insert mode: escape to normal and run
vnoremap <F6> <Esc>:! mkdir -p build && gcc -g % -o build/%:r && ./build/%:r<CR>  
" visual mode: escape to normal and run

nnoremap <F7> :term mkdir -p build && gcc -g % -o build/%:r && gdb -tui -q build/%:r<CR> 
" normal mode: run
inoremap <F7> <Esc>:term mkdir -p build && gcc -g % -o build/%:r && gdb -tui -q build/%:r<CR> 
" insert mode: escape to normal and run
vnoremap <F7> <Esc>:term mkdir -p build && gcc -g % -o build/%:r && gdb -tui -q build/%:r<CR>  
" visual mode: escape to normal and run

endfunction

"autocmd FileType c call CRun()
autocmd BufNewFile,BufRead *.c call CRun()


" Bash

function! BashRun()
nnoremap <F5> :term bash %<CR> 
" normal mode: run
inoremap <F5> <Esc>:term bash %<CR>
" insert mode: escape to normal and run
vnoremap <F5> <Esc>:term bash %<CR> 
" visual mode: escape to normal and run
endfunction

"autocmd FileType sh call BashRun()
autocmd BufNewFile,BufRead *.sh call BashRun()


" Markdown

function! MarkdownRun()
nnoremap <F5> :term glow %<CR> 
" normal mode: run
inoremap <F5> <Esc>:term glow %<CR>
" insert mode: escape to normal and run
vnoremap <F5> <Esc>:term glow %<CR> 
" visual mode: escape to normal and run
endfunction

"autocmd FileType markdown call MarkdownRun()
autocmd BufNewFile,BufRead *.md call MarkdownRun()


" Go

function! GoRun()
nnoremap <F5> :term go %<CR> 
" normal mode: run
inoremap <F5> <Esc>:term go %<CR>
" insert mode: escape to normal and run
vnoremap <F5> <Esc>:term go %<CR> 
" visual mode: escape to normal and run
endfunction

"autocmd FileType go call GoRun()
autocmd BufNewFile,BufRead *.go call GoRun()


" Lua

function! LuaRun()
nnoremap <F5> :term lua %<CR> 
" normal mode: run
inoremap <F5> <Esc>:term lua %<CR>
" insert mode: escape to normal and run
vnoremap <F5> <Esc>:term lua %<CR> 
" visual mode: escape to normal and run
endfunction

"autocmd FileType lua call LuaRun()
autocmd BufNewFile,BufRead *.lua call LuaRun()


" Rust

function! RustRun()
nnoremap <F5> :term rust %<CR> 
" normal mode: run
inoremap <F5> <Esc>:term rust %<CR>
" insert mode: escape to normal and run
vnoremap <F5> <Esc>:term rust %<CR> 
" visual mode: escape to normal and run
endfunction

"autocmd FileType rust call RustRun()
autocmd BufNewFile,BufRead *.rust call RustRun()


" Javascript

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

" Java

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


" Dart

function! DartRun()
nnoremap <F5> :term dart %<CR> 
" normal mode: run
inoremap <F5> <Esc>:term dart %<CR>
" insert mode: escape to normal and run
vnoremap <F5> <Esc>:term dart %<CR> 
" visual mode: escape to normal and run
endfunction

"autocmd FileType dart call DartRun()
autocmd BufNewFile,BufRead *.dart call DartRun()


