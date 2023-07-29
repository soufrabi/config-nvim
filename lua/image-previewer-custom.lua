-- Image Viewer

local image_filetypes = {"*.png","*.jpg","*.jpeg","*.webp","*.svg","*.gif"}


-- Define the Lua function to open the floating terminal
local function open_floating_terminal(file_path)
    -- Define the options for the floating window

        -- Get the size of the viewport
    local rows = vim.api.nvim_get_option("lines")
    local cols = vim.api.nvim_get_option("columns")

    -- Calculate the desired size of the window
    local width = math.floor(cols * 0.8)
    local height = math.floor(rows * 0.8)
    local row = math.floor((rows - height) / 2)
    local col = math.floor((cols - width) / 2)

    -- Move buffer up by a marginal value
    local upper_bias = 2
    row = row - upper_bias

    -- print(width)
    -- print(height)
    -- print(row)
    -- print(col)

    local opts = {
        relative = "editor",
        width = width,
        height = height,
        row = row,
        col = col,
        border = {"┌", "─", "┐", "│", "┘", "─", "└", "│"},
        style = "minimal",
    }

    -- Open the floating window
    local buf = vim.api.nvim_create_buf(false, true)
    local win = vim.api.nvim_open_win(buf, true, opts)

    -- Set the highlight for the floating window
    vim.api.nvim_win_set_option(win, "winhl", "Normal:Float")


    -- Open a terminal session in the buffer
    vim.fn.termopen("chafa "..file_path, {
            cwd = vim.fn.getcwd(),
            on_exit = function(job_id, exit_code, event_type)


        -- Close the window when the terminal session exits
        -- vim.api.nvim_win_close(win, true)
    end})
end


function my_image_preview_terminal_window()

    -- file
    local file_path = vim.fn.expand("%:p")
    -- print(file_path)

    open_floating_terminal(file_path)
end



local image_preview_augroup = vim.api.nvim_create_augroup("image_preview_augroup",{clear=true})

local function image_preview(fp)

local opts = {silent=true, noremap=true}
map('n','<F5>',':lua my_image_preview_terminal_window()'..'<CR>',opts)
map('i','<F5>','<Esc> :lua my_image_preview_terminal_window()'..'<CR>',opts)
map('v','<F5>','<Esc> :lua my_image_preview_terminal_window()'..'<CR>',opts)

end


local function disable_run()

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


vim.api.nvim_create_autocmd("BufEnter",{
    pattern = image_filetypes,
    callback=function()
        -- print (vim.bo.filetype)
        local fp = vim.fn.expand('%:p')
        local dir = vim.fn.expand('%:p:h')
        local fnwe = vim.fn.expand('%:t:r')

        -- fp is absolute file path
        -- dir is path to directory
        -- fnwq is filename (not path) without extension

       -- Extract the extension from the filename
        -- local extension = vim.fn.fnamemodify(filename, ":e")
        -- print(extension)

        if IsNonCodeBuffer(fp) then
            return
        end

        image_preview(fp)



        -- if vim.bo.filetype == "cpp" then
        --     CRun(fp,dir,fnwe,'g++')
        -- elseif vim.bo.filetype == "c" then
        --     CRun(fp,dir,fnwe,'gcc')
        -- end

    end,
    group=image_preview_augroup
})


vim.api.nvim_create_autocmd("BufLeave",{
    pattern = image_filetypes,
    callback=function()
        -- print ("DisableRun "..vim.bo.filetype)

        disable_run()
    end,
    group=image_preview_augroup
})
