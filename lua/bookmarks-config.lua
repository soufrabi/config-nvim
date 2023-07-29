-- Bookmarks config lua

vim.g.bookmark_highlight_lines = 1
-- disable all default key bindings of vim-bookmarks plugin
vim.g.bookmark_no_default_key_mappings = 1



-- Autocmd to enable and disable bookmarks keymaps
local bookmarks = vim.api.nvim_create_augroup("bookmarks",{clear=true})

vim.api.nvim_create_autocmd("BufEnter",{
    pattern = {"*"},
    callback="BookmarkMapKeys",

    group=bookmarks
})

vim.api.nvim_create_autocmd("BufEnter",{
    pattern = {"NERD_tree_*","fugitive://*","term://*"},
    callback="BookmarkUnmapKeys",

    group=bookmarks
})
