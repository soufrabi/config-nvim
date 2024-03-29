-- Globals

G = {}

-- Get the path to the home directory
G.home_dir = os.getenv("HOME") or os.getenv("USERPROFILE")

-- Get path for config directory
G.config_dir = vim.fn.stdpath('config')


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

function G.close_ioe_buffers()
  -- Get all open buffer handles
  local buffers = vim.api.nvim_list_bufs()

  -- Loop through all open buffers
  for _, buf in ipairs(buffers) do
    -- Get the buffer name
    local name = vim.api.nvim_buf_get_name(buf)

    -- Extract the file name from the full path
    local file_name = vim.fn.fnamemodify(name, ":t")

    -- Check if the file name matches "input.txt" or "output.txt"
    if file_name == "input.txt" or file_name == "output.txt" or file_name == "error.txt" then
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


G.path_exists_old = function (name)
    local f = io.open(name, "r")
    if f ~= nil then
        io.close(f)
        return true
    else return false end
end

--- Check if a file or directory exists in this path
G.path_exists = function (file)
   local ok, err, code = os.rename(file, file)
   if not ok then
      if code == 13 then
         -- Permission denied, but it exists
         return true
      end
   end
   return ok, err
end

--- Check if a directory exists in this path
G.dir_exists = function (path)
   -- "/" works on both Unix and Windows
   return G.path_exists(path.."/")
end

G.command_exists = function (command)
    local exit_status = os.execute("which " .. command .. " >/dev/null 2>&1")
    return exit_status == 0
end





-- Define the function to copy buffer name to clipboard
G.CopyBufferName =  function ()
  local buffer_path = vim.fn.expand('%:p')
  vim.fn.setreg('+', buffer_path)
  vim.cmd("echo 'Full path of " .. vim.fn.expand('%:t') .. " was copied to system clipboard'")
end

-- Define the command
vim.cmd("command! CopyBufferName lua G.CopyBufferName()")


G.CopyBufferContent = function ()
  -- Get the content of the whole buffer
  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  local content = table.concat(lines, '\n')

  -- Set the content to the clipboard
  vim.fn.setreg('+', content)

  -- Optionally, provide feedback to the user
  vim.cmd("echo 'Buffer content copied to system clipboard'")
end

-- Define a command to call the Lua function
vim.cmd("command! CopyBufferContent lua G.CopyBufferContent()")
