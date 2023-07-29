-- Bookmarks config lua

vim.g.bookmark_highlight_lines = 1
-- disable all default key bindings of vim-bookmarks plugin
vim.g.bookmark_no_default_key_mappings = 1
-- Automatically close bookmarks split when jumping to a bookmark
vim.g.bookmark_auto_close = 1


local function bookmarkMapKeys()
    map("n","bm","<Plug>BookmarkToggle", {noremap = true})
    map("n","bi","<Plug>BookmarkAnnotate", {noremap = true})
    map("n","ba","<Plug>BookmarkShowAll", {noremap = true})
    map("n","bn","<Plug>BookmarkNext", {noremap = true})
    map("n","bp","<Plug>BookmarkPrev", {noremap = true})
    map("n","bc","<Plug>BookmarkClear", {noremap = true})
    map("n","bx","<Plug>BookmarkClearAll", {noremap = true})

    map("n","bkk","<Plug>BookmarkMoveUp", {noremap = true})
    map("n","bjj","<Plug>BookmarkMoveDown", {noremap = true})
    map("n","bg","<Plug>BookmarkMoveToLine", {noremap = true})
end

local function bookmarkUnmapKeys()


    map('n', 'bm','<Nop>')
    map('n', 'bi','<Nop>')
    map('n', 'bn','<Nop>')
    map('n', 'bp','<Nop>')
    map('n', 'ba','<Nop>')
    map('n', 'bc','<Nop>')
    map('n', 'bx','<Nop>')

    map('n', 'bkk','<Nop>')
    map('n', 'bjj','<Nop>')
    map('n', 'bg','<Nop>')


    -- vim.api.nvim_del_keymap('n', 'mm')
    -- vim.api.nvim_del_keymap('n', 'mi')
    -- vim.api.nvim_del_keymap('n', 'mn')
    -- vim.api.nvim_del_keymap('n', 'mp')
    -- vim.api.nvim_del_keymap('n', 'ma')
    -- vim.api.nvim_del_keymap('n', 'mc')
    -- vim.api.nvim_del_keymap('n', 'mx')

    -- vim.api.nvim_del_keymap('n', 'mkk')
    -- vim.api.nvim_del_keymap('n', 'mjj')
    -- vim.api.nvim_del_keymap('n', 'mg')

end

-- Autocmd to enable and disable bookmarks keymaps
local bookmarks = vim.api.nvim_create_augroup("bookmarks",{clear=true})

-- vim.api.nvim_create_autocmd("BufEnter",{
--     pattern = {"*c,*.cpp,*"},
--     callback=function ()

--        bookmarkMapKeys()
--     end,

--     group=bookmarks
-- })

-- vim.api.nvim_create_autocmd("BufEnter",{
--     pattern = {"NERD_tree_*","fugitive://*"},
--     callback=function ()
--         bookmarkUnmapKeys()
--     end,

--     group=bookmarks
-- })


-- vim.api.nvim_create_autocmd("TermOpen",{
--     pattern = {"*"},
--     callback=function ()
--         bookmarkUnmapKeys()
--     end,

--     group=bookmarks
-- })




-- local file_types= {"*.c","*.cpp","*.sh","*.java","*.py","*.md","*.go","*.rs","*.dart","*.lua","*.txt","*.js","*.jsx"}
-- file types in which bookmarks will be allowed
-- moved to globals.lua

vim.api.nvim_create_autocmd("BufEnter",{
    pattern = file_types,
    callback=function ()

        -- print(vim.fn.expand("%"))

       bookmarkMapKeys()
    end,

    group=bookmarks
})


vim.api.nvim_create_autocmd("BufLeave",{
    pattern = file_types,
    callback=function ()

       bookmarkUnmapKeys()
    end,

    group=bookmarks
})

vim.api.nvim_create_autocmd("BufEnter",{
    pattern = {"*NERD_tree_*","fugitive://*"},
    callback=function ()

        -- print(vim.fn.expand("%"))
        bookmarkUnmapKeys()
    end,

    group=bookmarks
})



vim.api.nvim_create_autocmd("TermOpen",{
    pattern = {"*"},
    callback=function ()
        bookmarkUnmapKeys()
    end,

    group=bookmarks
})


