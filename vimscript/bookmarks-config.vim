" Vim-bookmarks config


let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1

" disble all default key bindings of vim-bookmarks plugin
let g:bookmark_no_default_key_mappings = 1

" Keymaps
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



