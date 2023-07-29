-- vim.g.indentLine_concealcursor = 'inc'
-- vim.g.indentLine_conceallevel = 0

-- vim.g.indentLine_setConceal = 0

-- vim.g.vim_json_conceal=0
-- vim.g.markdown_syntax_conceal=0





local indentline_augroup = vim.api.nvim_create_augroup("indentline_augroup",{clear=true})


vim.api.nvim_create_autocmd("BufEnter",{
    pattern = {"*.md"},
    callback=function()
        -- print (vim.bo.filetype)
        local fp = vim.fn.expand('%:p')

        -- fp is absolute file path

        if IsNonCodeBuffer(fp) then
            return
        end

        if vim.bo.filetype == "markdown" then
            vim.api.nvim_command("set conceallevel=0")
        end

    end,
    group=indentline_augroup
})


vim.api.nvim_create_autocmd("BufLeave",{
    pattern = {"*.md"},
    callback=function()
        -- print (vim.bo.filetype)
        local fp = vim.fn.expand('%:p')

        -- fp is absolute file path

        if IsNonCodeBuffer(fp) then
            return
        end

        if vim.bo.filetype == "markdown" then
            vim.api.nvim_command("set conceallevel=2")
        end

    end,
    group=indentline_augroup
})

