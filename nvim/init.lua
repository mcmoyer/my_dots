require "custom.options"
require "custom.keymaps"
require "custom.plugins"
require "custom.colorschemes"
require "custom.cmp"
require "custom.lsp"
require "custom.telescope"
require "custom.telescope-file-browser"
require "custom.treesitter"
require "custom.toggleterm"
require "custom.nvim-tree"

-- Autocommand that reloads neovim whenever you save the options.lua file
local group = vim.api.nvim_create_augroup("neovim_custom_config", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", { command = "source <afile>", group = group, pattern = "init.lua"})

