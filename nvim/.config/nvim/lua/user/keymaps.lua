
local opts = {silent = true}
local keymap = vim.api.nvim_set_keymap

-- Save document.
keymap('n','<Leader>s',':w<CR>',{silent = false})

-- Save and exit document.
keymap('n','<Leader>x',':x!<CR>',{silent = false})
