local options = {
  clipboard = "unnamedplus",                        -- use the OS's clipboard instead of neovim's
  cmdheight = 2,                                    -- more space for neovim commands and messages
  completeopt = { "menuone", "noselect"},           -- completion options, noselect means don't autoselect
  cursorline = true,                                -- highlight the current line
  expandtab = true,                                 -- convert tabs to spaces
  fileencoding = "utf-8",                           -- pretty self explanatory
  history = 10000,                                  -- long command history
  ignorecase = true,                                -- ignore case when doing searches
  list = true,                                      -- display listchars
  listchars = { tab = "▸ ", eol = "¬" },            -- show tabs and CR as glyphs
  mouse = "a",                                      -- allow the mouse in all modes,
  number = true,                                    -- display line numbers in the gutter
  numberwidth = 4,                                  -- width of gutter numbers
  scrolloff = 8,                                    -- always have 8 lines above or below the current line
  shiftwidth = 2,                                   -- spaces per indentation
  showtabline = 2,                                  -- always show the tabline
  sidescrolloff = 8,                                -- always have 8 chars to left or right of the cursor
  smartcase = true,                                 -- searches will be case sensitive if they contain upper case chars
  smartindent = true,                               -- autoindenting, but smarter
  splitbelow = true,                                -- open new horizontal splits below
  splitright = true,                                -- open new vertical splits to the right
  swapfile = false,                                 -- stop the freakin' swap file generation
  tabstop = 2,                                      -- 2 spaces per tab
  termguicolors = true,
  undodir = "/Users/mcmoyer/.config/nvim/custom/undofiles",      -- set up where the persistent undo files will go
  undofile = true,                                  -- use persistent undo files
  wrap = false,                                     -- don't wrap code on the screen
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Autocommand that reloads neovim whenever you save the options.lua file
local group = vim.api.nvim_create_augroup("options_custom_config", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", { command = "source <afile>", group = group, pattern = "options.lua"})
vim.api.nvim_create_autocmd({"BufWinEnter", "WinEnter"},{ command = "startinsert", group = group, pattern = "term://*"})
