-- Bookmarks config lua

vim.g.bookmark_highlight_lines = 1
-- disable all default key bindings of vim-bookmarks plugin
vim.g.bookmark_no_default_key_mappings = 1


local function bookmarkMapKeys()
    map("n","mm","<Plug>BookmarkToggle", {noremap = true})
    map("n","mi","<Plug>BookmarkAnnotate", {noremap = true})
    map("n","ma","<Plug>BookmarkShowAll", {noremap = true})
    map("n","mn","<Plug>BookmarkNext", {noremap = true})
    map("n","mp","<Plug>BookmarkPrev", {noremap = true})
    map("n","mc","<Plug>BookmarkClear", {noremap = true})
    map("n","mx","<Plug>BookmarkClearAll", {noremap = true})

    map("n","mkk","<Plug>BookmarkMoveUp", {noremap = true})
    map("n","mjj","<Plug>BookmarkMoveDown", {noremap = true})
    map("n","mg","<Plug>BookmarkMoveToLine", {noremap = true})
end

local function bookmarkUnmapKeys()


    map('n', 'mm','<Nop>')
    map('n', 'mi','<Nop>')
    map('n', 'mn','<Nop>')
    map('n', 'mp','<Nop>')
    map('n', 'ma','<Nop>')
    map('n', 'mc','<Nop>')
    map('n', 'mx','<Nop>')

    map('n', 'mkk','<Nop>')
    map('n', 'mjj','<Nop>')
    map('n', 'mg','<Nop>')


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




local file_types= {"*.c","*.cpp","*.sh","*.java","*.py","*.md","*.go","*.rs","*.dart","*.lua","*.txt"}
-- file types in which bookmarks will be allowed

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


