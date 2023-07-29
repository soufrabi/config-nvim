#### For markdown files 

You need **[iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)** plugin installed

If markdown preview is not working 
Then reinstall this plugin after installing yarn 

- Comment out the plugin name in lua/packer-plugins.lua
- Run :PackerSync
- Delete the plugin

- Uncomment the plugin name in lua/packer_plugins.lua
- Restart nvim
- Run :PackerSync

