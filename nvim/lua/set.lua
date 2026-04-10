vim.opt.guicursor = "a:blinkon100"

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hidden = true
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.updatetime = 200

local undodir = vim.fn.stdpath("state") .. "/undo"
vim.fn.mkdir(undodir, "p")
vim.opt.undodir = undodir
vim.opt.undofile = true

local python_host_prog = vim.fn.expand("$HOME/.local/venv/nvim/bin/python")
if vim.fn.executable(python_host_prog) == 1 then
  vim.g.python3_host_prog = python_host_prog
end

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  pattern = "*",
  callback = function()
    vim.cmd("silent! checktime")
  end,
})
