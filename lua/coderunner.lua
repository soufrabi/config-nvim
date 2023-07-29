-- CodeRunner


-- local function CodeRunner()
--     local bufnr = vim.api.nvim_get_current_buf() 
    -- local ft = vim.api.nvim_buf_get_option(bufnr, "filetype")
    --
     -- if ft == "cpp"then
     --     map("n","<F5>",":term g++ % && ./a.out <CR>")
     -- end
 -- end


-- map('n', 'com' , ':! mkdir -p build && g++ -g % -o build/%:r && ./build/%:r<CR>')
-- map('n', 'cpp' , ':! mkdir -p build && g++ -g % -o build/%:r && ./build/%:r<CR>')
-- map('n', 'com' , ':term mkdir -p build && g++ -g % -o build/%:r && ./build/%:r<CR>')
-- map('n', 'cnp' , ':term mkdir -p build && gcc -g % -o build/%:r && ./build/%:r<CR>')
-- map('n', 'gdb' , ':term gdb -tui -q build/%:r<CR>')
-- map('n', 'java' , ':term java %<CR>')
-- map('n', 'pyt' , ':term python %<CR>')
-- map('n', 'python' , ':! python %<CR>')
-- map('n', 'glow' , ':term glow %<CR>')


-- map('n', 'cpp',':term g++ -g % -o %:r && ./%:r<CR>')
-- map('n', 'gcc' , ':term gcc -g % -o %:r && ./%:r<CR>')
-- map('n', 'gdb' , ':term gdb -tui -q %:r<CR>')
-- map('n', 'py' , ':term python %<cr>')
-- map('n', 'go' , ':term go run %<cr>')
-- map('n', 'sh' , ':term bash %<cr>')


-- local group = vim.api.nvim_create_augroup("Smash",{clear=true})

-- vim.api.nvim_create_autocmd("BufEnter",{command="echo 'Hello 1'", group=group})
-- vim.api.nvim_create_autocmd("BufEnter",{command="echo 'Hello 2'", group=group})

-- vim.api.nvim_create_autocmd("BufEnter",{
--     pattern = {"*.c", "*.h"},
--     command="echo 'Hello 2'",
--     group=group
-- })

-- vim.api.nvim_create_autocmd("BufEnter",{
--     pattern = {"*.c", "*.h", "*.lua"},
--     -- command="echo 'Hello 4'",
--     callback=function()
--         print "Hello, we in autocmd command"
--         x1 = vim.fn.expand('%')
--         print(x1)

--     end,
--     group=group
-- })



local function DisableRun()

map('n','<F5>','<Nop>')
map('i','<F5>','<Nop>')
map('v','<F5>','<Nop>')

map('n','<F6>','<Nop>')
map('i','<F6>','<Nop>')
map('v','<F6>','<Nop>')

map('n','<F7>','<Nop>')
map('i','<F7>','<Nop>')
map('v','<F7>','<Nop>')

end


local function CRun(fp,dir,fnwe,compiler)

-- nnoremap <F5> :term mkdir -p %:p:h/build && g++ -g %:p -o %:p:h/build/%:t:r && %:p:h/build/%:t:r <CR>
-- map('n','<C-\\>',':term mkdir -p '+'%:p:h'+'/build && g++ -g '+'%:p'+' -o '+'%:p:h'+'/build/'+'%:t:r'+' && '+'%:p:h'+'/build/'+'%:t:r'+' <CR>')
--

-- map('n','<C-\\>',':term mkdir -p '..dir..'/build && g++ -g '..fp..' -o '..dir..'/build/'..fnwe..' && '..dir..'/build/'..fnwe..' <CR>')


map('n','<F5>',':tabnew | term mkdir -p '..dir..'/build && '..compiler..' -g '..fp..' -o '..dir..'/build/'..fnwe..' && '..dir..'/build/'..fnwe..' <CR>')
map('i','<F5>','<Esc> :tabnew | term mkdir -p '..dir..'/build && '..compiler..' -g '..fp..' -o '..dir..'/build/'..fnwe..' && '..dir..'/build/'..fnwe..' <CR>')
map('v','<F5>','<Esc> :tabnew | term mkdir -p '..dir..'/build && '..compiler..' -g '..fp..' -o '..dir..'/build/'..fnwe..' && '..dir..'/build/'..fnwe..' <CR>')


map('n','<F6>',':! mkdir -p '..dir..'/build && '..compiler..' -g '..fp..' -o '..dir..'/build/'..fnwe..' && '..dir..'/build/'..fnwe..' <CR>')
map('i','<F6>',':! mkdir -p '..dir..'/build && '..compiler..' -g '..fp..' -o '..dir..'/build/'..fnwe..' && '..dir..'/build/'..fnwe..' <CR>')
map('v','<F6>',':! mkdir -p '..dir..'/build && '..compiler..' -g '..fp..' -o '..dir..'/build/'..fnwe..' && '..dir..'/build/'..fnwe..' <CR>')


map('n','<F7>',':tabnew | term mkdir -p '..dir..'/build && '..compiler..' -g '..fp..' -o '..dir..'/build/'..fnwe..' && gdb -tui -q '..dir..'/build/'..fnwe..' <CR>')
map('i','<F7>','<Esc> :tabnew | term mkdir -p '..dir..'/build && '..compiler..' -g '..fp..' -o '..dir..'/build/'..fnwe..' && gdb -tui -q '..dir..'/build/'..fnwe..' <CR>')
map('v','<F7>','<Esc> :tabnew | term mkdir -p '..dir..'/build && '..compiler..' -g '..fp..' -o '..dir..'/build/'..fnwe..' && gdb -tui -q '..dir..'/build/'..fnwe..' <CR>')

end

local function SimpleRun(fp,app)

map('n','<F5>',':tabnew | term '..app..' '..fp..' <CR>')
map('i','<F5>','<Esc> :tabnew | term '..app..' '..fp..' <CR>')
map('v','<F5>','<Esc> :tabnew | term '..app..' '..fp..' <CR>')

end



local function markdownPreview()

map('n','<F6>',':MarkdownPreview <CR>')
map('i','<F6>','<Esc> :MarkdownPreview <CR>')
map('v','<F6>','<Esc> :MarkdownPreview <CR>')

end


local coderunner = vim.api.nvim_create_augroup("coderunner",{clear=true})


vim.api.nvim_create_autocmd("BufEnter",{
    pattern = {"*.sh","*.java","*.py","*.md","*.go","*.rs","*.dart","*.lua"},
    callback=function()
        -- print (vim.bo.filetype)
        local fp = vim.fn.expand('%:p')

        -- fp is absolute file path

        if IsNonCodeBuffer(fp) then
            return
        end

        if vim.bo.filetype == "sh" then
            SimpleRun(fp,'bash')
        elseif vim.bo.filetype == "java" then
            SimpleRun(fp,'java')
        elseif vim.bo.filetype == "python" then
            SimpleRun(fp,'python')
        elseif vim.bo.filetype == "go" then
            SimpleRun(fp,'go')
        elseif vim.bo.filetype == "markdown" then
            SimpleRun(fp,'glow')
            markdownPreview()
        elseif vim.bo.filetype == "rust" then
            SimpleRun(fp,'rust')
        elseif vim.bo.filetype == "dart" then
            SimpleRun(fp,'dart')
        elseif vim.bo.filetype == "lua" then
            SimpleRun(fp,'lua')
        elseif vim.bo.filetype == "tex" then
            SimpleRun(fp,'xetex')
        end

    end,
    group=coderunner
})


vim.api.nvim_create_autocmd("BufEnter",{
    pattern = {"*.c","*.cpp"},
    callback=function()
        -- print (vim.bo.filetype)
        local fp = vim.fn.expand('%:p')
        local dir = vim.fn.expand('%:p:h')
        local fnwe = vim.fn.expand('%:t:r')

        -- fp is absolute file path
        -- dir is path to directory
        -- fnwq is filename (not path) without extension

        if IsNonCodeBuffer(fp) then
            return
        end

        if vim.bo.filetype == "cpp" then
            CRun(fp,dir,fnwe,'g++')
        elseif vim.bo.filetype == "c" then
            CRun(fp,dir,fnwe,'gcc')
        end

    end,
    group=coderunner
})


vim.api.nvim_create_autocmd("BufEnter",{
    pattern = {"NERD_tree_*","fugitive://*","NvimTree_*"},
    callback=function()
        -- print ("DisableRun "..vim.bo.filetype)

        DisableRun()
    end,
    group=coderunner
})


vim.api.nvim_create_autocmd("TermOpen",{
    pattern = {"*"},
    callback=function()
        -- print ("DisableRun "..vim.bo.filetype)

        DisableRun()
    end,
    group=coderunner
})


vim.api.nvim_create_autocmd("BufLeave",{
    pattern = {"*.c","*.cpp","*.sh","*.java","*.py",".md","*.go","*.rs","*.dart",".lua","*.tex"},
    callback=function()
        -- print ("DisableRun "..vim.bo.filetype)

        DisableRun()
    end,
    group=coderunner
})


