
local function CodeRunner()
    local bufnr = vim.api.nvim_get_current_buf() 
    local ft = vim.api.nvim_buf_get_option(bufnr, "filetype")
 
    -- if ft == "cpp"then
    --     map("n","<F5>",":term g++ % && ./a.out <CR>")
    -- end
end

map('n', 'cpp',':term g++ % -o %:r && ./%:r<CR>')
map('n', 'gcc' , ':term gcc % -o %:r && ./%:r<CR>')
-- map('n', 'py' , ':term python %<cr>')
-- map('n', 'go' , ':term go run %<cr>')
-- map('n', 'sh' , ':term bash %<cr>')

