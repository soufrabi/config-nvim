
local function file_exists(name)
    local f = io.open(name, "r")
    if f ~= nil then
        io.close(f)
        return true
    else return false end
end


-- Coc color schemes : light or dark

if (file_exists(G.config_dir..'/vimscript/coc-config-light.vim'))
then
    vim.cmd('source '..G.config_dir..'/vimscript/coc-config-light.vim')
end


if (file_exists(G.config_dir .. '/vimscript/coc-config-dark.vim'))
then
    vim.cmd('source '..G.config_dir..'/vimscript/coc-config-dark.vim')
end


-- Testing

if (file_exists(G.config_dir .. '/vimscript/test.vim'))
then
    vim.cmd('source '..G.config_dir..'/vimscript/test.vim')
end
-- Write test vimscript code in vimscript/test.vim
