-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- vim.tbl_extend("force", opts, { desc = "" })
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d', vim.tbl_extend("force", opts, { desc = "Delete a word backwards" }))

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split window
keymap.set("n", "ss", ":split<Return>", vim.tbl_extend("force", opts, { desc = "Split window horizontal" }))
keymap.set("n", "sv", ":vsplit<Return>", vim.tbl_extend("force", opts, { desc = "Split window vertical" }))
-- Move window
keymap.set("n", "<C-h>", "<C-w>h", vim.tbl_extend("force", opts, { desc = "Move window to left" }))
keymap.set("n", "<C-k>", "<C-w>k", vim.tbl_extend("force", opts, { desc = "Move window to top" }))
keymap.set("n", "<C-j>", "<C-w>j", vim.tbl_extend("force", opts, { desc = "Move window to bot" }))
keymap.set("n", "<C-l>", "<C-w>l", vim.tbl_extend("force", opts, { desc = "Move window to right" }))
-- Panes resizing
keymap.set("n", "+", ":vertical resize +5<CR>")
keymap.set("n", "_", ":vertical resize -5<CR>")
keymap.set("n", "=", ":resize +5<CR>")
keymap.set("n", "-", ":resize -5<CR>")

-- Paste over currently selected text without yanking it
keymap.set("v", "p", '"_dp')
keymap.set("v", "P", '"_dP')

-- Move selected line / block of text in visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Better indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Others
keymap.set("n", "J", "mzJ`z", opts)
keymap.set("n", "n", "nzzzv", opts)
keymap.set("n", "N", "Nzzzv", opts)
keymap.set(
  "n",
  "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  vim.tbl_extend("force", opts, { desc = "Refac name" })
)

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- LSP Keymaps
vim.keymap.set("n", "gd", vim.lsp.buf.definition, vim.tbl_extend("force", opts, { desc = "Go to Definition" }))
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, vim.tbl_extend("force", opts, { desc = "Go to Declaration" }))
vim.keymap.set("n", "gr", vim.lsp.buf.references, vim.tbl_extend("force", opts, { desc = "Find References" }))
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, vim.tbl_extend("force", opts, { desc = "Go to Implementation" }))
vim.keymap.set("n", "K", vim.lsp.buf.hover, vim.tbl_extend("force", opts, { desc = "Hover Documentation" }))
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, vim.tbl_extend("force", opts, { desc = "Signature Help" }))
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, vim.tbl_extend("force", opts, { desc = "Rename Symbol" }))
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, vim.tbl_extend("force", opts, { desc = "Code Action" }))
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, vim.tbl_extend("force", opts, { desc = "Previous Diagnostic" }))
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, vim.tbl_extend("force", opts, { desc = "Next Diagnostic" }))
vim.keymap.set("n", "<leader>fm", function()
  vim.lsp.buf.format({ async = true })
end, vim.tbl_extend("force", opts, { desc = "Format Document" }))

-- Telescope Keymaps
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", vim.tbl_extend("force", opts, { desc = "Find Files" }))
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", vim.tbl_extend("force", opts, { desc = "Live Grep" }))
vim.keymap.set(
  "n",
  "<leader>fh",
  ":Telescope help_tags<CR>",
  vim.tbl_extend("force", opts, { desc = "Find Help Tags" })
)
vim.keymap.set("n", "<leader>fr", ":Telescope oldfiles<CR>", vim.tbl_extend("force", opts, { desc = "Recent Files" }))
