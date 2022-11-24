local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- Normal Mode --
-- clear the search after hitting enter
keymap("n", "<CR>", ":nohlsearch<CR>", opts)

-- Load the vimrc file quickly
keymap('n', '<Leader>v', ':tabedit $MYVIMRC<CR>', opts)
keymap("n", "<Leader>r", ":source $MYVIMRC<CR>", opts)

-- format json
keymap('n', '<Leader>fj', ':%!python -m json.tool<CR>', opts)

-- Telescope Mappings
keymap('n', '<Leader>ff', ':Telescope find_files<cr>', opts)
keymap('n', '<Leader>fg', ':Telescope live_grep<cr>', opts)
keymap('n', '<Leader>fb', ':Telescope buffers<cr>', opts)
keymap('n', '<Leader>fh', ':Telescope help_tags<cr>', opts)
keymap("n", "<Leader>fp", ":Telescope projects<cr>", opts)
keymap("n", "<Leader>p", ":Telescope file_browser<cr>", opts)

-- ToggleTerm
keymap("n", "<Leader>tt", ":ToggleTerm float<cr>", opts)

-- Visual Mode --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Make wildmenu act more intuitively, up and down choose completion, right/left move up and down directories
vim.keymap.set('c', '<Up>', function()
  return vim.fn.pumvisible() == 1 and '<Left>' or '<Up>'
end, {expr = true})
vim.keymap.set("c", "<Down>", function()
  return vim.fn.pumvisible() == 1 and '<Right>' or '<Down>'
end, { expr = true })
vim.keymap.set("c", "<Left>", function()
  return vim.fn.pumvisible() == 1 and "<Up>" or "<Left>"
end, { expr = true })
vim.keymap.set("c", "<Right>", function()
  return vim.fn.pumvisible() == 1 and "<Down>" or "<Right>"
end, { expr = true })
