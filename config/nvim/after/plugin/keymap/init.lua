local Remap = require("bart.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<leader>w", "<cmd>:w<CR>")

nnoremap("<leader>pv", ":Ex<CR>")

vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '>-2<CR>gv=gv")

nnoremap("<leader>d", "\"_d")
xnoremap("<leader>d", "\"_d")
xnoremap("<leader>p", "\"_dp")

vnoremap("<leader>y", "\"+y")
nnoremap("<leader>Y", "\"+yg_")
nnoremap("<leader>y", "\"+y")
nnoremap("<leader>yy", "\"+yy")

xnoremap("<Tab>", ">gv")
xnoremap("<S-Tab>", "<gv")

nnoremap("Y", "yg$")

nnoremap("d<C-j>", "<C-w>j<C-w>c")
nnoremap("d<C-k>", "<C-w>k<C-w>c")
nnoremap("d<C-h>", "<C-w>h<C-w>c")
nnoremap("d<C-l>", "<C-w>l<C-w>c")
