

require('telescope').setup{
  defaults = {
    -- ...
   -- file_ignore_patterns = {"node_modules", ".git",""},
   --  vimgrep_arguments = {
   --    'rg',
   --    '--color=never',
   --    '--no-heading',
   --    '--with-filename',
   --    '--line-number',
   --    '--column',
   --    '--smart-case'
   --  },
    prompt_position = "bottom",
    prompt_prefix = ">",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        preview_width = 0.5,
        width = 120 -- Change the width here
      },
      vertical = {
        preview_height = 0.5
      }
    },
    file_sorter = require'telescope.sorters'.get_fuzzy_file,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
  },

  pickers = {
    find_files = {
      -- theme = "dropdown",
      -- hidden = true

    },
    git_files = {
    }
  },
  extensions = {
    -- ...
  }
}



local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', builtin.colorscheme, {})


vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})

local git_root_dir_command = [[
    git rev-parse --is-inside-work-tree &>/dev/null && git rev-parse --show-toplevel || pwd
]]

-- Define your custom command
function git_files_new()


  builtin.find_files({
    prompt_title = "Git Files New",
    cwd = vim.fn.systemlist(git_root_dir_command)[1],
   file_ignore_patterns = {"node_modules/", ".git/",'.*.swp'},

    hidden = true,
  })
end

-- Register your command with Vim
vim.cmd("command! GitFilesNew lua git_files_new()")

-- Set a keybinding for your command
-- vim.api.nvim_set_keymap('n', '<leader>gf', ':GitFilesNew<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':lua git_files_new()<CR>', { noremap = true })


-- Define your custom command
function live_grep_new()
  builtin.live_grep({
    prompt_title = "Live Grep New",
    cwd = vim.fn.systemlist(git_root_dir_command)[1],
    file_ignore_patterns = { '.git/', 'node_modules/', '.*.swp' },
  })
end

-- Register your command with Vim
vim.cmd("command! LiveGrepNew lua live_grep_new()")

-- Set a keybinding for your command
vim.api.nvim_set_keymap('n', '<leader>fd', ':LiveGrepNew<CR>', { noremap = true })








