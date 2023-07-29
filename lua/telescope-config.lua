

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
      theme = "dropdown",
      -- hidden = true

    }
  },
  extensions = {
    -- ...
  }
}



local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fd', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', builtin.colorscheme, {})

