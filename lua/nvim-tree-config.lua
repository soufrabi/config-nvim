-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true

-- empty setup using defaults
-- require("nvim-tree").setup()

local ignored_dirs = {'^\\.git','^\\.android','^\\.atom','^\\.cache','^\\.config','^\\.dart','^\\.dartserver','^\\.designer','^\\.flutter-devtools','^\\.gnupg','^\\.gradle','^\\.ipynb_checkpoints','^\\.ipython','^\\.java','^\\.jupyter','^\\.local','^\\.m2','^\\.mozilla','^\\.mplayer','^\\.npm','^\\.nv','^\\.pki','^\\.pub-cache','^\\.remarkable','^\\.snap','^\\.ssh','^\\.texlive','^\\.tmux','^\\.var','^\\.vim','^\\.vscode-oss','^\\.w3m','^\\.yarn'}


-- Reference for setup
-- https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt

   require("nvim-tree").setup { -- BEGIN_DEFAULT_OPTS
      on_attach = "default",
      hijack_cursor = false,
      auto_reload_on_write = true,
      disable_netrw = false,
      hijack_netrw = true,
      hijack_unnamed_buffer_when_opening = false,
      root_dirs = {},
      prefer_startup_root = false,
      sync_root_with_cwd = false,
      reload_on_bufenter = false,
      respect_buf_cwd = false,
      select_prompts = false,
      sort = {
        sorter = "name",
        folders_first = true,
        files_first = false,
      },
      view = {
        centralize_selection = false,
        cursorline = true,
        debounce_delay = 15,
        side = "left",
        preserve_window_proportions = false,
        number = false,
        relativenumber = false,
        signcolumn = "yes",
        width = 30,
        float = {
          enable = false,
          quit_on_focus_loss = true,
          open_win_config = {
            relative = "editor",
            border = "rounded",
            width = 30,
            height = 30,
            row = 1,
            col = 1,
          },
        },
      },
      renderer = {
        add_trailing = false,
        group_empty = false,
        full_name = false,
        root_folder_label = ":~:s?$?/..?",
        indent_width = 2,
        special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
        symlink_destination = true,
        highlight_git = "none",
        highlight_diagnostics = "none",
        highlight_opened_files = "none",
        highlight_modified = "none",
        highlight_bookmarks = "none",
        highlight_clipboard = "name",
        indent_markers = {
          enable = false,
          inline_arrows = true,
          icons = {
            corner = "└",
            edge = "│",
            item = "│",
            bottom = "─",
            none = " ",
          },
        },
        icons = {
          web_devicons = {
            file = {
              enable = true,
              color = true,
            },
            folder = {
              enable = false,
              color = true,
            },
          },
          git_placement = "before",
          modified_placement = "after",
          diagnostics_placement = "signcolumn",
          bookmarks_placement = "signcolumn",
          padding = " ",
          symlink_arrow = " ➛ ",
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
            modified = true,
            diagnostics = true,
            bookmarks = true,
          },
          glyphs = {
            default = "",
            symlink = "",
            bookmark = "󰆤",
            modified = "●",
            folder = {
              arrow_closed = "",
              arrow_open = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              unstaged = "✗",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌",
            },
          },
        },
      },
      hijack_directories = {
        enable = true,
        auto_open = true,
      },
      update_focused_file = {
        enable = false,
        update_root = false,
        ignore_list = {},
      },
      system_open = {
        cmd = "",
        args = {},
      },
      git = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        disable_for_dirs = {},
        timeout = 400,
        cygwin_support = false,
      },
      diagnostics = {
        enable = false,
        show_on_dirs = false,
        show_on_open_dirs = true,
        debounce_delay = 50,
        severity = {
          min = vim.diagnostic.severity.HINT,
          max = vim.diagnostic.severity.ERROR,
        },
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      modified = {
        enable = false,
        show_on_dirs = true,
        show_on_open_dirs = true,
      },
      filters = {
        git_ignored = true,
        dotfiles = false,
        git_clean = false,
        no_buffer = false,
        no_bookmark = false,
        custom = {},
        exclude = {},
      },
      live_filter = {
        prefix = "[FILTER]: ",
        always_show_folders = true,
      },
      filesystem_watchers = {
        enable = true,
        debounce_delay = 50,
        ignore_dirs = {},
      },
      actions = {
        use_system_clipboard = true,
        change_dir = {
          enable = true,
          global = false,
          restrict_above_cwd = false,
        },
        expand_all = {
          max_folder_discovery = 300,
          exclude = {},
        },
        file_popup = {
          open_win_config = {
            col = 1,
            row = 1,
            relative = "cursor",
            border = "shadow",
            style = "minimal",
          },
        },
        open_file = {
          quit_on_open = false,
          eject = true,
          resize_window = true,
          window_picker = {
            enable = true,
            picker = "default",
            chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
            exclude = {
              filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
              buftype = { "nofile", "terminal", "help" },
            },
          },
        },
        remove_file = {
          close_window = true,
        },
      },
      trash = {
        cmd = "gio trash",
      },
      tab = {
        sync = {
          open = false,
          close = false,
          ignore = {},
        },
      },
      notify = {
        threshold = vim.log.levels.INFO,
        absolute_path = true,
      },
      help = {
        sort_by = "key",
      },
      ui = {
        confirm = {
          remove = true,
          trash = true,
          default_yes = false,
        },
      },
      experimental = {},
      log = {
        enable = false,
        truncate = false,
        types = {
          all = false,
          config = false,
          copy_paste = false,
          dev = false,
          diagnostics = false,
          git = false,
          profile = false,
          watcher = false,
        },
      },
    } -- END_DEFAULT_OPTS



local function get_gitdir()
  -- Get the current file path
  local filepath = vim.fn.expand('%:p')

  -- Get the current directory path
  local dirpath = vim.fn.expand('%:p:h')

  -- Find the root directory of the Git repository
  local gitdir = vim.fn.finddir('.git', filepath .. ';')

  if gitdir == '' then
    -- The current file is not in a Git repository
    -- print('Error: Current file is not in a Git repository')
    return false, dirpath
  else
    -- Get the root directory of the Git repository
    local rootdir = vim.fn.fnamemodify(gitdir, ':h')
    -- print('Git repository root directory: ' .. rootdir)
    return true, rootdir
  end
end

function NvimTreeToggleVCS()

  local isGitDir, gitdir = get_gitdir()
  if isGitDir == false then
    -- vim.cmd("NvimTreeFindFileToggle ".. G.home_dir)
    vim.cmd("NvimTreeFindFileToggle "..gitdir)
  else
    -- print(gitdir)
    vim.cmd("NvimTreeFindFileToggle ".. gitdir)
  end
end


-- map("n","<C-\\>",":NvimTreeToggle<CR>")
-- map("n","<C-\\>","<Esc>:NvimTreeToggle<CR>")
-- map("n","<C-\\>","<Esc>:NvimTreeToggle<CR>")

map("n","<Leader>t",":lua NvimTreeToggleVCS()<CR>", {silent = true, noremap = true})
-- map("i","<C-f>","<Esc>:lua NvimTreeToggleVCS()<CR>", {silent = true, noremap = true})
-- map("v","<C-f>","<Esc>:lua NvimTreeToggleVCS()<CR>", {silent = true, noremap = true})



-- Open at startup
-- https://github.com/nvim-tree/nvim-tree.lua/wiki/Open-At-Startup

local function open_nvim_tree(data)

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1


  if directory then
    -- change to the directory
    vim.cmd.cd(data.file)

    -- open the tree
    require("nvim-tree.api").tree.open()
  end

end

local nvim_tree_startup = vim.api.nvim_create_augroup("nvim_tree_startup",{clear=true})


vim.api.nvim_create_autocmd({ "VimEnter" },{
    callback = open_nvim_tree,
    group=nvim_tree_startup

  })



