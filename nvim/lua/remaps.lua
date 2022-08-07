local nnoremap = require('keymap').nnoremap
local inoremap = require('keymap').inoremap
local tnoremap = require('keymap').tnoremap
local vnoremap = require('keymap').vnoremap

nnoremap("<Leader>pv", ":Exp<CR>")

nnoremap("<Leader>t", ":FloatermToggle<CR>")

vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

nnoremap("vv", "<C-W>v", {silent = true})
nnoremap("vs", "<C-W>s", {silent = true})

nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")
nnoremap("<C-h>", "<C-w>h")

nnoremap("<C-w>+", "<C-w>10+")
nnoremap("<C-w>-", "<C-w>10-")

nnoremap("<C-p>", ":lua require('telescope.builtin').git_files()<CR>")
nnoremap("<C-g>", ":lua require('telescope.builtin').grep_string { search = vim.fn.expand(\"<cword\") }<CR>")

vim.api.nvim_command([[
tnoremap <C-j> <C-\><C-n>
]])
