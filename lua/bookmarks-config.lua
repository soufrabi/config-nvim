-- Bookmarks config lua

vim.g.bookmark_highlight_lines = 1
-- disable all default key bindings of vim-bookmarks plugin
vim.g.bookmark_no_default_key_mappings = 1
-- Automatically close bookmarks split when jumping to a bookmark
vim.g.bookmark_auto_close = 1


local function bookmarkMapKeys()
    map("n","Bm","<Plug>BookmarkToggle", {noremap = true})
    map("n","Bi","<Plug>BookmarkAnnotate", {noremap = true})
    map("n","Ba","<Plug>BookmarkShowAll", {noremap = true})
    map("n","Bn","<Plug>BookmarkNext", {noremap = true})
    map("n","Bp","<Plug>BookmarkPrev", {noremap = true})
    map("n","Bc","<Plug>BookmarkClear", {noremap = true})
    map("n","Bx","<Plug>BookmarkClearAll", {noremap = true})

    map("n","Bkk","<Plug>BookmarkMoveUp", {noremap = true})
    map("n","Bjj","<Plug>BookmarkMoveDown", {noremap = true})
    map("n","Bg","<Plug>BookmarkMoveToLine", {noremap = true})
end

local function bookmarkUnmapKeys()


    map('n', 'Bm','<Nop>')
    map('n', 'Bi','<Nop>')
    map('n', 'Bn','<Nop>')
    map('n', 'Bp','<Nop>')
    map('n', 'Ba','<Nop>')
    map('n', 'Bc','<Nop>')
    map('n', 'Bx','<Nop>')

    map('n', 'Bkk','<Nop>')
    map('n', 'Bjj','<Nop>')
    map('n', 'Bg','<Nop>')


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


