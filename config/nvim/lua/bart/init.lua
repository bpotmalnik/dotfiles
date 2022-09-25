require("bart.set")
require("bart.keymap")
require("bart.packer")
require("bart.telescope")

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
