" Vim-bookmarks config


let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1

" disble all default key bindings of vim-bookmarks plugin
let g:bookmark_no_default_key_mappings = 1




" Keymaps

function! BookmarkMapKeys()
    nnoremap mm <Plug>BookmarkToggle
    nnoremap mi <Plug>BookmarkAnnotate
    nnoremap ma <Plug>BookmarkShowAll
    nnoremap mn <Plug>BookmarkNext
    nnoremap mp <Plug>BookmarkPrev
    nnoremap mc <Plug>BookmarkClear
    nnoremap mx <Plug>BookmarkClearAll

    nnoremap mkk <Plug>BookmarkMoveUp
    nnoremap mjj <Plug>BookmarkMoveDown
    nnoremap mg <Plug>BookmarkMoveToLine
endfunction

function! BookmarkUnmapKeys()
    unmap mm
    unmap mi
    unmap mn
    unmap mp
    unmap ma
    unmap mc
    unmap mx

    unmap mkk
    unmap mjj
    unmap mg
endfunction

autocmd BufEnter * :call BookmarkMapKeys()
autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()


