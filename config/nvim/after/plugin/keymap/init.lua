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

xnoremap("<leader>p", "\"_dp")


nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")

nmap("<leader>Y", "\"+Y")

nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")

nnoremap("Y", "yg$")
