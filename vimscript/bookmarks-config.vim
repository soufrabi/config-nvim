" Vim-bookmarks config


let g:bookmark_sign = '♥'


" Keymaps

function! BookmarkMapKeys()
    nnoremap Bm <Plug>BookmarkToggle
    nnoremap Bi <Plug>BookmarkAnnotate
    nnoremap Ba <Plug>BookmarkShowAll
    nnoremap Bn <Plug>BookmarkNext
    nnoremap Bp <Plug>BookmarkPrev
    nnoremap Bc <Plug>BookmarkClear
    nnoremap Bx <Plug>BookmarkClearAll

    nnoremap Bkk <Plug>BookmarkMoveUp
    nnoremap Bjj <Plug>BookmarkMoveDown
    nnoremap Bg <Plug>BookmarkMoveToLine
endfunction

function! BookmarkUnmapKeys()
    " unmap mm
    " unmap mi
    " unmap mn
    " unmap mp
    " unmap ma
    " unmap mc
    " unmap mx

    " unmap mkk
    " unmap mjj
    " unmap mg


    nnoremap Bm <Nop>
    nnoremap Bi <Nop>
    nnoremap Bn <Nop>
    nnoremap Bp <Nop>
    nnoremap Ba <Nop>
    nnoremap Bc <Nop>
    nnoremap Bx <Nop>

    nnoremap Bkk <Nop>
    nnoremap Bjj <Nop>
    nnoremap Bg <Nop>


endfunction

" autocmd BufEnter * :call BookmarkMapKeys()
autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()
autocmd BufEnter NvimTree_* :call BookmarkUnmapKeys()


