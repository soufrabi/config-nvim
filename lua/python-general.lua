-- General python


-- vim.g.python_host_prog="/home/darklord/venvs/.nvim-venv/bin/python"
-- vim.g.python3_host_prog="/home/darklord/venvs/.nvim-venv/bin/python"

if globals.getOS() == "Linux" then
   vim.g.python_host_prog = home_dir .. "/venvs/.nvim-venv/bin/python"
   vim.g.python3_host_prog = home_dir .. "/venvs/.nvim-venv/bin/python"
end

