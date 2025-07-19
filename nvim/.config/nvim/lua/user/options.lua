vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "

local options = {
    laststatus = 3,
    termguicolors  = true,
    number = true,
    wrap = true,
    smartindent = true,
    autoindent = true,
    expandtab = true,
    cmdheight = 1 ,
    tabstop = 4,
    shiftwidth = 4,
    softtabstop = 4,
    mouse = 'a',
    smarttab = true,
    encoding = 'utf-8',
    fileencoding = 'utf-8',
    clipboard = 'unnamedplus',
    cursorline = false,
    swapfile = false,
    undofile = true,
    backup = true,
    undodir = os.getenv("HOME") .. '/.backup/nvim/undodir/',
    backupdir= os.getenv("HOME") .. '/.backup/nvim/backup/',
    directory= os.getenv("HOME") .. '/.backup/nvim/backup/',
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

-- Hide vertical split line and end of buffer tildes.
vim.cmd [[
hi VertSplit ctermfg=None ctermbg=None cterm=None
hi StatusLine ctermfg=None ctermbg=None cterm=None
hi StatusLineNC ctermfg=None ctermbg=None cterm=None
set fillchars+=vert:\ ,eob:\ ,
]]
