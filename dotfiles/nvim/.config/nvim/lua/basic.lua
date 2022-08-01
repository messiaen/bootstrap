-- TODO scriptencoding utf-8
--vim.opt.encoding = "uft-8"

-- TODO filetype plugin on
-- TODO syntax enable

vim.opt.nu = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.cmdheight = 2
vim.opt.updatetime = 300
vim.opt.shortmess = table.insert(vim.opt.shortmess, "c")

vim.opt.visualbell = false
vim.opt.errorbells = false

vim.opt.autowrite = true
vim.opt.hidden = true
vim.opt.list = true
vim.opt.listchars = {tab = "▸ ", eol = "¬"}

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.autoindent = true
vim.opt.backspace = {"indent","eol","start"}
vim.opt.complete = "i"
vim.opt.smarttab = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
-- TOOD
-- noremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
-- set laststatus=2
-- set ruler
vim.opt.wildmenu = true

vim.opt.scrolloff=1
vim.opt.sidescroll=5
vim.opt.display = table.insert(vim.opt.display, "lastline")

vim.opt.autoread = true
vim.opt.history=10000
vim.opt.tabpagemax=50

vim.opt.completeopt="menu,menuone,noselect"

vim.g.mapleader=","

-- window navigation
-- nnoremar <leader><leader>v :vsplit<CR><C-W>l
-- nnoremap <leader><leader>s :split<CR><C-W>j
vim.opt.splitbelow = true
vim.opt.splitright = true

-- TODO I think nvim does this already
--nnoremap <C-w>s <C-W>s<C-W>j
--nnoremap <C-w>v <C-W>v<C-W>l

--nmap [c :cp<CR>
--nmap ]c :cn<CR>

-- TODO nvim terminal is different
-- " terminal mode
-- tnoremap <C-\> <C-\>N

-- TODO figure out lua
--vim.cmd [[colorscheme nordfox]]
