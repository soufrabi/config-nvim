-- Testing vimscript

if (G.path_exists(G.config_dir .. '/vimscript/test.vim'))
then
    vim.cmd('source '..G.config_dir..'/vimscript/test.vim')
end
-- Write test vimscript code in vimscript/test.vim
