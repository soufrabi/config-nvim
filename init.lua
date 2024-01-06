-- nvim top level config file
-- init.lua

require('beginning')
require('packer-plugins')

require('globals')
require('general')
require('keymaps')


require('nvim-tree-config')
require('nvim-tree-webdevicons-config')

require('nvim-tree-sitter')
require("indent-blankline")


require('markdown-preview-config')

require('python-general')

require('coderunner')
require('auto-commands')
require('telescope-config')

-- Works better with true color support
require('catppuccin-config')
require('colors-config')
require('undotree-config')
require('vim-commentary-config')


-- Lsp
require('lsp-zero-config')
require('mason-lspconfig-config')
require('lua-snips-config')

-- Jupyter notebook
-- require('magma-nvim')


local function command_exists(command)
    local exit_status = os.execute("which " .. command .. " >/dev/null 2>&1")
    return exit_status == 0
end


if G.getOS() == "Linux" then
    if command_exists("ascii-image-converter") then
        -- print("ascii-image-converter command exists!")
        -- Image Viewer using Ascii art plugin
        require('image-samodostal')
    else
        -- print("ascii-image-converter command does not exist!")
    end


    if command_exists("chafa") then
        -- print("chafa command exists!")
        -- Image preview using Chafa
        -- Needs chafa installed
        require('image-previewer-custom')
    else
        -- print("chafa command does not exist!")
    end
end



pcall(require, "test")
-- Write test lua code in lua/test.lua


-- check if the file exists using pcall
-- local ok, _ = pcall(require, "test")

-- if the file does not exist, print an error message
-- if not ok then
--   print("Error: " .. "test.lua" .. " not found!")
-- else
--    print("lua/test.lua ".."found")
-- end
