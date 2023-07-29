-- Globals

G = {}



--  Detect if the current file is a fugitive or terminal buffer


function G.IsNonCodeBuffer(str)
  -- print(str)

  if string.sub(str, 1, 11) == "fugitive://" and string.sub(str, -6) == ".git//" then
    return true
  elseif string.sub(str, 1, 7) == "term://" then
    return true
  else
    return false
  end
end

function G.close_io_buffers()
  -- Get all open buffer handles
  local buffers = vim.api.nvim_list_bufs()

  -- Loop through all open buffers
  for _, buf in ipairs(buffers) do
    -- Get the buffer name
    local name = vim.api.nvim_buf_get_name(buf)

    -- Extract the file name from the full path
    local file_name = vim.fn.fnamemodify(name, ":t")

    -- Check if the file name matches "input.txt" or "output.txt"
    if file_name == "input.txt" or file_name == "output.txt" then
      -- Close the buffer
      vim.api.nvim_buf_delete(buf, { force = true })
    end
  end
end


G.getOS =  function ()

  local sysname = vim.loop.os_uname().sysname

  if sysname == 'Linux' then
    return "Linux"
    -- print('Running on Linux')
  elseif sysname == 'Windows' or sysname == 'Windows_NT' then
    return "Windows"
    -- print('Running on Windows')
  elseif string.find(sysname, "Windows", 1, true) then
    return "Windows"
    -- print('Running on Windows')
  else
    return "Windows"
    -- print('Unknown operating system')
  end
end



-- Get the path to the home directory
G.home_dir = os.getenv("HOME") or os.getenv("USERPROFILE")

-- Get path for config directory
G.config_dir = vim.fn.stdpath('config')

-- globals.path = require('plenary.path')

-- Filetypes I normally deal with
G.file_types = { "*.c", "*.cpp", "*.sh", "*.java", "*.py", "*.md", "*.go", "*.rs", "*.dart", "*.lua", "*.txt", "*.html",
  "*.css", "*.js", "*.jsx", "*.json" }
