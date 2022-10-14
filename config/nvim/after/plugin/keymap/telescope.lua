local Remap = require("bart.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-p>", ":Telescope")

nnoremap("<leader>pf", function()
    require("telescope.builtin").find_files()
end)

nnoremap("<leader>ps", function()
    require("telescope.builtin").grep_string({ search = vim.fn.input("Grep For > ")})
end)

nnoremap("<leader>pw", function()
    require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>")})
end)

nnoremap("<leader>pb", function()
    require("telescope.builtin").buffers()
end)

nnoremap("<leader>pef", function()
    require("telescope").extensions.flutter.commands()
end)
