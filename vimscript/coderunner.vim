" CodeRunner

" Cpp

function! CppRun()
nnoremap <F5> :term mkdir -p %:p:h/build && g++ -g %:p -o %:p:h/build/%:t:r && %:p:h/build/%:t:r <CR>
" normal mode: run
inoremap <F5> <Esc> :term mkdir -p %:p:h/build && g++ -g %:p -o %:p:h/build/%:t:r && %:p:h/build/%:t:r <CR>
" insert mode: escape to normal and run
vnoremap <F5> <Esc> :term mkdir -p %:p:h/build && g++ -g %:p -o %:p:h/build/%:t:r && %:p:h/build/%:t:r <CR>
" visual mode: escape to normal and run

nnoremap <F6> :! mkdir -p %:p:h/build && g++ -g %:p -o %:p:h/build/%:t:r && %:p:h/build/%:t:r <CR>
" normal mode: run
inoremap <F6> <Esc> :! mkdir -p %:p:h/build && g++ -g %:p -o %:p:h/build/%:t:r && %:p:h/build/%:t:r <CR>
" insert mode: escape to normal and run
vnoremap <F6> <Esc> :! mkdir -p %:p:h/build && g++ -g %:p -o %:p:h/build/%:t:r && %:p:h/build/%:t:r <CR>
" visual mode: escape to normal and run

nnoremap <F7> :term mkdir -p %:p:h/build && g++ -g %:p -o %:p:h/build/%:t:r && gdb -tui -q %:p:h/build/%:t:r <CR>
" normal mode: run
inoremap <F7> <Esc> :term mkdir -p %:p:h/build && g++ -g %:p -o %:p:h/build/%:t:r && gdb -tui -q %:p:h/build/%:t:r <CR>
" insert mode: escape to normal and run
vnoremap <F7> <Esc> :term mkdir -p %:p:h/build && g++ -g %:p -o %:p:h/build/%:t:r && gdb -tui -q %:p:h/build/%:t:r <CR>
" visual mode: escape to normal and run

endfunction

"autocmd FileType cpp call CppRun()
autocmd BufNewFile,BufRead,BufEnter *.cpp call CppRun()
autocmd BufLeave *.cpp call DisableRun()


" C

function! CRun()
nnoremap <F5> :term mkdir -p %:p:h/build && gcc -g %:p -o %:p:h/build/%:t:r && %:p:h/build/%:t:r <CR>
" normal mode: run
inoremap <F5> <Esc> :term mkdir -p %:p:h/build && gcc -g %:p -o %:p:h/build/%:t:r && %:p:h/build/%:t:r <CR>
" insert mode: escape to normal and run
vnoremap <F5> <Esc> :term mkdir -p %:p:h/build && gcc -g %:p -o %:p:h/build/%:t:r && %:p:h/build/%:t:r <CR>
" visual mode: escape to normal and run

nnoremap <F6> :! mkdir -p %:p:h/build && gcc -g %:p -o %:p:h/build/%:t:r && %:p:h/build/%:t:r <CR>
" normal mode: run
inoremap <F6> <Esc> :! mkdir -p %:p:h/build && gcc -g %:p -o %:p:h/build/%:t:r && %:p:h/build/%:t:r <CR>
" insert mode: escape to normal and run
vnoremap <F6> <Esc> :! mkdir -p %:p:h/build && gcc -g %:p -o %:p:h/build/%:t:r && %:p:h/build/%:t:r <CR>
" visual mode: escape to normal and run

nnoremap <F7> :term mkdir -p %:p:h/build && gcc -g %:p -o %:p:h/build/%:t:r && gdb -tui -q %:p:h/build/%:t:r <CR>
" normal mode: run
inoremap <F7> <Esc> :term mkdir -p %:p:h/build && gcc -g %:p -o %:p:h/build/%:t:r && gdb -tui -q %:p:h/build/%:t:r <CR>
" insert mode: escape to normal and run
vnoremap <F7> <Esc> :term mkdir -p %:p:h/build && gcc -g %:p -o %:p:h/build/%:t:r && gdb -tui -q %:p:h/build/%:t:r <CR>
" visual mode: escape to normal and run

endfunction

"autocmd FileType c call CRun()
autocmd BufNewFile,BufRead,BufEnter *.c call CRun()
autocmd BufLeave *.c call DisableRun()


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
autocmd BufNewFile,BufRead,BufEnter *.sh call BashRun()
autocmd BufLeave *.sh call DisableRun()


" Markdown

function! MarkdownRun()
nnoremap <F5> :term glow %<CR> 
" normal mode: run
inoremap <F5> <Esc>:term glow %<CR>
" insert mode: escape to normal and run
vnoremap <F5> <Esc>:term glow %<CR> 
" visual mode: escape to normal and run

nnoremap <F6> :MarkdownPreview<CR> 
" normal mode: run
inoremap <F6> <Esc> :MarkdownPreview<CR>
" insert mode: escape to normal and run
vnoremap <F6> <Esc> :MarkdownPreview<CR> 
" visual mode: escape to normal and run

endfunction

"autocmd FileType markdown call MarkdownRun()
autocmd BufNewFile,BufRead,BufEnter *.md call MarkdownRun()
autocmd BufLeave *.md call DisableRun()


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
autocmd BufNewFile,BufRead,BufEnter *.go call GoRun()
autocmd BufLeave *.go call DisableRun()


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
autocmd BufNewFile,BufRead,BufEnter *.lua call LuaRun()
autocmd BufLeave *.lua call DisableRun()


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
autocmd BufNewFile,BufRead,BufEnter *.rust call RustRun()
autocmd BufLeave *.rust call DisableRun()


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
autocmd BufNewFile,BufRead,BufEnter *.js call NodeRun()
autocmd BufLeave *.js call DisableRun()

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
autocmd BufNewFile,BufRead,BufEnter *.java call JavaRun()
autocmd BufLeave *.java call DisableRun()


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
autocmd BufNewFile,BufRead,BufEnter *.dart call DartRun()
autocmd BufLeave *.dart call DisableRun()


" Disable

function! DisableRun()
nnoremap <F5> <Nop>
" normal mode: run
inoremap <F5> <Nop>
" insert mode: escape to normal and run
vnoremap <F5> <Nop>
" visual mode: escape to normal and run

nnoremap <F6> <Nop>
" normal mode: run
inoremap <F6> <Nop>
" insert mode: escape to normal and run
vnoremap <F6> <Nop>
" visual mode: escape to normal and run

nnoremap <F7> <Nop>
" normal mode: run
inoremap <F7> <Nop>
" insert mode: escape to normal and run
vnoremap <F7> <Nop>
" visual mode: escape to normal and run

endfunction





