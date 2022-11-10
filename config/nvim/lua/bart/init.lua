require("bart.set")
require("bart.keymap")
require("bart.packer")
require("bart.telescope")

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

vim.cmd [[autocmd FileType qf if getwininfo(win_getid())[0].loclist | execute 'nnoremap <silent><buffer><CR> :.ll <bar> lclose<cr>' | end ]]
vim.cmd [[autocmd FileType qf if !getwininfo(win_getid())[0].loclist | execute 'nnoremap <silent><buffer><CR> :.cc <bar> cclose<cr>' | end ]]

