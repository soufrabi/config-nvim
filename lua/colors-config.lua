-- get the value of the $TERM environment variable
-- local term = vim.env.TERM

-- print the value of $TERM
-- print("TERM:", term)

-- if term == "xterm-kitty" or term == "alacritty" then
    -- vim.api.nvim_command("set termguicolors")
    -- -- vim.api.nvim_command("colorscheme catppuccin")
-- end



local ok, errorMsg = pcall(vim.api.nvim_command, 'set termguicolors')
if not ok then
    print("Attempt to set termguicolors failed")
    print(errorMsg)
else
    -- print("Set termguicolors (true colors upport) successfully")
    if B.theme == "dark" then
        vim.cmd.colorscheme "catppuccin"
    elseif B.theme == "light" then
        vim.cmd.colorscheme "White2"
    end
end
