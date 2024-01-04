


-- Coc color schemes : light or dark

if (G.path_exists(G.config_dir..'/vimscript/coc-config-light.vim'))
then
    vim.cmd('source '..G.config_dir..'/vimscript/coc-config-light.vim')
end


if (G.path_exists(G.config_dir .. '/vimscript/coc-config-dark.vim'))
then
    vim.cmd('source '..G.config_dir..'/vimscript/coc-config-dark.vim')
end


-- Testing

if (G.path_exists(G.config_dir .. '/vimscript/test.vim'))
then
    vim.cmd('source '..G.config_dir..'/vimscript/test.vim')
end
-- Write test vimscript code in vimscript/test.vim
