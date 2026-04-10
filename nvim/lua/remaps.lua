local map = vim.keymap.set

map("n", "<Leader>pv", vim.cmd.Ex)

map("n", "<Leader>t", "<Cmd>FloatermToggle<CR>", { silent = true })

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "vv", "<C-W>v", { silent = true })
map("n", "vs", "<C-W>s", { silent = true })

map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-h>", "<C-w>h")

map("n", "<Leader>f", "<Cmd>!black %<CR>", { silent = true })

map("n", "<C-p>", function()
  require("telescope.builtin").git_files()
end)
map("n", "<C-y>", function()
  require("telescope.builtin").find_files()
end)
map("n", "<C-g>", function()
  require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>") })
end)

map("n", "gd", vim.lsp.buf.definition, { silent = true })
map("n", "gs", vim.lsp.buf.hover, { silent = true })
map("n", "gr", vim.lsp.buf.references, { silent = true })
map("n", "gl", vim.diagnostic.open_float, { silent = true })

map("t", "<C-j>", [[<C-\><C-n>]])
