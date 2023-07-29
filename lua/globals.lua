-- Globals


--  Detect if the current file is a fugitive or terminal buffer


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




function close_io_buffers()
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
      vim.api.nvim_buf_delete(buf, {force = true})
    end
  end
end




-- Filetypes i normally deal with
file_types= {"*.c","*.cpp","*.sh","*.java","*.py","*.md","*.go","*.rs","*.dart","*.lua","*.txt","*.js","*.jsx"}



