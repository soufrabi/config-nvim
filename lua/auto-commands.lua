-- Auto Commands

-- Automatically change to the directory containing the current file, except for fugitive and terminal buffers


function IsNonCodeBuffer(str)
    -- print(str)

  if string.sub(str, 1, 11) == "fugitive://" and string.sub(str, -6) == ".git//" then
    return true
  elseif string.sub(str, 1, 7) == "term://" then
    return true
  else
    return false
  end
end


local cd = vim.api.nvim_create_augroup("cd",{clear=true})

vim.api.nvim_create_autocmd("BufEnter",{
    pattern = {"*"},
    callback=function()
        -- print (vim.bo.filetype)
        local fp = vim.fn.expand('%:p')
        local dir = vim.fn.expand('%:p:h')

        -- fp is absolute file path


        if IsNonCodeBuffer(fp) then
            return
        end

        vim.api.nvim_command("cd "..dir)


    end,
    group=cd
})
