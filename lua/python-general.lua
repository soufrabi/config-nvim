-- General python

if G.getOS() == "Linux" then
    -- if os.getenv("DISTROBOX_HOST_HOME") == nil then
    --     vim.g.python_host_prog = G.home_dir .. "/.venvs/.nvim-venv/bin/python"
    --     vim.g.python3_host_prog = G.home_dir .. "/.venvs/.nvim-venv/bin/python"
    -- elseif G.dir_exists(os.getenv("DISTROBOX_HOST_HOME")) then
    --     vim.g.python_host_prog = os.getenv("DISTROBOX_HOST_HOME").. "/.venvs/.nvim-venv/bin/python"
    --     vim.g.python3_host_prog = os.getenv("DISTROBOX_HOST_HOME") .. "/.venvs/.nvim-venv/bin/python"
    -- end

    vim.g.python_host_prog = "/usr/bin/python"
    vim.g.python3_host_prog = "/usr/bin/python"
end
