
local function CodeRunner()
    local bufnr = vim.api.nvim_get_current_buf() 
    local ft = vim.api.nvim_buf_get_option(bufnr, "filetype")
 
    -- if ft == "cpp"then
    --     map("n","<F5>",":term g++ % && ./a.out <CR>")
    -- end
end


-- map('n', 'com' , ':! mkdir -p build && g++ -g % -o build/%:r && ./build/%:r<CR>')
map('n', 'cpp' , ':! mkdir -p build && g++ -g % -o build/%:r && ./build/%:r<CR>')
map('n', 'com' , ':term mkdir -p build && g++ -g % -o build/%:r && ./build/%:r<CR>')
map('n', 'gcc' , ':term mkdir -p build && gcc -g % -o build/%:r && ./build/%:r<CR>')
map('n', 'gdb' , ':term gdb -tui -q build/%:r<CR>')
map('n', 'java' , ':term java %<CR>')
map('n', 'python' , ':term python %<CR>')
-- map('n', 'python' , ':! python %<CR>')
map('n', 'glow' , ':term glow %<CR>')


-- map('n', 'cpp',':term g++ -g % -o %:r && ./%:r<CR>')
-- map('n', 'gcc' , ':term gcc -g % -o %:r && ./%:r<CR>')
-- map('n', 'gdb' , ':term gdb -tui -q %:r<CR>')
-- map('n', 'py' , ':term python %<cr>')
-- map('n', 'go' , ':term go run %<cr>')
-- map('n', 'sh' , ':term bash %<cr>')

