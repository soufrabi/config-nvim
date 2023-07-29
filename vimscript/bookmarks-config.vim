" Vim-bookmarks config


let g:bookmark_sign = '♥'


" Keymaps

function! BookmarkMapKeys()
    nnoremap bm <Plug>BookmarkToggle
    nnoremap bi <Plug>BookmarkAnnotate
    nnoremap ba <Plug>BookmarkShowAll
    nnoremap bn <Plug>BookmarkNext
    nnoremap bp <Plug>BookmarkPrev
    nnoremap bc <Plug>BookmarkClear
    nnoremap bx <Plug>BookmarkClearAll

    nnoremap bkk <Plug>BookmarkMoveUp
    nnoremap bjj <Plug>BookmarkMoveDown
    nnoremap bg <Plug>BookmarkMoveToLine
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


    nnoremap bm <Nop>
    nnoremap bi <Nop>
    nnoremap bn <Nop>
    nnoremap bp <Nop>
    nnoremap ba <Nop>
    nnoremap bc <Nop>
    nnoremap bx <Nop>

    nnoremap bkk <Nop>
    nnoremap bjj <Nop>
    nnoremap bg <Nop>


endfunction

" autocmd BufEnter * :call BookmarkMapKeys()
autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()
autocmd BufEnter NvimTree_* :call BookmarkUnmapKeys()


