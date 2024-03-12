-- Lua snips



-- Load vs code style snippets
require("luasnip.loaders.from_vscode").lazy_load({paths = G.config_dir.."/snippets/vs-code-snippets"})

-- Jump to next snippet field with <Tab> in insert, select, and visual mode
vim.api.nvim_set_keymap("i", "<Tab>", "luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'", { expr = true, silent = true })
vim.api.nvim_set_keymap("s", "<Tab>", "luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'", { expr = true, silent = true })
vim.api.nvim_set_keymap("v", "<Tab>", "luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'", { expr = true, silent = true })
-- Jump to previous snippet field with <S-Tab> in insert, select, and visual mode
vim.api.nvim_set_keymap("i", "<S-Tab>", "luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'", { expr = true, silent = true })
vim.api.nvim_set_keymap("s", "<S-Tab>", "luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'", { expr = true, silent = true })
vim.api.nvim_set_keymap("v", "<S-Tab>", "luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'", { expr = true, silent = true })










-- vim.cmd([[

-- " press <Tab> to expand or jump in a snippet. These can also be mapped separately
-- " via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
-- imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
-- " -1 for jumping backwards.
-- inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

-- snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
-- snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

-- " For changing choices in choiceNodes (not strictly necessary for a basic setup).
-- imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
-- smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

-- ]])


-- -- Trigger snippet expansion with <Tab> in insert mode
-- vim.api.nvim_set_keymap("i", "<Tab>", "luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'", { expr = true, silent = true })
-- -- Jump to next snippet field with <Tab> in select and visual mode
-- vim.api.nvim_set_keymap("s", "<Tab>", "luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'", { expr = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<Tab>", "luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'", { expr = true, silent = true })
-- -- Jump to previous snippet field with <S-Tab> in insert, select, and visual mode
-- vim.api.nvim_set_keymap("i", "<S-Tab>", "luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'", { expr = true, silent = true })
-- vim.api.nvim_set_keymap("s", "<S-Tab>", "luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'", { expr = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<S-Tab>", "luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'", { expr = true, silent = true })



-- Snipmate Style Snippets

-- https://github.com/L3MON4D3/LuaSnip/blob/master/DOC.md#snipmate
-- require("luasnip.loaders.from_snipmate").load()
-- specify the full path...
-- require("luasnip.loaders.from_snipmate").lazy_load({paths = "~/.config/nvim/snippets"})
require("luasnip.loaders.from_snipmate").lazy_load({paths = "~/.config/nvim/snippets/snipmate-snippets"})
-- or relative to the directory of $MYVIMRC
-- require("luasnip.loaders.from_snipmate").lazy_load({paths = "./snippets"})





